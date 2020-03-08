$(document).ready(function() {
  // Global Settings
  let edit = false; //bandera para la ventana modal para ver si registro o edita

  // Testing Jquery
  console.log('jquery is working!');
  fetchTasks(); //listar los registros por primera vez

  //Guardar o editar un registro segun la variable, edit false registra true edita
  $('#task-form').submit(e => { //ejecutar por medio del evento submit
    e.preventDefault();
    const postData = {
      name: $('#name').val(),
      description: $('#description').val(),
      id: $('#taskId').val()
    };
    const url = edit === false ? 'task-add.php' : 'task-edit.php';
    edit = false;
    console.log(postData, url);
    $.post(url, postData, (response) => {
      console.log(response);
      $('#task-form').trigger('reset');
        fetchTasks();
        CierraModal(); 
    });
  });

//Cerrar Ventana Modal
function CierraModal() {
    $("#exampleModalScrollable").modal('hide');//ocultamos el modal
}

//  buscar con el evento de tipo key
  $('#search').keyup(function() {
    if($('#search').val()) {
      let search = $('#search').val();
      $.ajax({
        url: 'task-search.php',
        data: {search},
        type: 'POST',
        success: function (response) {
          if(!response.error) {
            let tasks = JSON.parse(response);
            let template = '';
            tasks.forEach(task => {
              template += `
                  <tr taskId="${task.id}">
                  <td>${task.id}</td>  
                  <td>${task.name} </td>
                  <td>${task.description}</td>
                  <td>
                    <button class="task-delete btn btn-danger">
                     Delete 
                    </button>
                    <button data-toggle="modal" data-target="#exampleModalScrollable" class="task-item btn btn-success">
                     Editar
                    </button>
                  </td>
                  </tr>
                `
            });
            $('#tasks').html(template);
          }
        } 
      })
    }else{
       fetchTasks(); //lamar a listar por que no hay nada en el input buscar
    }
  });


  // Listar tablas con los botones de editar y eliminar
  function fetchTasks() {
    $.ajax({
      url: 'tasks-list.php',
      type: 'GET',
      success: function(response) {
        const tasks = JSON.parse(response);
        let template = '';
        tasks.forEach(task => {
          template += `
                  <tr taskId="${task.id}">
                  <td>${task.id}</td>  
                  <td>${task.name} </td>
                  <td>${task.description}</td>
                  <td>
                    <button class="task-delete btn btn-danger">
                     Delete 
                    </button>
                    <button data-toggle="modal" data-target="#exampleModalScrollable" class="task-item btn btn-success">
                     Editar
                    </button>
                  </td>
                  </tr>
                `
        });
        $('#tasks').html(template);
      }
    });
  }

  // obtener un registro por medio del ATRIBUTO ID
  $(document).on('click', '.task-item', (e) => {
    let element = $(this)[0].activeElement.parentElement.parentElement;
    let id = $(element).attr('taskId');

    $.post('task-single.php', {id}, (response) => {
      let task = JSON.parse(response);
      $('#name').val(task.name);
      $('#description').val(task.description);
      $('#taskId').val(task.id);
      edit = true;
    });
    e.preventDefault();
  });

  // Eliminar una fila
  $(document).on('click', '.task-delete', (e) => {
    if(confirm('Are you sure you want to delete it?')) {
      const element = $(this)[0].activeElement.parentElement.parentElement;
      const id = $(element).attr('taskId');
      $.post('task-delete.php', {id}, (response) => {
        fetchTasks();
      });
    }
  });
});
