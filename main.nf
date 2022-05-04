nextflow.enable.dsl=2

process WaitBoot {
    output:
      val 'foo.txt'

    sleep(300)
    script:
      """
      echo "foo"
      """
}

process WaitDisk {
    input:
      val x

    output:
      val 'foo.txt'

    sleep(300)
    script:
      """
      echo "foo"
      """
}

workflow {
    data = channel.fromPath('/some/path/*.txt')
    foo()
    bar(data)
}
