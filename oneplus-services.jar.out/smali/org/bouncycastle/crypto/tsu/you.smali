.class Lorg/bouncycastle/crypto/tsu/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/crypto/tsu/tsu;->ht()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/crypto/tsu/tsu;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/tsu/tsu;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tsu/you;->this$0:Lorg/bouncycastle/crypto/tsu/tsu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 0

    const-string p0, "org.bouncycastle.pkcs1.strict"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
