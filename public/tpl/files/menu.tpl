    <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
<!--          <a class="navbar-brand" href="|root_url|">|host|/</a>-->
          <a class="navbar-brand" href="|root_url|">
              <img id="logo" alt="|host|" src="/tpl/files/logo.png">
          </a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Sites <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="http://dcgate.org.ua">dcgate.org.ua</a></li>
                <li><a href="http://fail.pp.ua">fail.pp.ua</a></li>
              </ul>
            </li>
          </ul>

          <form class="navbar-form navbar-right" role="search" method="POST" action="/last">
            <div class="form-group">
              <input type="text" name="search" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
          </form>

        </div><!--/.nav-collapse -->
      </div>
    </nav>
