.class public final synthetic Lcom/android/server/wm/zta;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic lF:Lcom/android/server/wm/OpScreenModeService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/OpScreenModeService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/zta;->lF:Lcom/android/server/wm/OpScreenModeService;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/zta;->lF:Lcom/android/server/wm/OpScreenModeService;

    check-cast p1, Landroid/media/AudioRecordingConfiguration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OpScreenModeService;->zta(Landroid/media/AudioRecordingConfiguration;)Z

    move-result p0

    return p0
.end method
