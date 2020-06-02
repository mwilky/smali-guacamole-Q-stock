.class public Lcom/android/server/OpPowerControllerService$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OpPowerControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "zta"
.end annotation


# instance fields
.field private mSize:I

.field private rf:[[D

.field final synthetic this$0:Lcom/android/server/OpPowerControllerService;


# direct methods
.method public constructor <init>(Lcom/android/server/OpPowerControllerService;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$zta;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {p2, p3}, [I

    move-result-object p1

    const-class p2, D

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$zta;->rf:[[D

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/OpPowerControllerService$zta;->mSize:I

    return-void
.end method


# virtual methods
.method public H()[[D
    .locals 0

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$zta;->rf:[[D

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lcom/android/server/OpPowerControllerService$zta;->mSize:I

    return p0
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/OpPowerControllerService$zta;->mSize:I

    return-void
.end method

.method public zta([[D)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$zta;->rf:[[D

    return-void
.end method
