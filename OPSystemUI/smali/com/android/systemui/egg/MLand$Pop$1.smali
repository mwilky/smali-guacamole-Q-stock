.class Lcom/android/systemui/egg/MLand$Pop$1;
.super Landroid/view/ViewOutlineProvider;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/egg/MLand$Pop;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/egg/MLand$Pop;

.field final synthetic val$this$0:Lcom/android/systemui/egg/MLand;


# direct methods
.method constructor <init>(Lcom/android/systemui/egg/MLand$Pop;Lcom/android/systemui/egg/MLand;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Pop$1;->this$1:Lcom/android/systemui/egg/MLand$Pop;

    iput-object p2, p0, Lcom/android/systemui/egg/MLand$Pop$1;->val$this$0:Lcom/android/systemui/egg/MLand;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/egg/MLand$Pop$1;->this$1:Lcom/android/systemui/egg/MLand$Pop;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x40c00000    # 6.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Pop$1;->this$1:Lcom/android/systemui/egg/MLand$Pop;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    iget-object p0, p0, Lcom/android/systemui/egg/MLand$Pop$1;->this$1:Lcom/android/systemui/egg/MLand$Pop;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int/2addr p0, p1

    invoke-virtual {p2, p1, p1, v0, p0}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method
