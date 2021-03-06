<div class="row">
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="card card-stats">
								<div class="card-header" data-background-color="blue">
									<i class="fa fa-clock-o "></i>
								</div>
								<div class="card-content">
									<!-- <a href="./?view=reports"> -->
									<p class="category">Casos Totales</p>
									<h3 class="title"><?php echo count(TicketData::getAll());?></h3>
								</div>
							</div>
						</div>
						
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="card card-stats">
								<div class="card-header" data-background-color="red">
									<i class="fa fa-clock-o"></i>
								</div>
								<div class="card-content">
									<!-- <a href="./?view=reports1"> -->
									<p class="category">Pendientes</p>
									<h3 class="title"><?php echo count(TicketData::getAllPendings());?></h3>
								</div>
							</div>
						</div>
						
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="card card-stats">
								<div class="card-header" data-background-color="orange">
									<i class="fa fa-clock-o"></i>
								</div>
								<div class="card-content">
									<p class="category">En Proceso</p>
									<h3 class="title"><?php echo count(TicketData::getAllEnProceso());?></h3>
								</div>
							</div>
						</div>
						
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="card card-stats">
								<div class="card-header" data-background-color="green">
									<i class="fa fa-clock-o"></i>
								</div>
								<div class="card-content">
									<p class="category">Solucionados</p>
									<h3 class="title"><?php echo count(TicketData::getAllSolucionados());?></h3>
								</div>
							</div>
						</div>
						
						
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="card card-stats">
								<div class="card-header" data-background-color="brown">
									<i class="fa fa-clock-o"></i>
								</div>
								<div class="card-content">
									<p class="category">Cancelados</p>
									<h3 class="title"><?php echo count(TicketData::getAllCancelados());?></h3>
								</div>
							</div>
						</div>
												
						
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="card card-stats">
								<div class="card-header" data-background-color="green">
									<i class="fa fa-flask"></i>
								</div>
								<div class="card-content">
									<p class="category">Instituciones</p>
									<h3 class="title"><?php echo count(ProjectData::getAll());?></h3>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="card card-stats">
								<div class="card-header" data-background-color="red">
									<i class="fa fa-th-list"></i>
								</div>
								<div class="card-content">
									<p class="category">Categorias</p>
									<h3 class="title"><?php echo count(CategoryData::getAll());?></h3>
								</div>
							</div>
						</div>

						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="card card-stats">
								<div class="card-header" data-background-color="blue">
									<i class="fa fa-users"></i>
								</div>
								<div class="card-content">
									<p class="category">Usuarios</p>
									<h3 class="title"><?php echo count(UserData::getAll());?></h3>
								</div>
							</div>
						</div>
					</div>
					
					
					
