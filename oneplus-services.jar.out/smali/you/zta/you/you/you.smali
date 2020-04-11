.class public Lyou/zta/you/you/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyou/zta/you/you/you;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyou/zta/you/you/you;->name:Ljava/lang/String;

    return-object p0
.end method
