.class public final enum Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;
.super Ljava/lang/Enum;
.source "ConferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/conferencemanager/ConferenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConferenceManagerRole"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;

.field public static final enum CLIENT_ROLE_ATTENDEE:Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;

.field public static final enum CLIENT_ROLE_BROADCASTVIEWER:Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;

.field public static final enum CLIENT_ROLE_HOST:Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;

.field public static final enum CLIENT_ROLE_PROXY:Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;

    const-string v1, "CLIENT_ROLE_PROXY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;->CLIENT_ROLE_PROXY:Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;

    .line 2
    new-instance v0, Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;

    const-string v1, "CLIENT_ROLE_HOST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;->CLIENT_ROLE_HOST:Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;

    .line 3
    new-instance v0, Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;

    const-string v1, "CLIENT_ROLE_BROADCASTVIEWER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;->CLIENT_ROLE_BROADCASTVIEWER:Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;

    .line 4
    new-instance v0, Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;

    const-string v1, "CLIENT_ROLE_ATTENDEE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;->CLIENT_ROLE_ATTENDEE:Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;

    .line 5
    sget-object v6, Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;->CLIENT_ROLE_PROXY:Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;

    aput-object v6, v1, v2

    sget-object v2, Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;->CLIENT_ROLE_HOST:Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;->CLIENT_ROLE_BROADCASTVIEWER:Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;->$VALUES:[Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;->$VALUES:[Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;

    invoke-virtual {v0}, [Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;

    return-object v0
.end method
