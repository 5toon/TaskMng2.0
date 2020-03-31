using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Collections.ObjectModel;

namespace TaskManager2._0
{
    class ApplicationViewModel : INotifyPropertyChanged
    {
        private Task selectedTask;

        public ObservableCollection<Task> Tasks { get; set; }

        private RelayComand addCommand;
        public RelayComand AddCommand
        {
            get
            {
                return addCommand ??
                    (addCommand = new RelayComand(obj =>
                    {
                        Task task = new Task();
                        Tasks.Insert(0, task);
                        SelectedTask = task;
                    }
                    ));
            }
        }

        private RelayComand removeCommand;
        public RelayComand RemoveCommand
        {
            get
            {
                return removeCommand ??
                    (removeCommand = new RelayComand(obj =>
                    {
                        Task task = obj as Task;
                        if (task != null)
                            Tasks.Remove(task);
                    },
                    (obj) => Tasks.Count > 0));
            }
        }

        private RelayComand saveCommand;
        public RelayComand SaveCommand
        {
            get
            {
                return saveCommand ??
                    (saveCommand = new RelayComand(obj =>
                    {
                        Task task = obj as Task;
                        if (task == null)
                            SelectedTask = null;
                    }

                    ));
            }
        }


        public Task SelectedTask
        {
            get { return selectedTask; }
            set
            {
                selectedTask = value;
                OnPropertyChanged("SelectedTask");
            }

        }

        public ApplicationViewModel()
        {
            Tasks = new ObservableCollection<Task>
             {
                 new Task { Name = "To do something", Description = "Nothing to do", Date = new DateTime(2020, 06, 10)},
                 new Task { Name = "To do homework", Description = "SoftServe Clesh Course", Date = new DateTime(2020, 06, 10)},
                 new Task { Name = "To do cooking", Description = "Cook Borshch", Date = new DateTime(2020, 06, 10)},
                 new Task { Name = "To do clean the room", Description = "Cliean work space", Date = new DateTime(2020, 06, 10)}
             };
        }

        public event PropertyChangedEventHandler PropertyChanged;
        public void OnPropertyChanged([CallerMemberName]string prop = "")
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(prop));
        }
    }
}
