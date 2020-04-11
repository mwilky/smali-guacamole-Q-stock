.class public final synthetic Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ZenAccessDetails$rKJyvX6IObyOz60FeyFja12ZgrM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;

.field private final synthetic f$1:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ZenAccessDetails$rKJyvX6IObyOz60FeyFja12ZgrM;->f$0:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ZenAccessDetails$rKJyvX6IObyOz60FeyFja12ZgrM;->f$1:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ZenAccessDetails$rKJyvX6IObyOz60FeyFja12ZgrM;->f$0:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ZenAccessDetails$rKJyvX6IObyOz60FeyFja12ZgrM;->f$1:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->lambda$updatePreference$0$ZenAccessDetails(Ljava/lang/CharSequence;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
