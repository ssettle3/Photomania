var User = React.createClass({
  propTypes: {
    user: React.PropTypes.object
  },

  render: function () {
    var user = this.props.user.user;
    console.log(user);
    var albums = user.albums.map( function (album) {
      return (
        <div className="album" key={album.id}>
          <a href={"/albums/" + album.id}>
            <h4> {album.title} </h4>
          </a>
        </div>
      );
    });

    return (
      <div className="container user-show col-lg-6 col-lg-offset-3 text-center">
        <div className="user-info">
          <h4> @{user.username} </h4>
          <p> Actual Name: {user.name} </p>
          <p> Email: {user.email} </p>
          <p> Website: {user.website} </p>
        </div>
        <div className="user-albums">
          <h3> Albums </h3>
          {albums}
        </div>
      </div>
    );
  }
});
