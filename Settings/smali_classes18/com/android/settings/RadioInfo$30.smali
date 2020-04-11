.class Lcom/android/settings/RadioInfo$30;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RadioInfo;->updateCbrsDataState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/RadioInfo$30;->this$0:Lcom/android/settings/RadioInfo;

    iput-boolean p2, p0, Lcom/android/settings/RadioInfo$30;->val$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/RadioInfo$30;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$2400(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/RadioInfo$30;->val$state:Z

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setOpportunisticNetworkState(Z)Z

    iget-object v0, p0, Lcom/android/settings/RadioInfo$30;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$4700(Lcom/android/settings/RadioInfo;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo$30;->this$0:Lcom/android/settings/RadioInfo;

    invoke-virtual {v1}, Lcom/android/settings/RadioInfo;->getCbrsDataState()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
