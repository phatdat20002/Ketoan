import React from "react";
import './Login.css'; // Import file CSS riêng cho Login
function Login() {
  return (
    <div className="login-container">
      <div className="card o-hidden border-0 shadow-lg">
        <div className="card-body">
          <div className="bg-login-image"></div>
          <div className="form-section">
            <div className="text-center">
              <h1 className="h4 text-gray-900 mb-4">Welcome Back!</h1>
            </div>
            <form className="user" method="post" action="">
              <div className="form-group">
              <label htmlFor="" className=""></label>
                <input
                  type="text"
                  name=""
                  className="form-control form-control-user"
                  placeholder="Enter  ..."
                  required
                />
              </div>
              <div className="form-group">
              <label htmlFor="exampleInputPassword">Password</label>

                <input
                  type="password"
                  className="form-control form-control-user"
                  name="password"
                  id="exampleInputPassword"
                  placeholder="Password"
                  required
                />
              </div>
              {/* <div className="form-group">
                <div className="custom-control custom-checkbox small">
                  <input type="checkbox" className="custom-control-input" id="customCheck" />
                  <label className="custom-control-label" htmlFor="customCheck">
                    Remember Me
                  </label>
                </div>
              </div> */}
              <button type="submit" className="btn btn-primary btn-user btn-block">
                Login
              </button>
            </form>
            {/* <div className="text-center">
              <a className="small" href="#">Forgot Password?</a>
            </div>
            <div className="text-center">
              <a className="small" href="#">Create an Account!</a>
            </div> */}
          </div>
        </div>
      </div>
    </div>
  );
}
export default Login;
