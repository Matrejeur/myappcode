from pyexpat import model
from django.db import models
from django.urls import reverse

# Create your models here.

class Post(models.Model):
    title=models.CharField(max_length=200)
    content=models.TextField()
    slug=models.SlugField(max_length=255)
    image=models.ImageField(upload_to="images/", default="images/default.png")


    def get_absolute_url(self):
        return reverse("blogapp:single", args=[self.slug])


    def __str__(self):
        return self.title

