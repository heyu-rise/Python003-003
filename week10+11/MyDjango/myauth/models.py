from django.db import models

# Create your models here.


class Comment(models.Model):
    film_name = models.CharField(max_length=255, blank=True, null=True)
    content = models.CharField(max_length=2000, blank=True, null=True)
    star = models.IntegerField(blank=True, null=True)
    comment_date = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'comment'
