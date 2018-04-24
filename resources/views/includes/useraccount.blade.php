<li class="dropdown user user-menu">
  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
    <img src="{{asset('adminlte/dist/img/user2-160x160.jpg')}}" class="user-image" alt="User Image">
    <span class="hidden-xs">{{ Auth::user()->employee[0]->first_name }}</span>
  </a>
  <ul class="dropdown-menu">
    <!-- User image -->
    <li class="user-header">
      <img src="{{asset('adminlte/dist/img/user2-160x160.jpg')}}" class="img-circle" alt="User Image">

      <p>
        {{ Auth::user()->employee[0]->first_name }} {{ Auth::user()->employee[0]->last_name }}
        <!-- <small>Member since Nov. 2012</small> -->
      </p>
    </li>    
    <!-- Menu Footer-->
    <li class="user-footer">
      <div class="pull-left">
        <a href="{{ url('user/changeMyPassword') }}" class="btn btn-default">Reset</a>
      </div>
      <div class="pull-right">
        <a href="{{ url('user/logout') }}" class="btn btn-default">Sign out</a>
      </div>
    </li>
  </ul>
</li>