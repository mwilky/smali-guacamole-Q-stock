.class public Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;
.super Ljava/lang/Object;
.source "AppRestrictionPredicate.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;
    .locals 2

    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;->sInstance:Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;->sInstance:Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;

    :cond_0
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;->sInstance:Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;

    return-object v0
.end method


# virtual methods
.method public test(Lcom/android/settings/fuelgauge/batterytip/AppInfo;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    iget-object v2, p1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x46

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;->test(Lcom/android/settings/fuelgauge/batterytip/AppInfo;)Z

    move-result p1

    return p1
.end method
