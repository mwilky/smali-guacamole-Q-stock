.class Lcom/oneplus/android/server/scene/irq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/ivd;->sf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/ivd;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/ivd;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/irq;->this$0:Lcom/oneplus/android/server/scene/ivd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/irq;->this$0:Lcom/oneplus/android/server/scene/ivd;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/ivd;->kth(Lcom/oneplus/android/server/scene/ivd;)Lcom/oneplus/android/server/scene/cgv;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/cgv;->hide()V

    return-void
.end method
