.class public Lcom/android/server/wm/veq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/IOpQuickReply;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/veq$sis;,
        Lcom/android/server/wm/veq$you;,
        Lcom/android/server/wm/veq$zta;
    }
.end annotation


# static fields
.field private static QU:Ljava/lang/Object; = null

.field private static final RU:Ljava/lang/String; = "Quick_Reply_Config"

.field public static final SU:F = 0.4f

.field private static final TAG:Ljava/lang/String; = "OpQuickReply"

.field public static TU:I = 0x0

.field public static final UU:I = 0x0

.field public static final VU:I = 0x1

.field public static final WU:I = 0x2

.field public static final XU:I = 0x30a

.field public static final YU:I = 0x60

.field public static final ZU:I = 0x54

.field public static final _U:I = 0x2a

.field public static final aV:I = 0x3c

.field public static final bV:I = 0x30

.field public static cV:I = 0x0

.field public static dV:I = 0x0

.field public static eV:I = 0x0

.field public static fV:I = 0x0

.field public static gV:I = 0x0

.field public static hV:I = 0x0

.field public static final iV:I = 0x28

.field public static final jV:I = 0x28

.field public static final kV:I = 0x28

.field public static lV:I = 0x0

.field public static mV:I = 0x0

.field public static nV:I = 0x0

.field public static final oV:I = 0x12c

.field public static final pV:I = 0x64

.field public static qV:I

.field public static rV:I

.field public static sIMELimitWidth:I

.field private static sInstance:Lcom/android/server/wm/veq;

.field private static final sV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final tV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static uV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static vV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private AU:Lcom/android/internal/view/IInputMethodManager;

.field private BU:Lcom/oneplus/config/ConfigObserver;

.field private CU:I

.field private DU:I

.field private EU:I

.field private FU:I

.field private final GU:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private HU:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private IU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field JU:Landroid/view/View;

.field KU:Landroid/view/View;

.field LU:Landroid/view/View;

.field MU:Landroid/view/View;

.field NU:Landroid/widget/FrameLayout;

.field PU:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field public mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

.field private mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field private mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSettingsObserver:Lcom/android/server/wm/veq$sis;

.field private mWindowManager:Landroid/view/WindowManager;

.field private pU:Z

.field private qU:Z

.field private rU:Lcom/android/server/wm/WindowManagerService;

.field private sU:Landroid/view/WindowManager$LayoutParams;

.field private sw:Lcom/android/server/am/ActivityManagerService;

.field private tU:Landroid/view/WindowManager$LayoutParams;

.field private uU:Landroid/view/WindowManager$LayoutParams;

.field private vU:Landroid/view/WindowManager$LayoutParams;

.field private wU:Lcom/android/server/wm/veq$zta;

.field private xU:Lcom/android/server/wm/ActivityRecord;

.field private yU:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private zU:Z


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wm/veq;->QU:Ljava/lang/Object;

    const-string v0, "persist.quickreply.imeside"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/wm/veq;->TU:I

    const/16 v0, 0x30a

    sput v0, Lcom/android/server/wm/veq;->cV:I

    const/16 v0, 0x60

    sput v0, Lcom/android/server/wm/veq;->dV:I

    const/16 v0, 0x54

    sput v0, Lcom/android/server/wm/veq;->eV:I

    const/16 v0, 0x2a

    sput v0, Lcom/android/server/wm/veq;->fV:I

    const/16 v0, 0x3c

    sput v0, Lcom/android/server/wm/veq;->gV:I

    const/16 v0, 0x30

    sput v0, Lcom/android/server/wm/veq;->hV:I

    const/16 v0, 0x438

    sput v0, Lcom/android/server/wm/veq;->sIMELimitWidth:I

    const/16 v0, 0x28

    sput v0, Lcom/android/server/wm/veq;->lV:I

    sput v0, Lcom/android/server/wm/veq;->mV:I

    sput v0, Lcom/android/server/wm/veq;->nV:I

    const/16 v0, 0x12c

    sput v0, Lcom/android/server/wm/veq;->qV:I

    const/16 v0, 0x64

    sput v0, Lcom/android/server/wm/veq;->rV:I

    const-string v1, "com.google.android.packageinstaller"

    const-string v2, "com.android.packageinstaller"

    const-string v3, "com.google.android.permissioncontroller"

    const-string v4, "com.android.permissioncontroller"

    const-string v5, "com.oneplus.applocker"

    const-string v6, "com.android.systemui"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/veq;->sV:Ljava/util/List;

    const-string v1, "com.google.android.packageinstaller"

    const-string v2, "com.android.packageinstaller"

    const-string v3, "com.google.android.permissioncontroller"

    const-string v4, "com.android.permissioncontroller"

    const-string v5, "com.oneplus.applocker"

    const-string v6, "com.android.systemui"

    const-string v7, "com.whatsapp"

    const-string v8, "com.instagram.android"

    const-string v9, "com.tencent.mm"

    const-string v10, "com.tencent.mobileqq"

    const-string v11, "com.facebook.mlite"

    const-string v12, "com.tencent.mobileqqi"

    const-string v13, "com.tencent.qqlite"

    const-string v14, "com.tencent.tim"

    const-string v15, "org.telegram.messenger"

    const-string v16, "org.thunderdog.challegram"

    const-string v17, "com.whatsapp.w4b"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/veq;->tV:Ljava/util/List;

    const-string v1, "com.baidu.input_yijia"

    const-string v2, "com.android.inputmethod.latin"

    const-string v3, "com.google.android.inputmethod.pinyin"

    const-string v4, "com.google.android.apps.handwriting.ime"

    const-string v5, "com.google.android.inputmethod.latin"

    const-string v6, "com.touchtype.swiftkey"

    const-string v7, "com.jb.emoji.gokeyboard"

    const-string v8, "com.jb.gokeyboard"

    const-string v9, "com.cootek.smartinputv5"

    const-string v10, "abc.apple.emoji.theme.gif.keyboard"

    const-string v11, "com.emoji.keyboard.touchpal"

    const-string v12, "com.grammarly.android.keyboard"

    const-string v13, "com.syntellia.fleksy.keyboard"

    const-string v14, "com.gamelounge.chroomakeyboard"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/veq;->uV:Ljava/util/List;

    const-string v1, "com.tencent.mm/.plugin.mmsight.ui.SightCaptureUI"

    const-string v2, "com.tencent.mm/.plugin.recordvideo.activity.MMRecordUI"

    const-string v3, "com.tencent.tim/com.tencent.av.ui.AVActivity"

    const-string v4, "com.tencent.mobileqqi/com.tencent.av.ui.AVActivity"

    const-string v5, "com.tencent.mm/.plugin.voip.ui.VideoActivity"

    const-string v6, "com.instagram.android/com.instagram.modal.TransparentModalActivity"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/veq;->vV:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/veq;->pU:Z

    iput-boolean v0, p0, Lcom/android/server/wm/veq;->qU:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/veq;->mScreenHeight:I

    iput v0, p0, Lcom/android/server/wm/veq;->mScreenWidth:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/veq;->yU:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/veq;->zU:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/veq;->GU:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/veq;->HU:Ljava/util/ArrayList;

    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/veq;->IU:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/wm/veq;->mContext:Landroid/content/Context;

    return-void
