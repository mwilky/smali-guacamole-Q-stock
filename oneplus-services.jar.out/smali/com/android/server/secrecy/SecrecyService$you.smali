.class final Lcom/android/server/secrecy/SecrecyService$you;
.super Landroid/secrecy/SecrecyManagerInternal;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/secrecy/SecrecyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "you"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/secrecy/SecrecyService;


# direct methods
.method private constructor <init>(Lcom/android/server/secrecy/SecrecyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/secrecy/SecrecyService$you;->this$0:Lcom/android/server/secrecy/SecrecyService;

    invoke-direct {p0}, Landroid/secrecy/SecrecyManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/secrecy/SecrecyService;Lcom/android/server/secrecy/tsu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/secrecy/SecrecyService$you;-><init>(Lcom/android/server/secrecy/SecrecyService;)V

    return-void
.end method


# virtual methods
.method public getSecrecyState(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/SecrecyService$you;->this$0:Lcom/android/server/secrecy/SecrecyService;

    invoke-static {p0}, Lcom/android/server/secrecy/SecrecyService;->you(Lcom/android/server/secrecy/SecrecyService;)Lcom/android/server/secrecy/zta/sis;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/secrecy/zta/sis;->t(I)Z

    move-result p0

    return p0
.end method

.method public isInEncryptedAppList(Landroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/SecrecyService$you;->this$0:Lcom/android/server/secrecy/SecrecyService;

    invoke-static {p0, p1}, Lcom/android/server/secrecy/SecrecyService;->zta(Lcom/android/server/secrecy/SecrecyService;Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0
.end method
