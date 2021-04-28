rule feature_selection:
    input: 
        ind = METADATA, 
        out = OUTDIR,
        file = OUTDIR/"Annotation_results/Pfam_PA.csv"
    output:
        OUTDIR/"Annotation_results/Feature_selection.csv"
    conda: "../envs/jupyter.yaml"
    log:
        # optional path to the processed notebook
        notebook="logs/notebooks/processed_notebook.ipynb"
    notebook:
        "feature_selection_notebook.py.ipynb"