.end method

.method private Ja(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIMEMarginBottom force: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpQuickReply"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-direct {p0}, Lcom/android/server/wm/veq;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x44870000    # 1080.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x42200000    # 40.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sput p1, Lcom/android/server/wm/veq;->nV:I

    :cond_0
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isGestureButtonWithoutHideBarEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/veq;->rU:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/veq;->rU:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050186

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x105018a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v1, Lcom/android/server/wm/veq;->nV:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/veq;->CU:I

    const-string v0, "OpQuickReply"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NavHeightOffset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/veq;->CU:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "updated IMEMarginBottom: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/server/wm/veq;->nV:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpQuickReply"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private Mb(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/veq;->vU:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p1, p0, Lcom/android/server/wm/veq;->KU:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/server/wm/veq;->pq()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/veq;->vU:Landroid/view/WindowManager$LayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object p1, p0, Lcom/android/server/wm/veq;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/server/wm/veq;->TU:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x509001b

    goto :goto_0

    :cond_0
    const v0, 0x509001c

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/veq;->KU:Landroid/view/View;

    iget-object p1, p0, Lcom/android/server/wm/veq;->KU:Landroid/view/View;

    const v0, 0x5070066

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/server/wm/veq;->NU:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/android/server/wm/veq;->KU:Landroid/view/View;

    const v0, 0x5070062

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/server/wm/veq;->PU:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/android/server/wm/veq;->PU:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/android/server/wm/fto;

    invoke-direct {v0, p0}, Lcom/android/server/wm/fto;-><init>(Lcom/android/server/wm/veq;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/android/server/wm/veq;->KU:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/android/server/wm/lqr;

    invoke-direct {v0, p0}, Lcom/android/server/wm/lqr;-><init>(Lcom/android/server/wm/veq;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-direct {p0}, Lcom/android/server/wm/veq;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/veq;->KU:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/wm/veq;->vU:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/server/wm/veq;->wU:Lcom/android/server/wm/veq$zta;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/wm/veq;->wU:Lcom/android/server/wm/veq$zta;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method private Nb(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/veq;->HU:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private Ob(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/veq;->KU:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/veq;->KU:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/veq;->KU:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateImeBtnVis to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpQuickReply"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic bio(Lcom/android/server/wm/veq;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/veq;->mq()V

    return-void
.end method

.method static synthetic bvj(Lcom/android/server/wm/veq;)Lcom/android/server/wm/veq$zta;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/veq;->wU:Lcom/android/server/wm/veq$zta;

    return-object p0
.end method

.method static synthetic cno(Lcom/android/server/wm/veq;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/veq;->kq()V

    return-void
.end method

.method static synthetic dma(Lcom/android/server/wm/veq;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/veq;->dq()V

    return-void
.end method

.method private dq()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/veq;->mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/sdk/utils/OpBoostFramework;

    invoke-direct {v0}, Lcom/oneplus/sdk/utils/OpBoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/veq;->mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/veq;->mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    const/4 v0, 0x0

    const/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/sdk/utils/OpBoostFramework;->acquireBoostFor(II)I

    return-void
.end method

.method private eq()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/veq;->JU:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/veq;->sU:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-direct {p0}, Lcom/android/server/wm/veq;->oq()V

    iget-object v0, p0, Lcom/android/server/wm/veq;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x5090018

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/veq;->JU:Landroid/view/View;

    iget-object v0, p0, Lcom/android/server/wm/veq;->JU:Landroid/view/View;

    new-instance v3, Lcom/android/server/wm/cjf;

    invoke-direct {v3, p0}, Lcom/android/server/wm/cjf;-><init>(Lcom/android/server/wm/veq;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/server/wm/veq;->JU:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v3, Lcom/android/server/wm/ear;

    invoke-direct {v3, p0}, Lcom/android/server/wm/ear;-><init>(Lcom/android/server/wm/veq;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-direct {p0}, Lcom/android/server/wm/veq;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/veq;->JU:Landroid/view/View;

    iget-object v4, p0, Lcom/android/server/wm/veq;->sU:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/veq;->LU:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/veq;->tU:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-direct {p0}, Lcom/android/server/wm/veq;->oq()V

    iget-object v0, p0, Lcom/android/server/wm/veq;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x5090019

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/veq;->LU:Landroid/view/View;

    iget-object v0, p0, Lcom/android/server/wm/veq;->LU:Landroid/view/View;

    new-instance v1, Lcom/android/server/wm/ire;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ire;-><init>(Lcom/android/server/wm/veq;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/android/server/wm/veq;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/veq;->LU:Landroid/view/View;

    iget-object v3, p0, Lcom/android/server/wm/veq;->tU:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/veq;->MU:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/veq;->oq()V

    iget-object v0, p0, Lcom/android/server/wm/veq;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x509001a

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/veq;->MU:Landroid/view/View;

    iget-object v0, p0, Lcom/android/server/wm/veq;->MU:Landroid/view/View;

    new-instance v1, Lcom/android/server/wm/hmo;

    invoke-direct {v1, p0}, Lcom/android/server/wm/hmo;-><init>(Lcom/android/server/wm/veq;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/android/server/wm/veq;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/veq;->MU:Landroid/view/View;

    iget-object p0, p0, Lcom/android/server/wm/veq;->uU:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private fq()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/veq;->HU:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static synthetic gck(Lcom/android/server/wm/veq;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/veq;->nq()V

    return-void
.end method

.method private getAppBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/veq;->sw:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/wm/veq;
    .locals 2

    const-class v0, Lcom/android/server/wm/veq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wm/veq;->sInstance:Lcom/android/server/wm/veq;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/wm/veq;

    invoke-direct {v1, p0}, Lcom/android/server/wm/veq;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/wm/veq;->sInstance:Lcom/android/server/wm/veq;

    :cond_0
    sget-object p0, Lcom/android/server/wm/veq;->sInstance:Lcom/android/server/wm/veq;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/veq;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/veq;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/wm/veq;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/veq;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method private gq()V
    .locals 2

    const-string v0, "OpQuickReply"

    const-string v1, "dismissInputMethod"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/veq;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/veq;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/veq;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    :cond_1
    return-void
.end method

.method static synthetic gwm(Lcom/android/server/wm/veq;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/veq;->vU:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method private hq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/veq;->rU:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/veq;->rU:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method static synthetic ibl(Lcom/android/server/wm/veq;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/veq;->DU:I

    return p0
.end method

.method static synthetic igw(Lcom/android/server/wm/veq;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/veq;->qq()V

    return-void
.end method

.method private init()V
    .locals 3

    const-string v0, "input_method"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/veq;->AU:Lcom/android/internal/view/IInputMethodManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OpQuickReplyThread"

    const/4 v2, -0x8

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/wm/veq$zta;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/veq$zta;-><init>(Lcom/android/server/wm/veq;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wm/veq;->wU:Lcom/android/server/wm/veq$zta;

    new-instance v0, Lcom/android/server/wm/veq$sis;

    iget-object v1, p0, Lcom/android/server/wm/veq;->wU:Lcom/android/server/wm/veq$zta;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/veq$sis;-><init>(Lcom/android/server/wm/veq;Lcom/android/server/wm/veq$zta;)V

    iput-object v0, p0, Lcom/android/server/wm/veq;->mSettingsObserver:Lcom/android/server/wm/veq$sis;

    invoke-direct {p0}, Lcom/android/server/wm/veq;->nq()V

    return-void
.end method

.method private iq()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/veq;->AU:Lcom/android/internal/view/IInputMethodManager;

    const-string v1, "OpQuickReply"

    if-nez v0, :cond_0

    const-string p0, "InputMethodManager is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/veq;->rU:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/veq;->rU:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-direct {p0}, Lcom/android/server/wm/veq;->dq()V

    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_3

    const-string v4, "killIMEs start"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/android/server/wm/veq;->fq()V

    invoke-direct {p0, v2}, Lcom/android/server/wm/veq;->uc(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_4

    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/wm/veq;->Nb(I)V

    iget-object v4, p0, Lcom/android/server/wm/veq;->sw:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v2, v0}, Lcom/android/server/am/ActivityManagerService;->killApplicationProcess(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "killIMEs for freeform app killing target:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mFocusedApp="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/veq;->AU:Lcom/android/internal/view/IInputMethodManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/wm/veq;->uc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v3, :cond_7

    iget-object v6, v3, Lcom/android/server/wm/AppWindowToken;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_7
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v6}, Lcom/android/server/wm/veq;->Nb(I)V

    iget-object v6, p0, Lcom/android/server/wm/veq;->sw:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v5, v4}, Lcom/android/server/am/ActivityManagerService;->killApplicationProcess(Ljava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "killIMEs for freeform app killing:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v0, "killIMEs failed:"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    return-void
.end method

.method private jq()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/veq;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickreply_ime_unsupported"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/veq;->GU:Landroid/util/ArrayMap;

    aget-object v6, v4, v2

    const/4 v7, 0x1

    aget-object v8, v4, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v5, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadImeRecord pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v4, v7

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OpQuickReply"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private kq()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wm/veq;->lq()V

    iget-object v0, p0, Lcom/android/server/wm/veq;->JU:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/veq;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/veq;->JU:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v1, p0, Lcom/android/server/wm/veq;->JU:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/veq;->LU:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/veq;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/veq;->LU:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_2
    iput-object v1, p0, Lcom/android/server/wm/veq;->LU:Landroid/view/View;

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/veq;->MU:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/wm/veq;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/veq;->MU:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_4
    iput-object v1, p0, Lcom/android/server/wm/veq;->MU:Landroid/view/View;

    :cond_5
    return-void
.end method

.method static synthetic kth(Lcom/android/server/wm/veq;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/veq;->lq()V

    return-void
.end method

.method private lq()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/veq;->wU:Lcom/android/server/wm/veq$zta;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/veq;->KU:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/veq;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/veq;->KU:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/veq;->KU:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private mq()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/veq;->vU:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3e99999a    # 0.3f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v0, p0, Lcom/android/server/wm/veq;->KU:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/veq;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/veq;->KU:Landroid/view/View;

    iget-object p0, p0, Lcom/android/server/wm/veq;->vU:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private nq()V
    .locals 11

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-direct {p0}, Lcom/android/server/wm/veq;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/veq;->mScreenHeight:I

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/android/server/wm/veq;->mScreenWidth:I

    if-ne v2, v1, :cond_0

    return-void

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/veq;->mScreenHeight:I

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/veq;->mScreenWidth:I

    iget v0, p0, Lcom/android/server/wm/veq;->mScreenWidth:I

    sput v0, Lcom/android/server/wm/veq;->sIMELimitWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x44870000    # 1080.0f

    div-float/2addr v0, v1

    const v1, 0x44428000    # 778.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sput v1, Lcom/android/server/wm/veq;->cV:I

    const/high16 v1, 0x42c00000    # 96.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sput v1, Lcom/android/server/wm/veq;->dV:I

    const/high16 v1, 0x42a80000    # 84.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sput v1, Lcom/android/server/wm/veq;->eV:I

    const/high16 v1, 0x42280000    # 42.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sput v1, Lcom/android/server/wm/veq;->fV:I

    const/high16 v1, 0x42700000    # 60.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sput v1, Lcom/android/server/wm/veq;->gV:I

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sput v1, Lcom/android/server/wm/veq;->hV:I

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    sput v2, Lcom/android/server/wm/veq;->lV:I

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    sput v2, Lcom/android/server/wm/veq;->mV:I

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sput v1, Lcom/android/server/wm/veq;->nV:I

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sput v1, Lcom/android/server/wm/veq;->qV:I

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/android/server/wm/veq;->rV:I

    iget v0, p0, Lcom/android/server/wm/veq;->mScreenHeight:I

    const/16 v1, 0x870

    const/4 v2, 0x0

    if-gt v0, v1, :cond_1

    sput v2, Lcom/android/server/wm/veq;->nV:I

    sput v2, Lcom/android/server/wm/veq;->mV:I

    sput v2, Lcom/android/server/wm/veq;->lV:I

    const/16 v0, 0x30

    sput v0, Lcom/android/server/wm/veq;->hV:I

    sput v0, Lcom/android/server/wm/veq;->gV:I

    sput v0, Lcom/android/server/wm/veq;->fV:I

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/wm/veq;->Ja(Z)V

    :goto_0
    const-string v0, "persist.override.quickreply.imwidth"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "persist.override.quickreply.imewidth"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "OpQuickReply"

    if-lez v1, :cond_2

    sput v1, Lcom/android/server/wm/veq;->sIMELimitWidth:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Override IME width to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/wm/veq;->sIMELimitWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-lez v0, :cond_3

    sput v0, Lcom/android/server/wm/veq;->cV:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override IM width to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/veq;->cV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/veq;->sIMELimitWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.quickreply.imewidth"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update sIMLimitWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/veq;->cV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sIMELimitWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/veq;->sIMELimitWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7d3

    const v9, 0x1000508

    const/4 v10, -0x2

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/android/server/wm/veq;->sU:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/server/wm/veq;->sU:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget v1, Lcom/android/server/wm/veq;->fV:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const v1, 0x50e0013

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const-string v1, "QuickReplyGoFull"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/server/wm/veq;->sU:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x12

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/veq;->tU:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/server/wm/veq;->tU:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/veq;->sU:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget-object v0, p0, Lcom/android/server/wm/veq;->tU:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "QuickReplyGoSettings"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/veq;->uU:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/server/wm/veq;->uU:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/veq;->sU:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget-object v0, p0, Lcom/android/server/wm/veq;->uU:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "QuickReplySwitch"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/veq;->vU:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/server/wm/veq;->vU:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/veq;->sU:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget-object v0, p0, Lcom/android/server/wm/veq;->vU:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7dc

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v1, "QuickReplyIMEcontrols"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/server/wm/veq;->pq()V

    return-void
.end method

.method static synthetic oif(Lcom/android/server/wm/veq;)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/veq;->xU:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method private oq()V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/wm/veq;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    sget v1, Lcom/android/server/wm/veq;->TU:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/veq;->tU:Landroid/view/WindowManager$LayoutParams;

    sget v2, Lcom/android/server/wm/veq;->gV:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eqz v0, :cond_0

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/veq;->sU:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/veq;->tU:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v2, Lcom/android/server/wm/veq;->dV:I

    add-int/2addr v1, v2

    sget v3, Lcom/android/server/wm/veq;->hV:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/android/server/wm/veq;->uU:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/veq;->sU:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/android/server/wm/veq;->dV:I

    mul-int/2addr v3, v2

    sget v2, Lcom/android/server/wm/veq;->gV:I

    add-int/2addr v3, v2

    sget v2, Lcom/android/server/wm/veq;->hV:I

    add-int/2addr v3, v2

    sub-int/2addr v0, v3

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/veq;->sU:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/server/wm/veq;->mScreenHeight:I

    sget v3, Lcom/android/server/wm/veq;->dV:I

    mul-int/2addr v3, v2

    sget v2, Lcom/android/server/wm/veq;->gV:I

    add-int/2addr v3, v2

    sget v2, Lcom/android/server/wm/veq;->hV:I

    add-int/2addr v3, v2

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/veq;->tU:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/veq;->sU:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v3, Lcom/android/server/wm/veq;->dV:I

    add-int/2addr v2, v3

    sget v4, Lcom/android/server/wm/veq;->hV:I

    add-int/2addr v2, v4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/server/wm/veq;->uU:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/veq;->JU:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/wm/veq;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/veq;->JU:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/wm/veq;->sU:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/veq;->LU:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/wm/veq;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/veq;->LU:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/wm/veq;->tU:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/veq;->MU:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/wm/veq;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/veq;->MU:Landroid/view/View;

    iget-object p0, p0, Lcom/android/server/wm/veq;->uU:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method private pq()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/veq;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/veq;->vU:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    sget v1, Lcom/android/server/wm/veq;->TU:I

    const/4 v2, 0x0

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/veq;->vU:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/server/wm/veq;->mScreenHeight:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/android/server/wm/veq;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v3, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge v3, v4, :cond_1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/veq;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/server/wm/veq;->vU:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge v1, v4, :cond_2

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/veq;->vU:Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v4, Lcom/android/server/wm/veq;->lV:I

    sub-int/2addr v3, v4

    sget v5, Lcom/android/server/wm/veq;->sIMELimitWidth:I

    sub-int/2addr v3, v5

    sget v5, Lcom/android/server/wm/veq;->eV:I

    sub-int/2addr v3, v5

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/wm/veq;->FU:I

    iput v2, p0, Lcom/android/server/wm/veq;->EU:I

    iget-object v1, p0, Lcom/android/server/wm/veq;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/wm/veq;->EU:I

    if-le v1, v2, :cond_3

    iput v1, p0, Lcom/android/server/wm/veq;->EU:I

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/veq;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/wm/veq;->EU:I

    if-le v1, v2, :cond_8

    iput v1, p0, Lcom/android/server/wm/veq;->EU:I

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/android/server/wm/veq;->vU:Landroid/view/WindowManager$LayoutParams;

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/android/server/wm/veq;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, v2, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-le v2, v3, :cond_5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/veq;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/veq;->vU:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-le v1, v3, :cond_6

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/veq;->vU:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v3, Lcom/android/server/wm/veq;->mV:I

    add-int/2addr v2, v3

    sget v4, Lcom/android/server/wm/veq;->sIMELimitWidth:I

    add-int/2addr v2, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/wm/veq;->EU:I

    iget v1, p0, Lcom/android/server/wm/veq;->mScreenHeight:I

    sget v2, Lcom/android/server/wm/veq;->eV:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wm/veq;->FU:I

    iget v1, p0, Lcom/android/server/wm/veq;->FU:I

    iget-object v3, p0, Lcom/android/server/wm/veq;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v3, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v4, v3, v2

    if-le v1, v4, :cond_7

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/wm/veq;->FU:I

    :cond_7
    iget v1, p0, Lcom/android/server/wm/veq;->FU:I

    iget-object v2, p0, Lcom/android/server/wm/veq;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, v2, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/android/server/wm/veq;->eV:I

    sub-int v4, v2, v3

    if-le v1, v4, :cond_8

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/wm/veq;->FU:I

    :cond_8
    :goto_0
    iget v1, p0, Lcom/android/server/wm/veq;->DU:I

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/android/server/wm/veq;->vU:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/veq;->vU:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/server/wm/veq;->mScreenWidth:I

    sget v3, Lcom/android/server/wm/veq;->nV:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/android/server/wm/veq;->KU:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/android/server/wm/veq;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/veq;->KU:Landroid/view/View;

    iget-object p0, p0, Lcom/android/server/wm/veq;->vU:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    return-void
.end method

.method static synthetic qbh(Lcom/android/server/wm/veq;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/veq;->iq()V

    return-void
.end method

.method private qq()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/veq;->xU:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/veq;->xU:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/veq;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/veq;->xU:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/veq;->sw:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {p0}, Lcom/android/server/wm/veq;->getImBound()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/veq;->pq()V

    invoke-direct {p0}, Lcom/android/server/wm/veq;->oq()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIMstack: sIMEposition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/veq;->TU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fail. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpQuickReply"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic rtg(Lcom/android/server/wm/veq;)Lcom/android/server/am/ActivityManagerService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/veq;->sw:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method static synthetic sis(Lcom/android/server/wm/veq;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/veq;->DU:I

    return p1
.end method

.method static synthetic sis(Lcom/android/server/wm/veq;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/veq;->pq()V

    return-void
.end method

.method static synthetic ssp(Lcom/android/server/wm/veq;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/veq;->eq()V

    return-void
.end method

.method static synthetic tsu(Lcom/android/server/wm/veq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/veq;->pU:Z

    return p0
.end method

.method private uc(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/android/server/wm/veq;->uV:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic ugm(Lcom/android/server/wm/veq;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/veq;->FU:I

    return p0
.end method

.method private updateSettings()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/veq;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "op_quickreply_ime_adjust"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/wm/veq;->zU:Z

    const-string v3, "OpQuickReply"

    if-eq v2, v1, :cond_1

    iput-boolean v1, p0, Lcom/android/server/wm/veq;->zU:Z

    invoke-direct {p0}, Lcom/android/server/wm/veq;->iq()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSettings(), mImeAdjustEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/veq;->zU:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "op_quickreply_im_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSettings(), imList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/veq;->IU:Ljava/util/List;

    :cond_3
    return-void
.end method

.method static synthetic vdb(Lcom/android/server/wm/veq;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/veq;->EU:I

    return p0
.end method

.method static synthetic wtn(Lcom/android/server/wm/veq;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/veq;->gq()V

    return-void
.end method

.method private wtn(Lorg/json/JSONArray;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string p0, "OpQuickReply"

    const-string v0, "[OnlineConfig] update config start"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "op_quick_reply_ime_package_config"

    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_4

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v7, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v7, :cond_1

    const-string v7, "OpQuickReply"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Add ime package config pkg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const-string v4, "op_quick_reply_camera_activity_config"

    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_4

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v7, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v7, :cond_3

    const-string v7, "OpQuickReply"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Add camera activity config name:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    sget-object p1, Lcom/android/server/wm/veq;->QU:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    sput-object p0, Lcom/android/server/wm/veq;->uV:Ljava/util/List;

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_7

    sput-object v0, Lcom/android/server/wm/veq;->vV:Ljava/util/List;

    :cond_7
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p0, "OpQuickReply"

    const-string p1, "[OnlineConfig] update config complete"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] QuickReplyConfigUpdater, error message:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] QuickReplyConfigUpdater, error message:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpQuickReply"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method static synthetic you(Lcom/android/server/wm/veq;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/veq;->GU:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic you(Lcom/android/server/wm/veq;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/veq;->Ob(I)V

    return-void
.end method

.method static synthetic ywr(Lcom/android/server/wm/veq;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/veq;->updateSettings()V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/veq;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/veq;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private zta(Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/veq;->rU:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/veq;->rU:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iput-boolean v1, p1, Lcom/android/server/wm/AppWindowToken;->mIsQuickReplyApp:Z

    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/veq;->rU:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(ILandroid/os/IBinder;)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/veq;->rU:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private zta(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/veq;->rU:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/veq;->rU:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const-string v2, "OpQuickReply"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setQuickReplyResumed focusedApp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " pkgName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/server/wm/AppWindowToken;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v4, "null"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    const/4 p1, 0x0

    if-eqz v1, :cond_2

    iput-object p2, v1, Lcom/android/server/wm/AppWindowToken;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/veq;->isQuickReplyIM(Lcom/android/server/wm/AppWindowToken;)Z

    move-result p1

    iput-boolean p1, v1, Lcom/android/server/wm/AppWindowToken;->mIsQuickReplyApp:Z

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/veq;->setQuickReplyRunning(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private zta(Lcom/android/server/wm/ActivityRecord;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/veq;->xU:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/wm/veq;->pU:Z

    if-nez v0, :cond_5

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/veq;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/veq;->qU:Z

    iget-object p1, p0, Lcom/android/server/wm/veq;->yU:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    const-string v1, "OpQuickReply"

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/veq;->sw:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exitFreeformMode for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " task="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exitFreeformMode fail to exit freeform for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/veq;->xU:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/veq;->yU:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/veq;->qU:Z

    :cond_5
    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/veq;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/veq;->Mb(I)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/veq;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/veq;->zta(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/veq;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/veq;->zta(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/veq;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/veq;->wtn(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/veq;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/veq;->Ja(Z)V

    return-void
.end method

.method private zta(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/veq;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sget p1, Lcom/android/server/wm/veq;->sIMELimitWidth:I

    sget v0, Lcom/android/server/wm/veq;->rV:I

    sub-int/2addr p1, v0

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private zta(Ljava/lang/String;Lcom/android/server/wm/WindowState;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/veq;->pU:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/wm/veq;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sget v2, Lcom/android/server/wm/veq;->qV:I

    add-int/2addr p1, v2

    sget v2, Lcom/android/server/wm/veq;->sIMELimitWidth:I

    if-le p1, v2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/wm/veq;->zta(Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    const/4 v2, 0x7

    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    if-nez p2, :cond_4

    iget-object p0, p0, Lcom/android/server/wm/veq;->wU:Lcom/android/server/wm/veq$zta;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_3

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/server/wm/veq;->wU:Lcom/android/server/wm/veq$zta;

    const/4 p2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_3
    invoke-virtual {p0, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    xor-int/lit8 p0, p1, 0x1

    return p0

    :cond_5
    return v1
.end method


# virtual methods
.method public bootComplete()V
    .locals 5

    const-string v0, "OpQuickReply"

    const-string v1, "bootComplete"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/veq;->BU:Lcom/oneplus/config/ConfigObserver;

    const-string v1, "Quick_Reply_Config"

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v2, p0, Lcom/android/server/wm/veq;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/veq;->wU:Lcom/android/server/wm/veq$zta;

    new-instance v4, Lcom/android/server/wm/veq$you;

    invoke-direct {v4, p0}, Lcom/android/server/wm/veq$you;-><init>(Lcom/android/server/wm/veq;)V

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/veq;->BU:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/wm/veq;->BU:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v2, p0, Lcom/android/server/wm/veq;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/veq;->wtn(Lorg/json/JSONArray;)V

    return-void
.end method

.method public checkAndAddWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/veq;->isQuickReplyRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/veq;->isQuickReplyIMEWin(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.oneplus.permissionutil"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInputMethodWindow()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    iget-object p0, p2, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Add tapExcludedWindows for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpQuickReply"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p2, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public checkAndRemoveWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/veq;->isQuickReplyIMEWin(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.oneplus.permissionutil"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInputMethodWindow()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    iget-object p0, p2, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remove tapExcludedWindows for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpQuickReply"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p2, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public exitQuickReply()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/veq;->wU:Lcom/android/server/wm/veq$zta;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/wm/veq;->wU:Lcom/android/server/wm/veq$zta;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/veq;->hq()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/veq;->zta(Ljava/lang/String;Lcom/android/server/wm/WindowState;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/veq;->wU:Lcom/android/server/wm/veq$zta;

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    iget-boolean p1, p0, Lcom/android/server/wm/veq;->pU:Z

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/veq;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/veq;->wU:Lcom/android/server/wm/veq$zta;

    const/4 p1, 0x6

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public getIMDimAmount()F
    .locals 0

    const p0, 0x3ecccccd    # 0.4f

    return p0
.end method

.method public getImBound()Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0}, Lcom/android/server/wm/veq;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_1

    sget v2, Lcom/android/server/wm/veq;->TU:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/android/server/wm/veq;->cV:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget v3, Lcom/android/server/wm/veq;->cV:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isGestureButtonWithoutHideBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget p0, p0, Lcom/android/server/wm/veq;->mScreenWidth:I

    sget v1, Lcom/android/server/wm/veq;->nV:I

    sub-int/2addr p0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actual bottom, maxBottomMargin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpQuickReply"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-ge p0, v1, :cond_1

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-object v0
.end method

.method public getQuickReplyList(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const-string p0, "OpQuickReply"

    const-string p1, "List not found "

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-boolean p0, p0, Lcom/android/server/wm/veq;->zU:Z

    if-eqz p0, :cond_1

    sget-object v1, Lcom/android/server/wm/veq;->uV:Ljava/util/List;

    :cond_1
    return-object v1

    :cond_2
    sget-object p0, Lcom/android/server/wm/veq;->tV:Ljava/util/List;

    return-object p0
.end method

.method public getQuickReplyOrientation(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/AppWindowToken;)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/veq;->pU:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OpQuickReply"

    const-string v0, "ExitQuickReply due to HOME is showing"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wm/veq;->exitQuickReply()V

    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p0, p2}, Lcom/android/server/wm/veq;->isQuickReplyIM(Lcom/android/server/wm/AppWindowToken;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p2, Lcom/android/server/wm/AppWindowToken;->mIsQuickReplyApp:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/veq;->rU:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_1

    const/16 p0, 0x8

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public isForceShowStatusBar(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.tencent.mobileqq"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.tencent.tim"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.tencent.mm"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isInCameraActivityList(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/android/server/wm/veq;->vV:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isInIMEKilledList(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/veq;->HU:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isQuickReplyExiting()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/veq;->qU:Z

    return p0
.end method

.method public isQuickReplyIM(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    iget-object v1, p1, Lcom/android/server/wm/AppWindowToken;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/veq;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/server/wm/veq;->vV:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    :cond_2
    xor-int/lit8 p0, v0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public isQuickReplyIM(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/wm/veq;->sV:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/wm/veq;->tV:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/veq;->IU:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isQuickReplyIME(Ljava/lang/String;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/veq;->zU:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/wm/veq;->uV:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQuickReplyIMEWin(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x7dc

    if-eq p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x7d3

    if-ne p0, v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickReply"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isQuickReplyIMWin(Lcom/android/server/wm/WindowState;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/wm/veq;->pU:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v3, :cond_1

    const/16 v4, 0x3eb

    if-ne v2, v4, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/veq;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v3

    :cond_2
    return v0
.end method

.method public isQuickReplyRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/veq;->pU:Z

    return p0
.end method

.method public notifyImeShow(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/veq;->zU:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/veq;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/veq;->GU:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/veq;->wU:Lcom/android/server/wm/veq$zta;

    new-instance v2, Lcom/android/server/wm/obl;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/wm/obl;-><init>(Lcom/android/server/wm/veq;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public notifyImeVisibilityChanged(ZI)V
    .locals 1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/server/wm/veq;->pU:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/veq;->hq()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/veq;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x12c

    if-ge p2, p1, :cond_0

    iget p2, p0, Lcom/android/server/wm/veq;->mScreenWidth:I

    :cond_0
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isGestureButtonWithoutHideBarEnabled()Z

    move-result p1

    const/4 v0, 0x3

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/veq;->wU:Lcom/android/server/wm/veq$zta;

    iget p0, p0, Lcom/android/server/wm/veq;->CU:I

    sub-int/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/veq;->wU:Lcom/android/server/wm/veq$zta;

    sget p1, Lcom/android/server/wm/veq;->nV:I

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/veq;->wU:Lcom/android/server/wm/veq$zta;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method

.method public onConfigChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/veq;->wU:Lcom/android/server/wm/veq$zta;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p0, p0, Lcom/android/server/wm/veq;->wU:Lcom/android/server/wm/veq$zta;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setAMandWM(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/veq;->sw:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/wm/veq;->rU:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method public setDisplayFrames(Lcom/android/server/wm/DisplayFrames;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/veq;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    return-void
.end method

.method public setKeyguardDone(Z)V
    .locals 1

    if-nez p1, :cond_0

    :try_start_0
    iget-boolean p1, p0, Lcom/android/server/wm/veq;->pU:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/veq;->xU:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/veq;->sw:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/wm/veq;->xU:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/server/am/ActivityManagerService;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "OpQuickReply"

    const-string v0, "setKeyguardDone fail: "

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setQuickReplyRunning(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/veq;->pU:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/server/wm/veq;->pU:Z

    iget-object v0, p0, Lcom/android/server/wm/veq;->wU:Lcom/android/server/wm/veq$zta;

    new-instance v1, Lcom/android/server/wm/oxb;

    invoke-direct {v1, p0}, Lcom/android/server/wm/oxb;-><init>(Lcom/android/server/wm/veq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/android/server/wm/veq;->pU:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/veq;->wU:Lcom/android/server/wm/veq$zta;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/veq;->wU:Lcom/android/server/wm/veq$zta;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/veq;->wU:Lcom/android/server/wm/veq$zta;

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-eqz p1, :cond_1

    const-string v0, "1"

    goto :goto_1

    :cond_1
    const-string v0, "0"

    :goto_1
    const-string v1, "sys.quickreplay.running"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setQuickReplyRunning to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpQuickReply"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean p1, p0, Lcom/android/server/wm/veq;->pU:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/wm/veq;->wU:Lcom/android/server/wm/veq$zta;

    const/4 p1, 0x6

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method public setResumedApp(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    const-string v0, "OpQuickReply"

    :try_start_0
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResumedApp app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/veq;->zta(Landroid/os/IBinder;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/veq;->pU:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/veq;->yU:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/veq;->yU:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/veq;->zta(Lcom/android/server/wm/ActivityRecord;)V

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/veq;->xU:Lcom/android/server/wm/ActivityRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "setResumedApp fail: "

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public systemReady()V
    .locals 3

    const-string v0, "sys.quickreplay.running"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/veq;->init()V

    invoke-direct {p0}, Lcom/android/server/wm/veq;->updateSettings()V

    iget-object v0, p0, Lcom/android/server/wm/veq;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "quickreply_imbutton_x"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/veq;->DU:I

    iget-object v0, p0, Lcom/android/server/wm/veq;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "quickreply_ime_position"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/wm/veq;->TU:I

    invoke-direct {p0}, Lcom/android/server/wm/veq;->jq()V

    return-void
.end method

.method public updateIMEFrameIfNeeded(Ljava/lang/String;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/veq;->zta(Ljava/lang/String;Lcom/android/server/wm/WindowState;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/android/server/wm/veq;->sIMELimitWidth:I

    iget-object p0, p0, Lcom/android/server/wm/veq;->vU:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mFocusedWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " width="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " pos="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/android/server/wm/veq;->TU:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OpQuickReply"

    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget p2, Lcom/android/server/wm/veq;->TU:I

    if-nez p2, :cond_1

    sget p2, Lcom/android/server/wm/veq;->eV:I

    add-int/2addr p0, p2

    iput p0, p7, Landroid/graphics/Rect;->left:I

    iput p0, p6, Landroid/graphics/Rect;->left:I

    iput p0, p5, Landroid/graphics/Rect;->left:I

    iput p0, p4, Landroid/graphics/Rect;->left:I

    iput p0, p3, Landroid/graphics/Rect;->left:I

    iget p0, p7, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p1

    iput p0, p7, Landroid/graphics/Rect;->right:I

    iput p0, p6, Landroid/graphics/Rect;->right:I

    iput p0, p5, Landroid/graphics/Rect;->right:I

    iput p0, p4, Landroid/graphics/Rect;->right:I

    iput p0, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    iput p0, p7, Landroid/graphics/Rect;->right:I

    iput p0, p6, Landroid/graphics/Rect;->right:I

    iput p0, p5, Landroid/graphics/Rect;->right:I

    iput p0, p4, Landroid/graphics/Rect;->right:I

    iput p0, p3, Landroid/graphics/Rect;->right:I

    iget p0, p7, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p1

    iput p0, p7, Landroid/graphics/Rect;->left:I

    iput p0, p6, Landroid/graphics/Rect;->left:I

    iput p0, p5, Landroid/graphics/Rect;->left:I

    iput p0, p4, Landroid/graphics/Rect;->left:I

    iput p0, p3, Landroid/graphics/Rect;->left:I

    :goto_0
    iget p0, p7, Landroid/graphics/Rect;->bottom:I

    sget p1, Lcom/android/server/wm/veq;->nV:I

    sub-int/2addr p0, p1

    iput p0, p7, Landroid/graphics/Rect;->bottom:I

    iput p0, p6, Landroid/graphics/Rect;->bottom:I

    iput p0, p5, Landroid/graphics/Rect;->bottom:I

    iput p0, p4, Landroid/graphics/Rect;->bottom:I

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    :cond_2
    return-void
.end method
