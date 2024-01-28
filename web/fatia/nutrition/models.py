from django.db import models

# Create your models here.


class FoodClass(models.Model):
    classification = models.CharField(max_length=255)
    origin = models.IntegerField()

    class Meta:
        managed = True
        db_table = 'food_class'

    def __str__(self):
        return self.classification

class Food(models.Model):
    food = models.CharField(max_length=255)
    food_class = models.ForeignKey(FoodClass, models.DO_NOTHING, db_column='food_class')
    origin = models.IntegerField()

    class Meta:
        managed = True
        db_table = 'food'

    def __str__(self):
        return self.food


class Meal(models.Model):
    description = models.CharField(max_length=255, blank=True, null=True)
    meal_time = models.TimeField(blank=True, null=True)
    plan = models.ForeignKey('Plan', models.DO_NOTHING, db_column='plan')

    class Meta:
        managed = True
        db_table = 'meal'


class FoodAminoacid(models.Model):
    food = models.ForeignKey(Food, models.DO_NOTHING, db_column='food')
    triptofano = models.DecimalField(max_digits=4, decimal_places=2)
    treonina = models.DecimalField(max_digits=4, decimal_places=2)
    isoleucina = models.DecimalField(max_digits=4, decimal_places=2)
    leucina = models.DecimalField(max_digits=4, decimal_places=2)
    lisina = models.DecimalField(max_digits=4, decimal_places=2)
    metionina = models.DecimalField(max_digits=4, decimal_places=2)
    cistina = models.DecimalField(max_digits=4, decimal_places=2)
    fenilalanina = models.DecimalField(max_digits=4, decimal_places=2)
    tirosina = models.DecimalField(max_digits=4, decimal_places=2)
    valina = models.DecimalField(max_digits=4, decimal_places=2)
    arginina = models.DecimalField(max_digits=4, decimal_places=2)
    histidina = models.DecimalField(max_digits=4, decimal_places=2)
    alanina = models.DecimalField(max_digits=4, decimal_places=2)
    acido_aspartico = models.DecimalField(max_digits=4, decimal_places=2)
    acido_glutamico = models.DecimalField(max_digits=4, decimal_places=2)
    glicina = models.DecimalField(max_digits=4, decimal_places=2)
    prolina = models.DecimalField(max_digits=4, decimal_places=2)
    serina = models.DecimalField(max_digits=4, decimal_places=2)

    class Meta:
        managed = True
        db_table = 'food_aminoacid'

class FoodFatty(models.Model):
    food = models.ForeignKey(Food, models.DO_NOTHING, db_column='food')
    saturados = models.DecimalField(max_digits=5, decimal_places=2)
    monoinsaturados = models.DecimalField(max_digits=5, decimal_places=2)
    poliinsaturados = models.DecimalField(max_digits=5, decimal_places=2, blank=True, null=True)
    c12_0 = models.DecimalField(max_digits=5, decimal_places=2, blank=True, null=True)
    c14_0 = models.DecimalField(max_digits=4, decimal_places=2, blank=True, null=True)
    c16_0 = models.DecimalField(max_digits=5, decimal_places=2, blank=True, null=True)
    c18_0 = models.DecimalField(max_digits=5, decimal_places=2, blank=True, null=True)
    c20_0 = models.DecimalField(max_digits=4, decimal_places=2, blank=True, null=True)
    c22_0 = models.DecimalField(max_digits=4, decimal_places=2, blank=True, null=True)
    c24_0 = models.DecimalField(max_digits=4, decimal_places=2, blank=True, null=True)
    c14_1 = models.DecimalField(max_digits=4, decimal_places=2, blank=True, null=True)
    c16_1 = models.DecimalField(max_digits=4, decimal_places=2, blank=True, null=True)
    c18_1 = models.DecimalField(max_digits=5, decimal_places=2, blank=True, null=True)
    c20_1 = models.DecimalField(max_digits=4, decimal_places=2, blank=True, null=True)
    c18_2n6 = models.DecimalField(max_digits=5, decimal_places=2, blank=True, null=True)
    c18_3n3 = models.DecimalField(max_digits=5, decimal_places=2, blank=True, null=True)
    c20_4 = models.DecimalField(max_digits=4, decimal_places=2, blank=True, null=True)
    c20_5 = models.DecimalField(max_digits=4, decimal_places=2, blank=True, null=True)
    c22_5 = models.DecimalField(max_digits=4, decimal_places=2, blank=True, null=True)
    c22_6 = models.DecimalField(max_digits=4, decimal_places=2, blank=True, null=True)
    c18_1t = models.DecimalField(max_digits=4, decimal_places=2, blank=True, null=True)
    c18_2t = models.DecimalField(max_digits=4, decimal_places=2, blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'food_fatty'


class FoodMeal(models.Model):
    food = models.ForeignKey(Food, models.DO_NOTHING, db_column='food')
    meal = models.ForeignKey(Meal, models.DO_NOTHING, db_column='meal')
    quantity = models.FloatField()

    class Meta:
        managed = True
        db_table = 'food_meal'

class FoodNutrients(models.Model):
    food = models.ForeignKey(Food, models.DO_NOTHING, db_column='food')
    umidade = models.IntegerField(blank=True, null=True)
    kcal = models.IntegerField(blank=True, null=True)
    kj = models.IntegerField(blank=True, null=True)
    proteina = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    lipideos = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    colesterol = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    carboidrato = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    fibra_alimentar = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    cinzas = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    calcio = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    magnesio = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    manganes = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    fosforo = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    ferro = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    sodio = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    potassio = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    cobre = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    zinco = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    retinol = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    re = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    rae = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    tiamina = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    riboflavina = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    piridoxina = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    niacina = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    vitamina_c = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    created_at = models.DateField(blank=True, null=True)
    updated_at = models.DateField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'food_nutrients'

class Plan(models.Model):
    name = models.CharField(max_length=255)
    description = models.CharField(max_length=255)

    class Meta:
        managed = True
        db_table = 'plan'
