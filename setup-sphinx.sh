#!/bin/bash

# Install Sphinx
pip install sphinx

# Initialize Sphinx project
sphinx-quickstart docs

# Create api.rst file
touch docs/source/api.rst

# Update index.rst file
cat << EOF > docs/source/index.rst
Documentation Tools
===================

.. toctree::
   :maxdepth: 2

   api

Indices and tables
==================

* :ref:\`genindex\`
* :ref:\`modindex\`
* :ref:\`search\`
EOF

# Update api.rst file
cat << EOF > docs/source/api.rst
API Module
==========

.. automodule:: app.api
   :members:
   :undoc-members:
EOF


# Append extensions to conf.py
cat << EOF >> docs/source/conf.py
import os
import sys
sys.path.insert(0, os.path.abspath('../..'))

html_theme = 'alabaster'
html_static_path = ['_static']
extensions = ['sphinx.ext.autodoc',]
EOF

cd docs

make html

python -m http.server