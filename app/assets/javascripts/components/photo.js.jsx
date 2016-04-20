var Photo = React.createClass({
  propTypes: {
    photo: React.PropTypes.object
  },

  render: function () {
    var photo = this.props.photo;
    console.log(photo);
    return (
      <div className="container photo text-center">
        <h1>{photo.title}</h1>
        <img src={photo.url} />
      </div>
    );
  }
});
