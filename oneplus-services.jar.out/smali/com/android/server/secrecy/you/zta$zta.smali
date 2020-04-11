.class Lcom/android/server/secrecy/you/zta$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/secrecy/you/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/secrecy/you/zta;


# direct methods
.method public constructor <init>(Lcom/android/server/secrecy/you/zta;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/secrecy/you/zta$zta;->this$0:Lcom/android/server/secrecy/you/zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/secrecy/you/zta$zta;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/secrecy/you/zta$zta;->mClassName:Ljava/lang/String;

    return-void
.end method

.method static synthetic you(Lcom/android/server/secrecy/you/zta$zta;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/you/zta$zta;->mClassName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/secrecy/you/zta$zta;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/you/zta$zta;->mPackageName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/you/zta$zta;->mClassName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/you/zta$zta;->mPackageName:Ljava/lang/String;

    return-object p0
.end method
