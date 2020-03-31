.class Lcom/oneplus/worklife/OPWLBHelper$1;
.super Landroid/database/ContentObserver;
.source "OPWLBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/worklife/OPWLBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/worklife/OPWLBHelper;


# direct methods
.method constructor <init>(Lcom/oneplus/worklife/OPWLBHelper;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper$1;->this$0:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper$1;->this$0:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-static {p1}, Lcom/oneplus/worklife/OPWLBHelper;->access$000(Lcom/oneplus/worklife/OPWLBHelper;)I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper$1;->this$0:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-static {v0}, Lcom/oneplus/worklife/OPWLBHelper;->access$100(Lcom/oneplus/worklife/OPWLBHelper;)V

    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper$1;->this$0:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-static {v0}, Lcom/oneplus/worklife/OPWLBHelper;->access$000(Lcom/oneplus/worklife/OPWLBHelper;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper$1;->this$0:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-static {p1}, Lcom/oneplus/worklife/OPWLBHelper;->access$200(Lcom/oneplus/worklife/OPWLBHelper;)Lcom/oneplus/worklife/OPWLBHelper$IWLBModeChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper$1;->this$0:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-static {p1}, Lcom/oneplus/worklife/OPWLBHelper;->access$300(Lcom/oneplus/worklife/OPWLBHelper;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/oneplus/worklife/OPWLBHelper$1$1;

    invoke-direct {v0, p0}, Lcom/oneplus/worklife/OPWLBHelper$1$1;-><init>(Lcom/oneplus/worklife/OPWLBHelper$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Current Mode changed to : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper$1;->this$0:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-static {p0}, Lcom/oneplus/worklife/OPWLBHelper;->access$000(Lcom/oneplus/worklife/OPWLBHelper;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPSystemUIWLBHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
