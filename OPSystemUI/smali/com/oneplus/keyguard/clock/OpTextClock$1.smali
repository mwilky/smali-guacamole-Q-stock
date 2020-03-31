.class Lcom/oneplus/keyguard/clock/OpTextClock$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpTextClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/keyguard/clock/OpTextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/keyguard/clock/OpTextClock;


# direct methods
.method constructor <init>(Lcom/oneplus/keyguard/clock/OpTextClock;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/keyguard/clock/OpTextClock$1;->this$0:Lcom/oneplus/keyguard/clock/OpTextClock;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/keyguard/clock/OpTextClock$1;->this$0:Lcom/oneplus/keyguard/clock/OpTextClock;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/clock/OpTextClock;->refresh()V

    return-void
.end method
