.class public Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;
.super Landroid/os/Handler;
.source "OpKeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OpHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;->this$0:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method
