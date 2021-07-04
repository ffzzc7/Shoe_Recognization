import torch
import torchvision
#from model_v3 import mobilenet_v3_large # ffzzMod
from model import resnet101

model = resnet101(num_classes=252)#自己定义的网络模型
model.load_state_dict(torch.load("D:\\resNet101_shoe_pre_more.pth",map_location='cuda'))#保存的训练模型
model.eval()#切换到eval（）
example = torch.rand(1, 3, 224, 224)#生成一个随机输入维度的输入
traced_script_module = torch.jit.trace(model, example)
traced_script_module.save("resNet101_shoe_pre_more_GPU.pt")

