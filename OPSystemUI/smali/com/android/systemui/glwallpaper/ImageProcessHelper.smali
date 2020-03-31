.class Lcom/android/systemui/glwallpaper/ImageProcessHelper;
.super Ljava/lang/Object;
.source "ImageProcessHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/glwallpaper/ImageProcessHelper$ThresholdAlgorithm;,
        Lcom/android/systemui/glwallpaper/ImageProcessHelper$Otsus;,
        Lcom/android/systemui/glwallpaper/ImageProcessHelper$Percentile85;,
        Lcom/android/systemui/glwallpaper/ImageProcessHelper$Threshold;,
        Lcom/android/systemui/glwallpaper/ImageProcessHelper$ThresholdComputeTask;
    }
.end annotation


# static fields
.field private static final LUMINOSITY_MATRIX:[F

.field private static final TAG:Ljava/lang/String; = "ImageProcessHelper"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mThreshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/glwallpaper/ImageProcessHelper;->LUMINOSITY_MATRIX:[F

    return-void

    :array_0
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f371759    # 0.7152f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3d93dd98    # 0.0722f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/glwallpaper/ImageProcessHelper$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/glwallpaper/ImageProcessHelper$1;-><init>(Lcom/android/systemui/glwallpaper/ImageProcessHelper;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageProcessHelper;->mHandler:Landroid/os/Handler;

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/android/systemui/glwallpaper/ImageProcessHelper;->mThreshold:F

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/glwallpaper/ImageProcessHelper;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/glwallpaper/ImageProcessHelper;->mThreshold:F

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/glwallpaper/ImageProcessHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()[F
    .locals 1

    sget-object v0, Lcom/android/systemui/glwallpaper/ImageProcessHelper;->LUMINOSITY_MATRIX:[F

    return-object v0
.end method


# virtual methods
.method getThreshold()F
    .locals 1

    iget p0, p0, Lcom/android/systemui/glwallpaper/ImageProcessHelper;->mThreshold:F

    const v0, 0x3f63d70a    # 0.89f

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method start(Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/glwallpaper/ImageProcessHelper$ThresholdComputeTask;

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageProcessHelper;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0}, Lcom/android/systemui/glwallpaper/ImageProcessHelper$ThresholdComputeTask;-><init>(Landroid/os/Handler;)V

    const/4 p0, 0x1

    new-array p0, p0, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aput-object p1, p0, v1

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
