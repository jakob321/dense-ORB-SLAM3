FROM orb-slam3

COPY ml-depth-pro/ /root/colcon_ws/src/ml-depth-pro/
WORKDIR /root/colcon_ws/src/ml-depth-pro/
RUN pip install --no-cache-dir -e .
RUN pip install torch
RUN pip install torchvision
RUN pip install matplotlib
RUN pip install opencv-python
RUN pip install scipy
RUN pip install tqdm
RUN pip install pillow

RUN chmod +x get_pretrained_models.sh
RUN ./get_pretrained_models.sh
RUN pip install pyvista