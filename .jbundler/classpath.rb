require 'jar_dependencies'
JBUNDLER_LOCAL_REPO = Jars.home
JBUNDLER_JRUBY_CLASSPATH = []
JBUNDLER_JRUBY_CLASSPATH.freeze
JBUNDLER_TEST_CLASSPATH = []
JBUNDLER_TEST_CLASSPATH.freeze
JBUNDLER_CLASSPATH = []
JBUNDLER_CLASSPATH << (JBUNDLER_LOCAL_REPO + '/org/eclipse/californium/californium-core/1.0.0-SNAPSHOT/californium-core-1.0.0-SNAPSHOT.jar')
JBUNDLER_CLASSPATH << (JBUNDLER_LOCAL_REPO + '/org/bouncycastle/bcprov-jdk15on/1.47/bcprov-jdk15on-1.47.jar')
JBUNDLER_CLASSPATH << (JBUNDLER_LOCAL_REPO + '/org/bouncycastle/bcpkix-jdk15on/1.47/bcpkix-jdk15on-1.47.jar')
JBUNDLER_CLASSPATH << (JBUNDLER_LOCAL_REPO + '/org/eclipse/californium/element-connector/1.0.0-SNAPSHOT/element-connector-1.0.0-SNAPSHOT.jar')
JBUNDLER_CLASSPATH.freeze
