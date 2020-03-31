.class Lcom/oneplus/worklife/OPWLBHelper$1$1;
.super Ljava/lang/Object;
.source "OPWLBHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/worklife/OPWLBHelper$1;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/worklife/OPWLBHelper$1;


# direct methods
.method constructor <init>(Lcom/oneplus/worklife/OPWLBHelper$1;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper$1$1;->this$1:Lcom/oneplus/worklife/OPWLBHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper$1$1;->this$1:Lcom/oneplus/worklife/OPWLBHelper$1;

    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper$1;->this$0:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-static {p0}, Lcom/oneplus/worklife/OPWLBHelper;->access$200(Lcom/oneplus/worklife/OPWLBHelper;)Lcom/oneplus/worklife/OPWLBHelper$IWLBModeChangeListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oneplus/worklife/OPWLBHelper$IWLBModeChangeListener;->onModeChanged()V

    return-void
.end method
