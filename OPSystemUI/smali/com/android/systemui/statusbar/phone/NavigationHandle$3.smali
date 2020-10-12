.class Lcom/android/systemui/statusbar/phone/NavigationHandle$3;
.super Ljava/lang/Object;
.source "NavigationHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavigationHandle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$400(Lcom/android/systemui/statusbar/phone/NavigationHandle;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "NavigationHandle"

    if-nez v0, :cond_3

    const-string v0, "Dark home handle"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isInFullScreenListApp()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$500(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I

    move-result v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$600(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I

    move-result v3

    :goto_0
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$102(Lcom/android/systemui/statusbar/phone/NavigationHandle;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isInFullScreenListApp()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$600(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I

    move-result v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$500(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I

    move-result v3

    :goto_1
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$202(Lcom/android/systemui/statusbar/phone/NavigationHandle;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$200(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$600(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I

    move-result v4

    if-ne v3, v4, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$702(Lcom/android/systemui/statusbar/phone/NavigationHandle;Z)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$800(Lcom/android/systemui/statusbar/phone/NavigationHandle;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$400(Lcom/android/systemui/statusbar/phone/NavigationHandle;)F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_7

    const-string v0, "Light home handle"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isInFullScreenListApp()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$900(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I

    move-result v3

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$1000(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I

    move-result v3

    :goto_2
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$102(Lcom/android/systemui/statusbar/phone/NavigationHandle;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isInFullScreenListApp()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$1000(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I

    move-result v3

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$900(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I

    move-result v3

    :goto_3
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$202(Lcom/android/systemui/statusbar/phone/NavigationHandle;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$200(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$1000(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I

    move-result v4

    if-ne v3, v4, :cond_6

    move v1, v2

    :cond_6
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$702(Lcom/android/systemui/statusbar/phone/NavigationHandle;Z)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$800(Lcom/android/systemui/statusbar/phone/NavigationHandle;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    :cond_7
    const-string v0, "no action"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isInFullScreenListApp()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$1102(Lcom/android/systemui/statusbar/phone/NavigationHandle;Z)Z

    :goto_4
    return-void
.end method
