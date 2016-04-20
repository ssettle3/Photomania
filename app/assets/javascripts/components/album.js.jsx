var Album = React.createClass({
  propTypes: {
    album: React.PropTypes.object
  },

  render: function () {
    var album = this.props.album.album;
    var albumPhotos = album.photos.map(function (photo) {
      return (
        <div className="photo col-lg-3" key={photo.id}>
          <a href={"/photos/" + photo.id}>
            <img src={photo.thumbnailUrl} />
          </a>
        </div>
      );
    });

    return (
      <div className="container album">
        {albumPhotos}
      </div>
    );
  }
});
