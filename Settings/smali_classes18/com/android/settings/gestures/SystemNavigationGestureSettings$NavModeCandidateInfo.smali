.class Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "SystemNavigationGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/gestures/SystemNavigationGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NavModeCandidateInfo"
.end annotation


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mSummary:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p4}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    iput-object p1, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;->mLabel:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;->mSummary:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public loadSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method
