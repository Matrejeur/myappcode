from django.shortcuts import render
from .models import Post

# Create your views here.
def home(request):
    data = Post.objects.all()
    return render(request, "index.html", {"posts":data})


def single(request, slug):
    data = Post.objects.get(slug=slug)
    return render(request, "single.html", {"posts":data})


def aboutus(request):
    
    return render(request, "aboutus.html")