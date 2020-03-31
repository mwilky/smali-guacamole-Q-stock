.class Lcom/android/systemui/egg/MLand$Player$1;
.super Landroid/view/ViewOutlineProvider;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/egg/MLand$Player;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/egg/MLand$Player;


# direct methods
.method constructor <init>(Lcom/android/systemui/egg/MLand$Player;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Player$1;->this$0:Lcom/android/systemui/egg/MLand$Player;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v0, p0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v1, p1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr p0, v0

    sub-int/2addr p1, v1

    invoke-virtual {p2, v0, v1, p0, p1}, Landroid/graphics/Outline;->setRect(IIII)V

    return-void
.end method
