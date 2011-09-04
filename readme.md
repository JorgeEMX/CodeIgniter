# PHPUnit integration with CodeIgniter

This is an attempt of integrating PHPUnit with CodeIgniter. This provides a clean
way of bootstrapping the framework and then performing tests on the Model layer. The
use is very simple as it does not require any change in how a regular CodeIgniter
application is built.

# How it works

* The provided PHPUnit bootstrap file sets the CI environment as *testing* and then loads
the framework normally - the code is taken directly from the index.php file.

* A *display_override* hook checks if the environment is set to *testing* or not and when
it is, it refrains from outputting the rendered view file

* The PHPUnit test case file now can get a reference of the CI object using the commonly
used *&get_instance()* method and can load models and other libraries as needed.

* It is good to have separate database configuration for testing and it might be useful to
load the test database with fresh data every time test runs - it can be easily added in the
setUp method using the Database Forge classes

# Example

    <?php

    class PostTest extends PHPUnit_Framework_TestCase
    {
        private $CI;

        public function setUp()
        {
            $this->CI = &get_instance();
            $this->CI->load->database('testing');
        }

        public function testGetsAllPosts()
        {
            $this->CI->load->model('post');
            $posts = $this->CI->post->getAll();

            $this->assertEquals(1, count($posts));
        }
    }