<%inherit file="rhombus:templates/base.mako" />

%if msg:
    <p>${msg}</p>
%endif

    <div class="row"><div class="col-md-10 col-md-offset-1">
    <div class="bottom">
      <form action="" method="post" class="form-horizontal">
        <input type="hidden" name="came_from" value="${came_from}"/>
        <div class="form-group form-inline row">
          <label for="login" class="col-md-2 control-label">Login</label>
          <div class="col-md-3">
            <input type="text" name="login" class="form-control" value="${login}"/>
          </div>
        </div>
        <div class="form-group form-inline row">
          <label for="login" class="col-md-2 control-label">Password</label>
          <div class="col-md-3">
            <input type="password" class="form-control" name="password" value=""/>
          </div>
        </div>
        <div class="form-group form-inline row">
          <div class="offset-md-2 col-md-2">
            <input type="submit" class="btn" name="form.submitted" value="Log In"/>
          </div>
        </div>
      </form>
      <button class="btn">
        <a class="btn btn-outline-dark" href="/g_login" role="button" style="text-transform:none">
          <img width="20px" style="margin-bottom:3px; margin-right:5px" alt="Google sign-in" src="${request.static_url('rhombus:static/google-g-logo.svg')}" />
                Login with Google
        </a>
      </button>
    </div>
    </div></div>
