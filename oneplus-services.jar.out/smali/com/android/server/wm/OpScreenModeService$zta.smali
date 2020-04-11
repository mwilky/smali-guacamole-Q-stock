.class Lcom/android/server/wm/OpScreenModeService$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpScreenModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field QV:I

.field RV:I

.field SV:[I

.field mode:Landroid/view/Display$Mode;

.field final synthetic this$0:Lcom/android/server/wm/OpScreenModeService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpScreenModeService;Landroid/view/Display$Mode;)V
    .locals 7

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService$zta;->this$0:Lcom/android/server/wm/OpScreenModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/OpScreenModeService$zta;->QV:I

    iput v0, p0, Lcom/android/server/wm/OpScreenModeService$zta;->RV:I

    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/wm/OpScreenModeService$zta;->SV:[I

    iput-object p2, p0, Lcom/android/server/wm/OpScreenModeService$zta;->mode:Landroid/view/Display$Mode;

    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x5a0

    if-ne v1, v3, :cond_0

    iput v0, p0, Lcom/android/server/wm/OpScreenModeService$zta;->RV:I

    iget-object p1, p1, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x502001e

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService$zta;->SV:[I

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    const/16 v3, 0x438

    if-ne v1, v3, :cond_1

    iput v2, p0, Lcom/android/server/wm/OpScreenModeService$zta;->RV:I

    iget-object p1, p1, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x502001f

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p1

    const/high16 v1, 0x42700000    # 60.0f

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v3, p1

    const-wide v5, 0x3fb999999999999aL    # 0.1

    cmpg-double p1, v3, v5

    if-gez p1, :cond_2

    iput v2, p0, Lcom/android/server/wm/OpScreenModeService$zta;->QV:I

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p1

    const/high16 p2, 0x42b40000    # 90.0f

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    cmpg-double p1, p1, v5

    if-gez p1, :cond_3

    iput v0, p0, Lcom/android/server/wm/OpScreenModeService$zta;->QV:I

    :cond_3
    :goto_2
    return-void
.end method
