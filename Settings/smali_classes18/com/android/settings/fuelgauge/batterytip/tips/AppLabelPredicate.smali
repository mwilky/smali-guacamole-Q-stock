.class public Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;
.super Ljava/lang/Object;
.source "AppLabelPredicate.java"

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
.field private static sInstance:Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;
    .locals 2

    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;->sInstance:Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;->sInstance:Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;

    :cond_0
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;->sInstance:Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;

    return-object v0
.end method


# virtual methods
.method public test(Lcom/android/settings/fuelgauge/batterytip/AppInfo;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;->test(Lcom/android/settings/fuelgauge/batterytip/AppInfo;)Z

    move-result p1

    return p1
.end method
