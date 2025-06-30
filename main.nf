#!/usr/bin/env nextflow

params.input = "images/*.png"
params.outdir = "masks"

process segment_with_cellpose {
    publishDir params.outdir, mode: 'copy'

    input:
    path img_file

    output:
    path "*.tif"

    script:
    def outname = img_file.simpleName + "_mask.tif"
    """
    python segment.py $img_file $outname
    """
}

workflow {
    Channel.fromPath(params.input)
           .set { image_files }

    segment_with_cellpose(image_files)
}
