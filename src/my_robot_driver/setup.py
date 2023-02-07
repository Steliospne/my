from distutils.core import setup
from catkin_pkg.python_setup import generate_distutils_setup

d = generate_distutils_setup(
	packages=['my_driver','my_robot_encoder','my_robot_odom'],
	package_dir={'': 'src'}

)

setup(**d)
