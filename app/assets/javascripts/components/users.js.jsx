var Users = React.createClass({
  propTypes: {
    users: React.PropTypes.array
  },

  render: function () {
    var users = this.props.users.map(function (user) {
      return (
        <div className="user col-lg-3" key={user.id}>
          <a href={"/users/" + user.id}>
            <div className="card text-center">
              <h3>@{user.username}</h3>
              <a href="">{user.email}</a>
            </div>
          </a>
        </div>
      );
    });

    return (
      <div className="container users-index">
        <h1 className="text-center"> Professionals </h1>
        { users }
      </div>
    );
  }
});
