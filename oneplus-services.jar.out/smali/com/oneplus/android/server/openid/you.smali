.class public final synthetic Lcom/oneplus/android/server/openid/you;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic _E:Lcom/oneplus/android/server/openid/cno;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/android/server/openid/cno;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/android/server/openid/you;->_E:Lcom/oneplus/android/server/openid/cno;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/openid/you;->_E:Lcom/oneplus/android/server/openid/cno;

    invoke-virtual {p0}, Lcom/oneplus/android/server/openid/cno;->jf()V

    return-void
.end method
