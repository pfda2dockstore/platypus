baseCommand: []
class: CommandLineTool
cwlVersion: v1.0
id: platypus
inputs:
  fa:
    doc: Require FASTA reference file
    inputBinding:
      position: 2
      prefix: --fa
    type: File
  input:
    doc: List of BAM files
    inputBinding:
      position: 1
      prefix: --input
    type: File
label: Platypus-Dead
outputs:
  VariantCalls:
    doc: 'Output VCF '
    outputBinding:
      glob: VariantCalls/*
    type: File
  log:
    doc: Log File
    outputBinding:
      glob: log/*
    type: File
requirements:
- class: DockerRequirement
  dockerOutputDirectory: /data/out
  dockerPull: pfda2dockstore/platypus:6
s:author:
  class: s:Person
  s:name: Weizhuang Zhou
