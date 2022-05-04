nextflow.enable.dsl=2

process WaitBoot {
    container 'biocontainers/bwa:v0.7.17_cv1'
    output:
      val 'foo.txt'

    sleep(600)
    script:
      """
      echo "foo"
      """
}

process WaitDisk {
    container 'biocontainers/bwa:v0.7.17_cv1'
    input:
      val x

    output:
      val 'foo.txt'

    sleep(600)
    script:
      """
      echo "foo"
      """
}

workflow {
    WaitBoot()
    WaitDisk("foo")
}
