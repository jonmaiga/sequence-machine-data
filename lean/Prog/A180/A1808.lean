import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A180800: Number of distinct solutions of sum{i=1..8}(x(2i-1)*x(2i)) = 0 (mod n), with x() in 0..n-1.

The programs for A180800, there is no canonical definition to state claims against.
-/

/-! ## A180800.P8906490864088180422

`A180803(A046691(n+6)-3)`
-/

namespace A180800.P8906490864088180422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A046691 (n + 6) - 3).toNat

end

end A180800.P8906490864088180422

/-! ## A180800.P12243963135830307330

`A180803(A000096(n+7)-6)`
-/

namespace A180800.P12243963135830307330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A000096 (n + 7) - 6).toNat

end

end A180800.P12243963135830307330

/-! ## A180800.P16280967151433602714

`A180803(A000124(n+8)-8)`
-/

namespace A180800.P16280967151433602714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A000124 (n + 8) - 8).toNat

end

end A180800.P16280967151433602714

/-! ## A180800.P11069365259493993695

`A180803(Δ[Δ[A055832(n+6)]])`
-/

namespace A180800.P11069365259493993695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055832 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (f1 (n + 1) - f1 n).toNat

end

end A180800.P11069365259493993695

/-! ## A180800.P3419375771735467678

`A180803(A000217(n+7)+n+1)`
-/

namespace A180800.P3419375771735467678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A000217 (n + 7) + (n + 1 : ℤ)).toNat

end

end A180800.P3419375771735467678

/-! ## A180800.P16162896474249957938

`A180803(eq[7, A002262(A038722(n+1))])`
-/

namespace A180800.P16162896474249957938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180800.P16162896474249957938

/-!
# A180801: Number of distinct solutions of sum{i=1..9}(x(2i-1)*x(2i)) = 0 (mod n), with x() in 0..n-1.

The programs for A180801, there is no canonical definition to state claims against.
-/

/-! ## A180801.P17820337407750765319

`A180803(A155212(n+5))`
-/

namespace A180801.P17820337407750765319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A155212 (n + 5)).toNat

end

end A180801.P17820337407750765319

/-! ## A180801.P395612240744941256

`A180803(A055999(n+6)-2)`
-/

namespace A180801.P395612240744941256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A055999 (n + 6) - 2).toNat

end

end A180801.P395612240744941256

/-! ## A180801.P13209550815574979757

`A180803(A052905(n+6)-3)`
-/

namespace A180801.P13209550815574979757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A052905 (n + 6) - 3).toNat

end

end A180801.P13209550815574979757

/-! ## A180801.P3087804552184438854

`A180803(A000124(n+9)-9)`
-/

namespace A180801.P3087804552184438854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A000124 (n + 9) - 9).toNat

end

end A180801.P3087804552184438854

/-! ## A180801.P1790876695921232195

`A180803(A000217(n+8)+n+1)`
-/

namespace A180801.P1790876695921232195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A000217 (n + 8) + (n + 1 : ℤ)).toNat

end

end A180801.P1790876695921232195

/-!
# A180802: Number of distinct solutions of sum{i=1..10}(x(2i-1)*x(2i)) = 0 (mod n), with x() in 0..n-1.

The programs for A180802, there is no canonical definition to state claims against.
-/

/-! ## A180802.P13331513849411294322

`A180803(A056000(n+6)+1)`
-/

namespace A180802.P13331513849411294322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A056000 (n + 6) + 1).toNat

end

end A180802.P13331513849411294322

/-! ## A180802.P6413983196923633025

`A180803(A155212(n+6)-1)`
-/

namespace A180802.P6413983196923633025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A155212 (n + 6) - 1).toNat

end

end A180802.P6413983196923633025

/-! ## A180802.P5064762976875303075

`A180803(A052905(n+7)-4)`
-/

namespace A180802.P5064762976875303075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A052905 (n + 7) - 4).toNat

end

end A180802.P5064762976875303075

/-! ## A180802.P4113811205898552978

`A180803(A000124(n+10)-10)`
-/

namespace A180802.P4113811205898552978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A000124 (n + 10) - 10).toNat

end

end A180802.P4113811205898552978

/-! ## A180802.P10312240337193408392

`A180803(n+1+A000217(n+9))`
-/

namespace A180802.P10312240337193408392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 ((n + 1 : ℤ) + A000217 (n + 9)).toNat

end

end A180802.P10312240337193408392

/-! ## A180802.P420795537335951183

`A180803(A167614(n+1)+A008590(n+5))`
-/

namespace A180802.P420795537335951183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A167614 (n + 1) + A008590 (n + 5)).toNat

end

end A180802.P420795537335951183

/-! ## A180802.P18330263339590985298

`A180803(A111284(n+8)+A000096(n+5))`
-/

namespace A180802.P18330263339590985298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A111284 (n + 8) + A000096 (n + 5)).toNat

end

end A180802.P18330263339590985298

/-!
# A180803: T(n,k)=number of distinct solutions to sum{i=1..k}(x(2i-1)*x(2i)) == 0 (mod n), with x() in 0..n-1.

The programs for A180803, there is no canonical definition to state claims against.
-/

/-! ## A180803.P3779192544227280515

`A064515(A227450(n+1))`
-/

namespace A180803.P3779192544227280515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064515 (A227450 (n + 1)).toNat

end

end A180803.P3779192544227280515

/-! ## A180803.P15586813087876358427

`A276621(A066991(n+1))`
-/

namespace A180803.P15586813087876358427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276621 (A066991 (n + 1)).toNat

end

end A180803.P15586813087876358427

/-! ## A180803.P3841466526291661180

`A082429(A321163(n+1))`
-/

namespace A180803.P3841466526291661180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082429 (A321163 (n + 1)).toNat

end

end A180803.P3841466526291661180

/-! ## A180803.P3618351967003203062

`A331256(A245789(n+1))`
-/

namespace A180803.P3618351967003203062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331256 (A245789 (n + 1)).toNat

end

end A180803.P3618351967003203062

/-! ## A180803.P8108340119345643150

`A039836(A144696(n+2))`
-/

namespace A180803.P8108340119345643150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039836 (A144696 (n + 2)).toNat

end

end A180803.P8108340119345643150

/-!
# A180804: Number of distinct solutions of sum{i=1..2}(x(2i-1)*x(2i)) = 1 (mod n), with x() in 0..n-1.

The programs for A180804, there is no canonical definition to state claims against.
-/

/-! ## A180804.P13705959712688628053

`A180784(n+1)+(n+1)*A180783(n+1)`
-/

namespace A180804.P13705959712688628053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180784 (n + 1) + (n + 1 : ℤ) * A180783 (n + 1)

end

end A180804.P13705959712688628053

/-! ## A180804.P17865211300891379716

`A180784(n+1)+(n+1)*A180793(∑[n+1])`
-/

namespace A180804.P17865211300891379716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180784 (n + 1) + (n + 1 : ℤ) * A180793 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180804.P17865211300891379716

/-! ## A180804.P101839477154191327

`A180813(∑[n+2])`
-/

namespace A180804.P101839477154191327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180804.P101839477154191327

/-! ## A180804.P15415890803937245037

`(1-4/2)²*A180813(A000096(n+1))`
-/

namespace A180804.P15415890803937245037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (4 : ℚ) / 2) ^ 2 * (A180813 (A000096 (n + 1)).toNat : ℚ)

end

end A180804.P15415890803937245037

/-! ## A180804.P1425058619097234922

`A180813(A000096(n+1))%A005915(n)`
-/

namespace A180804.P1425058619097234922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180813 (A000096 (n + 1)).toNat) (A005915 n)

end

end A180804.P1425058619097234922

/-! ## A180804.P8445417091824722707

`abs(A009001(2*n)*A180813(A000096(n+1)))`
-/

namespace A180804.P8445417091824722707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009001 (2 * n) * A180813 (A000096 (n + 1)).toNat|

end

end A180804.P8445417091824722707

/-! ## A180804.P6124723158372757258

`A180813(A000096(n+1))+A008683(A001248(n+1))`
-/

namespace A180804.P6124723158372757258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A000096 (n + 1)).toNat + A008683 (A001248 (n + 1)).toNat

end

end A180804.P6124723158372757258

/-!
# A180805: Number of distinct solutions of sum{i=1..3}(x(2i-1)*x(2i)) = 1 (mod n), with x() in 0..n-1.

The programs for A180805, there is no canonical definition to state claims against.
-/

/-! ## A180805.P14039097760071742623

`A180813(∑[n+3]+1)`
-/

namespace A180805.P14039097760071742623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A180805.P14039097760071742623

/-! ## A180805.P5584049478356288212

`A180813(A034856(n+2))+n%-1`
-/

namespace A180805.P5584049478356288212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A034856 (n + 2)).toNat + Int.tmod (n : ℤ) (-1)

end

end A180805.P5584049478356288212

/-! ## A180805.P1362138597345249100

`A180813(A034856(n+2))%A001844(n)²`
-/

namespace A180805.P1362138597345249100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180813 (A034856 (n + 2)).toNat) (A001844 n ^ 2)

end

end A180805.P1362138597345249100

/-! ## A180805.P4712522261175695499

`(A000007(n)+1)*A180813(A034856(n+2))`
-/

namespace A180805.P4712522261175695499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * A180813 (A034856 (n + 2)).toNat

end

end A180805.P4712522261175695499

/-! ## A180805.P10451914713331900612

`n/A028310(n)*A180813(A034856(n+2))`
-/

namespace A180805.P10451914713331900612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A028310 n : ℚ) * (A180813 (A034856 (n + 2)).toNat : ℚ)

end

end A180805.P10451914713331900612

/-! ## A180805.P12733937477649164758

`A008836(n+1)²*A180813(A034856(n+2))`
-/

namespace A180805.P12733937477649164758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * A180813 (A034856 (n + 2)).toNat

end

end A180805.P12733937477649164758

/-! ## A180805.P3664309976584475750

`A014963(10*(n+1))*A180813(A034856(n+2))`
-/

namespace A180805.P3664309976584475750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A180813 (A034856 (n + 2)).toNat

end

end A180805.P3664309976584475750

/-! ## A180805.P17842319873929348329

`A034961(n+1)%2*A180813(A034856(n+2))`
-/

namespace A180805.P17842319873929348329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034961 (n + 1)) 2 * A180813 (A034856 (n + 2)).toNat

end

end A180805.P17842319873929348329

/-! ## A180805.P9833566158348022238

`A180813(A034856(n+2))-A020639(2*(n+1))+2`
-/

namespace A180805.P9833566158348022238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A034856 (n + 2)).toNat - A020639 (2 * (n + 1)) + 2

end

end A180805.P9833566158348022238

/-!
# A180806: Number of distinct solutions of sum{i=1..4}(x(2i-1)*x(2i)) = 1 (mod n), with x() in 0..n-1.

The programs for A180806, there is no canonical definition to state claims against.
-/

/-! ## A180806.P574377953024738416

`A180813(A055998(n+2))`
-/

namespace A180806.P574377953024738416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A055998 (n + 2)).toNat

end

end A180806.P574377953024738416

/-! ## A180806.P12964330207222313250

`A180813(A155212(n)+5)`
-/

namespace A180806.P12964330207222313250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A155212 n + 5).toNat

end

end A180806.P12964330207222313250

/-! ## A180806.P3655194876757308363

`A180813(A056000(n)+7)`
-/

namespace A180806.P3655194876757308363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A056000 n + 7).toNat

end

end A180806.P3655194876757308363

/-! ## A180806.P13267421225388178576

`A180813(Δ[A006416(n+2)])`
-/

namespace A180806.P13267421225388178576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (f1 (n + 1) - f1 n).toNat

end

end A180806.P13267421225388178576

/-! ## A180806.P12690264484092071137

`A180813(A052905(n+1)+2)`
-/

namespace A180806.P12690264484092071137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A052905 (n + 1) + 2).toNat

end

end A180806.P12690264484092071137

/-! ## A180806.P15704298611521710760

`A180813(A167499(n)+A016777(n))`
-/

namespace A180806.P15704298611521710760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A167499 n + A016777 n).toNat

end

end A180806.P15704298611521710760

/-! ## A180806.P16737856543877641872

`A180813(A167614(n+1)+A005408(n))`
-/

namespace A180806.P16737856543877641872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A167614 (n + 1) + A005408 n).toNat

end

end A180806.P16737856543877641872

/-!
# A180807: Number of distinct solutions of sum{i=1..5}(x(2i-1)*x(2i)) = 1 (mod n), with x() in 0..n-1.

The programs for A180807, there is no canonical definition to state claims against.
-/

/-! ## A180807.P5305288851680767327

`A180813(∑[n+5]+6)`
-/

namespace A180807.P5305288851680767327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A180807.P5305288851680767327

/-! ## A180807.P1336523375063611873

`gcd(n, n+1)*A180813(Δ[A023545(n+1)])`
-/

namespace A180807.P1336523375063611873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A180813 (f1 (n + 1) - f1 n).toNat

end

end A180807.P1336523375063611873

/-! ## A180807.P1692512683038909055

`A057427(n)*A180813(Δ[A023545(n+1)])`
-/

namespace A180807.P1692512683038909055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A180813 (f1 (n + 1) - f1 n).toNat

end

end A180807.P1692512683038909055

/-! ## A180807.P10913665907914603221

`A180813(Δ[A023545(n+1)])%A016162(n)`
-/

namespace A180807.P10913665907914603221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180813 (f1 (n + 1) - f1 n).toNat) (A016162 n)

end

end A180807.P10913665907914603221

/-! ## A180807.P16480094846339583325

`A180813(Δ[A023545(n+1)])+A000038(n+1)`
-/

namespace A180807.P16480094846339583325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (f1 (n + 1) - f1 n).toNat + A000038 (n + 1)

end

end A180807.P16480094846339583325

/-! ## A180807.P139131340830099491

`A033999(2*n)*A180813(Δ[A023545(n+1)])`
-/

namespace A180807.P139131340830099491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A180813 (f1 (n + 1) - f1 n).toNat

end

end A180807.P139131340830099491

/-! ## A180807.P17099999435002720092

`A056753(2*n)*A180813(Δ[A023545(n+1)])`
-/

namespace A180807.P17099999435002720092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056753 (2 * n) * A180813 (f1 (n + 1) - f1 n).toNat

end

end A180807.P17099999435002720092

/-! ## A180807.P597773155405762674

`A007423((n+1)²)*A180813(Δ[A023545(n+1)])`
-/

namespace A180807.P597773155405762674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 ((n + 1) ^ 2) * A180813 (f1 (n + 1) - f1 n).toNat

end

end A180807.P597773155405762674

/-! ## A180807.P7239967072013689586

`A034947(n+1)²*A180813(Δ[A023545(n+1)])`
-/

namespace A180807.P7239967072013689586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) ^ 2 * A180813 (f1 (n + 1) - f1 n).toNat

end

end A180807.P7239967072013689586

/-!
# A180808: Number of distinct solutions of sum{i=1..6}(x(2i-1)*x(2i)) = 1 (mod n), with x() in 0..n-1.

The programs for A180808, there is no canonical definition to state claims against.
-/

/-! ## A180808.P684473742131121178

`A180813(∑[n+6]+10)`
-/

namespace A180808.P684473742131121178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A180808.P684473742131121178

/-! ## A180808.P17712830129658201503

`A180813(A056119(n)+16)%((n+1)^10)`
-/

namespace A180808.P17712830129658201503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180813 (A056119 n + 16).toNat) ((n + 1) ^ 10 : ℤ)

end

end A180808.P17712830129658201503

/-! ## A180808.P14332927561923719130

`A180813(A056119(n)+16)+char[A001567(n+1)]`
-/

namespace A180808.P14332927561923719130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A056119 n + 16).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A180808.P14332927561923719130

/-! ## A180808.P7939924849981147188

`char[A003963(n+1)]*A180813(A056119(n)+16)`
-/

namespace A180808.P7939924849981147188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A180813 (A056119 n + 16).toNat

end

end A180808.P7939924849981147188

/-! ## A180808.P4240500589744689120

`char[A004736(n+1)]*A180813(A056119(n)+16)`
-/

namespace A180808.P4240500589744689120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A180813 (A056119 n + 16).toNat

end

end A180808.P4240500589744689120

/-! ## A180808.P15311948167736566385

`A182936(A000040(n+1))+A180813(A056119(n)+16)`
-/

namespace A180808.P15311948167736566385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182936 (A000040 (n + 1)).toNat + A180813 (A056119 n + 16).toNat

end

end A180808.P15311948167736566385

/-!
# A180809: Number of distinct solutions of sum{i=1..7}(x(2i-1)*x(2i)) = 1 (mod n), with x() in 0..n-1.

The programs for A180809, there is no canonical definition to state claims against.
-/

/-! ## A180809.P12473351374769306649

`A180813(A055999(n+4))`
-/

namespace A180809.P12473351374769306649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A055999 (n + 4)).toNat

end

end A180809.P12473351374769306649

/-! ## A180809.P16200061094083412801

`A180813(A052905(n+4)-1)`
-/

namespace A180809.P16200061094083412801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A052905 (n + 4) - 1).toNat

end

end A180809.P16200061094083412801

/-! ## A180809.P8092797138037964460

`A180813(A000124(n+7)-7)`
-/

namespace A180809.P8092797138037964460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A000124 (n + 7) - 7).toNat

end

end A180809.P8092797138037964460

/-! ## A180809.P2863934368384927624

`A180813(A000096(n+5)+n+2)`
-/

namespace A180809.P2863934368384927624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A180809.P2863934368384927624

/-! ## A180809.P8976306370815723680

`A180813(A000217(n+6)+n+1)`
-/

namespace A180809.P8976306370815723680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A180809.P8976306370815723680

/-! ## A180809.P9673335620551845173

`A180813(A133263(n+6)+n-1)`
-/

namespace A180809.P9673335620551845173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A133263 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A180809.P9673335620551845173

/-! ## A180809.P5851180437447444058

`A180813(A161680(n+7)+n+1)`
-/

namespace A180809.P5851180437447444058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A161680 (n + 7) + (n + 1 : ℤ)).toNat

end

end A180809.P5851180437447444058

/-! ## A180809.P16910738105334909720

`A180813(Δ[Δ[A055832(n+5)]]+1)`
-/

namespace A180809.P16910738105334909720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055832 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (f1 (n + 1) - f1 n + 1).toNat

end

end A180809.P16910738105334909720

/-! ## A180809.P16558503088324239215

`A180813(Δ[n²]+A000124(n+5)+5)`
-/

namespace A180809.P16558503088324239215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A000124 (n + 5) + 5)).toNat

end

end A180809.P16558503088324239215

/-!
# A180810: Number of distinct solutions of sum{i=1..8}(x(2i-1)*x(2i)) = 1 (mod n), with x() in 0..n-1.

The programs for A180810, there is no canonical definition to state claims against.
-/

/-! ## A180810.P11321630260630418454

`A180813(A000217(n+8)-7)`
-/

namespace A180810.P11321630260630418454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A000217 (n + 8) - 7).toNat

end

end A180810.P11321630260630418454

/-! ## A180810.P10964272143963815062

`A180813(A000124(n+8)-8)`
-/

namespace A180810.P10964272143963815062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A000124 (n + 8) - 8).toNat

end

end A180810.P10964272143963815062

/-! ## A180810.P14513895654612130542

`A180813(Δ[Δ[A055832(n+6)]])`
-/

namespace A180810.P14513895654612130542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055832 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (f1 (n + 1) - f1 n).toNat

end

end A180810.P14513895654612130542

/-! ## A180810.P2896697194424450410

`A180813(A052905(n+6)-(n+11))`
-/

namespace A180810.P2896697194424450410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A052905 (n + 6) - (n + 11 : ℤ)).toNat

end

end A180810.P2896697194424450410

/-! ## A180810.P621645496585831588

`A180813(A167499(n+5)+A004273(n+2))`
-/

namespace A180810.P621645496585831588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A167499 (n + 5) + A004273 (n + 2)).toNat

end

end A180810.P621645496585831588

/-! ## A180810.P1617043801233444800

`A180813(A034856(n+6)-A001489(n+3))`
-/

namespace A180810.P1617043801233444800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A034856 (n + 6) - A001489 (n + 3)).toNat

end

end A180810.P1617043801233444800

/-!
# A180811: Number of distinct solutions of sum{i=1..9}(x(2i-1)*x(2i)) = 1 (mod n), with x() in 0..n-1.

The programs for A180811, there is no canonical definition to state claims against.
-/

/-! ## A180811.P10282215293261115618

`A180813(A155212(n+5))`
-/

namespace A180811.P10282215293261115618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A155212 (n + 5)).toNat

end

end A180811.P10282215293261115618

/-! ## A180811.P9617019006206056581

`A180813(A000217(n+9)-8)`
-/

namespace A180811.P9617019006206056581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A000217 (n + 9) - 8).toNat

end

end A180811.P9617019006206056581

/-! ## A180811.P168599515041925881

`A180813(A000124(n+9)-9)`
-/

namespace A180811.P168599515041925881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A000124 (n + 9) - 9).toNat

end

end A180811.P168599515041925881

/-! ## A180811.P15175598512822168426

`A180813(A052905(n+7)-(n+13))`
-/

namespace A180811.P15175598512822168426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A052905 (n + 7) - (n + 13 : ℤ)).toNat

end

end A180811.P15175598512822168426

/-! ## A180811.P16047775288800829927

`A180813(A167487(n+6)+A005408(n)+1)`
-/

namespace A180811.P16047775288800829927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A167487 (n + 6) + A005408 n + 1).toNat

end

end A180811.P16047775288800829927

/-!
# A180812: Number of distinct solutions of sum{i=1..10}(x(2i-1)*x(2i)) = 1 (mod n), with x() in 0..n-1.

The programs for A180812, there is no canonical definition to state claims against.
-/

/-! ## A180812.P15079925416292811391

`A180813(A000124(n+10)-10)`
-/

namespace A180812.P15079925416292811391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A000124 (n + 10) - 10).toNat

end

end A180812.P15079925416292811391

/-! ## A180812.P1484906544157153922

`A180813(A167614(n+9)-12)`
-/

namespace A180812.P1484906544157153922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A167614 (n + 9) - 12).toNat

end

end A180812.P1484906544157153922

/-! ## A180812.P7848762811114970446

`A180813(A167499(n+7)+A004273(n+3))`
-/

namespace A180812.P7848762811114970446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A167499 (n + 7) + A004273 (n + 3)).toNat

end

end A180812.P7848762811114970446

/-! ## A180812.P14396698587613561821

`A180813(A034856(n+8)-A001489(n+3))`
-/

namespace A180812.P14396698587613561821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A034856 (n + 8) - A001489 (n + 3)).toNat

end

end A180812.P14396698587613561821

/-! ## A180812.P5710600857388325168

`A180813(A167499(n+15)-A016969(n+15))`
-/

namespace A180812.P5710600857388325168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180813 (A167499 (n + 15) - A016969 (n + 15)).toNat

end

end A180812.P5710600857388325168

/-!
# A180813: T(n,k)=number of distinct solutions of sum{i=1..k}(x(2i-1)*x(2i)) = 1 (mod n), with x() in 0..n-1.

The programs for A180813, there is no canonical definition to state claims against.
-/

/-! ## A180813.P5711089493996520154

`A035607(n)-A327785(A019320(n))`
-/

namespace A180813.P5711089493996520154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 n - A327785 (A019320 n).toNat

end

end A180813.P5711089493996520154

/-! ## A180813.P8047947429130178675

`A028391(A200057(n+1)^A046620(n+1))`
-/

namespace A180813.P8047947429130178675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (SequenceMachineLib.roundAway ((A200057 (n + 1) : ℚ) ^ (A046620 (n + 1) : ℤ))).toNat

end

end A180813.P8047947429130178675

/-! ## A180813.P13533787778178738961

`A028391(C(A200057(n+1), A046620(n+1)))`
-/

namespace A180813.P13533787778178738961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (Nat.choose (A200057 (n + 1)).toNat (A046620 (n + 1)).toNat)

end

end A180813.P13533787778178738961

/-! ## A180813.P11483452938959127488

`A028391(A046620(n+1)!*A200057(n+1))`
-/

namespace A180813.P11483452938959127488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 ((Nat.factorial (A046620 (n + 1)).toNat : ℤ) * A200057 (n + 1)).toNat

end

end A180813.P11483452938959127488

/-! ## A180813.P13592492190578494403

`A028391(A046620(n+1)²²*A200057(n+1))`
-/

namespace A180813.P13592492190578494403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 ((A046620 (n + 1) ^ 2) ^ 2 * A200057 (n + 1)).toNat

end

end A180813.P13592492190578494403

/-!
# A180814: Number of distinct solutions of Sum_{i=1..2}(x(2i-1)*x(2i)) = 0 (mod n), with x() only in 2..n-2.

The programs for A180814, there is no canonical definition to state claims against.
-/

/-! ## A180814.P2682259907660629826

`A180823(∑[n+2])`
-/

namespace A180814.P2682259907660629826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180814.P2682259907660629826

/-! ## A180814.P112576858676837942

`or(char[3], A180823(A000096(n+1)))`
-/

namespace A180814.P112576858676837942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A180823 (A000096 (n + 1)).toNat)

end

end A180814.P112576858676837942

/-! ## A180814.P11210166928400643542

`A180823(A000096(n+1))%A017198(n)`
-/

namespace A180814.P11210166928400643542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180823 (A000096 (n + 1)).toNat) (A017198 n)

end

end A180814.P11210166928400643542

/-! ## A180814.P15449028454636618247

`char[A333811(n)]*A180823(A000096(n+1))`
-/

namespace A180814.P15449028454636618247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333811 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A180823 (A000096 (n + 1)).toNat

end

end A180814.P15449028454636618247

/-! ## A180814.P15529429678018763995

`A081297(A000120(n))*A180823(A000096(n+1))`
-/

namespace A180814.P15529429678018763995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081297 (A000120 n).toNat * A180823 (A000096 (n + 1)).toNat

end

end A180814.P15529429678018763995

/-! ## A180814.P9209243152263163524

`A081297(A053735(n))*A180823(A000096(n+1))`
-/

namespace A180814.P9209243152263163524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081297 (A053735 n).toNat * A180823 (A000096 (n + 1)).toNat

end

end A180814.P9209243152263163524

/-! ## A180814.P4773360133806461157

`A187946(A187949(n+1))+A180823(A000096(n+1))`
-/

namespace A180814.P4773360133806461157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187946 (A187949 (n + 1)).toNat + A180823 (A000096 (n + 1)).toNat

end

end A180814.P4773360133806461157

/-! ## A180814.P17448871778434569377

`A180823(A000096(n+1))+A008683(A017089(n)+2)`
-/

namespace A180814.P17448871778434569377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A000096 (n + 1)).toNat + A008683 (A017089 n + 2).toNat

end

end A180814.P17448871778434569377

/-! ## A180814.P2309338791211590617

`A008683(A100484(n+1))*A180823(A000096(n+1))`
-/

namespace A180814.P2309338791211590617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A100484 (n + 1)).toNat * A180823 (A000096 (n + 1)).toNat

end

end A180814.P2309338791211590617

/-! ## A180814.P10349582390682873624

`A008683(A187918(n+3))*A180823(A000096(n+1))`
-/

namespace A180814.P10349582390682873624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A187918 (n + 3)).toNat * A180823 (A000096 (n + 1)).toNat

end

end A180814.P10349582390682873624

/-!
# A180815: Number of distinct solutions of sum{i=1..3}(x(2i-1)*x(2i)) = 0 (mod n), with x() only in 2..n-2.

The programs for A180815, there is no canonical definition to state claims against.
-/

/-! ## A180815.P8678242455318167254

`A180823(∑[n+3]+1)`
-/

namespace A180815.P8678242455318167254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A180815.P8678242455318167254

/-! ## A180815.P11154648975822397451

`floor(atan(n))*A180823(A034856(n+2))`
-/

namespace A180815.P11154648975822397451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ)⌋ * A180823 (A034856 (n + 2)).toNat

end

end A180815.P11154648975822397451

/-! ## A180815.P7398756290245841292

`A180823(A034856(n+2))%A006012(n)`
-/

namespace A180815.P7398756290245841292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180823 (A034856 (n + 2)).toNat) (A006012 n)

end

end A180815.P7398756290245841292

/-! ## A180815.P1669361996788660286

`A180823(A052905(n)+3)%A003418(n)`
-/

namespace A180815.P1669361996788660286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180823 (A052905 n + 3).toNat) (A003418 n)

end

end A180815.P1669361996788660286

/-! ## A180815.P5247338071192099769

`and(A000225(n), A180823(A052905(n)+3))`
-/

namespace A180815.P5247338071192099769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A180823 (A052905 n + 3).toNat)

end

end A180815.P5247338071192099769

/-! ## A180815.P18054006718343878855

`char[A007318(n)]*A180823(A052905(n)+3)`
-/

namespace A180815.P18054006718343878855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A180823 (A052905 n + 3).toNat

end

end A180815.P18054006718343878855

/-! ## A180815.P13358152073407094367

`char[A096133(n+1)]*A180823(A052905(n)+3)`
-/

namespace A180815.P13358152073407094367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096133 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A180823 (A052905 n + 3).toNat

end

end A180815.P13358152073407094367

/-! ## A180815.P10567159720593834280

`A180823(A052905(n)+3)+A121262(2*n+1)`
-/

namespace A180815.P10567159720593834280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A052905 n + 3).toNat + A121262 (2 * n + 1)

end

end A180815.P10567159720593834280

/-! ## A180815.P1440218138154782247

`A000203(gcd(n, n+1))*A180823(A052905(n)+3)`
-/

namespace A180815.P1440218138154782247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.gcd n (n + 1)) * A180823 (A052905 n + 3).toNat

end

end A180815.P1440218138154782247

/-!
# A180816: Number of distinct solutions of sum{i=1..4}(x(2i-1)*x(2i)) = 0 (mod n), with x() only in 2..n-2.

The programs for A180816, there is no canonical definition to state claims against.
-/

/-! ## A180816.P3949494235196247836

`A180823(∑[n+4]+3)`
-/

namespace A180816.P3949494235196247836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A180816.P3949494235196247836

/-! ## A180816.P9784761254976177514

`A158388(n)*A180823(A027379(n+2))`
-/

namespace A180816.P9784761254976177514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n * A180823 (A027379 (n + 2)).toNat

end

end A180816.P9784761254976177514

/-! ## A180816.P13759030930508965632

`A180823(A055998(n+2))%A200222(n)`
-/

namespace A180816.P13759030930508965632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180823 (A055998 (n + 2)).toNat) (A200222 n)

end

end A180816.P13759030930508965632

/-! ## A180816.P15170430624490460395

`A180823(A027379(n+2))%A266810(n)`
-/

namespace A180816.P15170430624490460395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180823 (A027379 (n + 2)).toNat) (A266810 n)

end

end A180816.P15170430624490460395

/-! ## A180816.P5588642306286926948

`(A262678(n²)+1)*A180823(A027379(n+2))`
-/

namespace A180816.P5588642306286926948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A262678 (n ^ 2) + 1) * A180823 (A027379 (n + 2)).toNat

end

end A180816.P5588642306286926948

/-! ## A180816.P12662877844622106354

`(2-A054977(n))*A180823(Δ[A006416(n+2)])`
-/

namespace A180816.P12662877844622106354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A054977 n) * A180823 (f1 (n + 1) - f1 n).toNat

end

end A180816.P12662877844622106354

/-! ## A180816.P10576744519964938617

`A180823(A167614(n+1)+A005408(n))%A277538(n)`
-/

namespace A180816.P10576744519964938617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180823 (A167614 (n + 1) + A005408 n).toNat) (A277538 n)

end

end A180816.P10576744519964938617

/-!
# A180817: Number of distinct solutions of sum{i=1..5}(x(2i-1)*x(2i)) = 0 (mod n), with x() only in 2..n-2.

The programs for A180817, there is no canonical definition to state claims against.
-/

/-! ## A180817.P16660971267115574128

`A180823(∑[n+5]+6)`
-/

namespace A180817.P16660971267115574128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A180817.P16660971267115574128

/-! ## A180817.P2537664317621680834

`A180823(Δ[A023545(n+1)])%A000302(n)`
-/

namespace A180817.P2537664317621680834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180823 (f1 (n + 1) - f1 n).toNat) (A000302 n)

end

end A180817.P2537664317621680834

/-! ## A180817.P842121750144469784

`A180823(A052905(n+2)+1)%A003014(n)`
-/

namespace A180817.P842121750144469784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180823 (A052905 (n + 2) + 1).toNat) (A003014 n)

end

end A180817.P842121750144469784

/-! ## A180817.P17688325676032877413

`A093178(2*n)*A180823(Δ[A023545(n+1)])`
-/

namespace A180817.P17688325676032877413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (2 * n) * A180823 (f1 (n + 1) - f1 n).toNat

end

end A180817.P17688325676032877413

/-! ## A180817.P12448440134340993665

`A087960(A008586(n))*A180823(A052905(n+2)+1)`
-/

namespace A180817.P12448440134340993665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A008586 n).toNat * A180823 (A052905 (n + 2) + 1).toNat

end

end A180817.P12448440134340993665

/-! ## A180817.P10437868296214659175

`(2-A054977(n))*A180823(A167487(n)+A016825(n)+1)`
-/

namespace A180817.P10437868296214659175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A054977 n) * A180823 (A167487 n + A016825 n + 1).toNat

end

end A180817.P10437868296214659175

/-!
# A180818: Number of distinct solutions of Sum_{i=1..6}(x(2i-1)*x(2i)) = 0 (mod n), with x() only in 2..n-2.

The programs for A180818, there is no canonical definition to state claims against.
-/

/-! ## A180818.P16274294707977786583

`A180823(A052905(n+3))`
-/

namespace A180818.P16274294707977786583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A052905 (n + 3)).toNat

end

end A180818.P16274294707977786583

/-! ## A180818.P18079496494371300182

`A180823(A046691(n+4)-1)`
-/

namespace A180818.P18079496494371300182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A046691 (n + 4) - 1).toNat

end

end A180818.P18079496494371300182

/-! ## A180818.P1793449580768762836

`A180823(A000217(n+6)-5)`
-/

namespace A180818.P1793449580768762836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A000217 (n + 6) - 5).toNat

end

end A180818.P1793449580768762836

/-! ## A180818.P1807870795829971589

`A180823(A000124(n+6)-6)`
-/

namespace A180818.P1807870795829971589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A000124 (n + 6) - 6).toNat

end

end A180818.P1807870795829971589

/-! ## A180818.P8017702208205748185

`A180823(Δ[Δ[A006504(n+1)]])`
-/

namespace A180818.P8017702208205748185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (f1 (n + 1) - f1 n).toNat

end

end A180818.P8017702208205748185

/-! ## A180818.P8158730216110681441

`A180823(Δ[A023551(n+1)]+1)`
-/

namespace A180818.P8158730216110681441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (f1 (n + 1) - f1 n + 1).toNat

end

end A180818.P8158730216110681441

/-! ## A180818.P3187890563873556015

`A180823(Δ[A023545(n+2)]-1)`
-/

namespace A180818.P3187890563873556015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (f1 (n + 1) - f1 n - 1).toNat

end

end A180818.P3187890563873556015

/-! ## A180818.P10581027656367395287

`A180823(A167487(n+1)+A016825(n+1))`
-/

namespace A180818.P10581027656367395287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A167487 (n + 1) + A016825 (n + 1)).toNat

end

end A180818.P10581027656367395287

/-! ## A180818.P14586007212381139382

`A180823(A152950(n+1)+A020742(3*(n+1)))`
-/

namespace A180818.P14586007212381139382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A152950 (n + 1) + A020742 (3 * (n + 1))).toNat

end

end A180818.P14586007212381139382

/-!
# A180819: Number of distinct solutions of sum{i=1..7}(x(2i-1)*x(2i)) = 0 (mod n), with x() only in 2..n-2.

The programs for A180819, there is no canonical definition to state claims against.
-/

/-! ## A180819.P3278811907827440784

`A180823(A055999(n+4))`
-/

namespace A180819.P3278811907827440784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A055999 (n + 4)).toNat

end

end A180819.P3278811907827440784

/-! ## A180819.P8083376168960276052

`A180823(Δ[A023551(n+2)])`
-/

namespace A180819.P8083376168960276052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (f1 (n + 1) - f1 n).toNat

end

end A180819.P8083376168960276052

/-! ## A180819.P8949557951357853336

`A180823(A155212(n+3)+2)`
-/

namespace A180819.P8949557951357853336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A155212 (n + 3) + 2).toNat

end

end A180819.P8949557951357853336

/-! ## A180819.P3604684717508332136

`A180823(A052905(n+4)-1)`
-/

namespace A180819.P3604684717508332136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A052905 (n + 4) - 1).toNat

end

end A180819.P3604684717508332136

/-! ## A180819.P5859017109545490437

`A180823(A046691(n+5)-2)`
-/

namespace A180819.P5859017109545490437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A046691 (n + 5) - 2).toNat

end

end A180819.P5859017109545490437

/-! ## A180819.P7735740000153474194

`A180823(A000124(n+7)-7)`
-/

namespace A180819.P7735740000153474194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A000124 (n + 7) - 7).toNat

end

end A180819.P7735740000153474194

/-!
# A180820: Number of distinct solutions of sum{i=1..8}(x(2i-1)*x(2i)) = 0 (mod n), with x() only in 2..n-2.

The programs for A180820, there is no canonical definition to state claims against.
-/

/-! ## A180820.P18201964230582780261

`A180823(A155212(n+4)+1)`
-/

namespace A180820.P18201964230582780261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A155212 (n + 4) + 1).toNat

end

end A180820.P18201964230582780261

/-! ## A180820.P6239370510098630842

`A180823(A046691(n+6)-3)`
-/

namespace A180820.P6239370510098630842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A046691 (n + 6) - 3).toNat

end

end A180820.P6239370510098630842

/-! ## A180820.P5032993393158586503

`A180823(A000124(n+8)-8)`
-/

namespace A180820.P5032993393158586503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A000124 (n + 8) - 8).toNat

end

end A180820.P5032993393158586503

/-! ## A180820.P12873582011757568293

`A180823(A167614(n+3)+4*(n+4))`
-/

namespace A180820.P12873582011757568293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A167614 (n + 3) + (4 * (n + 4) : ℤ)).toNat

end

end A180820.P12873582011757568293

/-! ## A180820.P2505891889951858190

`A180823(A000217(n+7)-A001489(n+1))`
-/

namespace A180820.P2505891889951858190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A000217 (n + 7) - A001489 (n + 1)).toNat

end

end A180820.P2505891889951858190

/-! ## A180820.P13552579071854723745

`A180823(A253145(n+5)+A005843(n+4))`
-/

namespace A180820.P13552579071854723745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A253145 (n + 5) + A005843 (n + 4)).toNat

end

end A180820.P13552579071854723745

/-!
# A180821: Number of distinct solutions of sum{i=1..9}(x(2i-1)*x(2i)) = 0 (mod n), with x() only in 2..n-2.

The programs for A180821, there is no canonical definition to state claims against.
-/

/-! ## A180821.P14170325557120697564

`A180823(A155212(n+5))`
-/

namespace A180821.P14170325557120697564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A155212 (n + 5)).toNat

end

end A180821.P14170325557120697564

/-! ## A180821.P5479840872210573039

`A180823(A000124(n+9)-9)`
-/

namespace A180821.P5479840872210573039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A000124 (n + 9) - 9).toNat

end

end A180821.P5479840872210573039

/-! ## A180821.P3092665322205567870

`A180823(A167614(n+6)+A005843(n+3))`
-/

namespace A180821.P3092665322205567870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A167614 (n + 6) + A005843 (n + 3)).toNat

end

end A180821.P3092665322205567870

/-! ## A180821.P9359733478625354774

`A180823(A000217(n+8)-A001489(n+1))`
-/

namespace A180821.P9359733478625354774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A000217 (n + 8) - A001489 (n + 1)).toNat

end

end A180821.P9359733478625354774

/-! ## A180821.P2960243355830263109

`A180823(A016825(n+5)+A000217(n+5))`
-/

namespace A180821.P2960243355830263109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A016825 (n + 5) + A000217 (n + 5)).toNat

end

end A180821.P2960243355830263109

/-!
# A180822: Number of distinct solutions of sum{i=1..10}(x(2i-1)*x(2i)) = 0 (mod n), with x() only in 2..n-2.

The programs for A180822, there is no canonical definition to state claims against.
-/

/-! ## A180822.P8803111716581913960

`A180823(A155212(n+6)-1)`
-/

namespace A180822.P8803111716581913960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A155212 (n + 6) - 1).toNat

end

end A180822.P8803111716581913960

/-! ## A180822.P8451638074392198627

`A180823(A000096(n+9)-8)`
-/

namespace A180822.P8451638074392198627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A000096 (n + 9) - 8).toNat

end

end A180822.P8451638074392198627

/-! ## A180822.P6739355490113816553

`A180823(A253145(n+9)-9)`
-/

namespace A180822.P6739355490113816553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A253145 (n + 9) - 9).toNat

end

end A180822.P6739355490113816553

/-! ## A180822.P18277597694700532435

`A180823(A000124(n+10)-10)`
-/

namespace A180822.P18277597694700532435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A000124 (n + 10) - 10).toNat

end

end A180822.P18277597694700532435

/-! ## A180822.P15991746420321757641

`A180823(A241848(n+6)-A167487(n))`
-/

namespace A180822.P15991746420321757641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (A241848 (n + 6) - A167487 n).toNat

end

end A180822.P15991746420321757641

/-!
# A180823: T(n,k)=number of distinct solutions of sum{i=1..k}(x(2i-1)*x(2i)) = 0 (mod n), with x() only in 2..n-2.

The programs for A180823, there is no canonical definition to state claims against.
-/

/-! ## A180823.P15851967481989337046

`A212618(A327722(n))`
-/

namespace A180823.P15851967481989337046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212618 (A327722 n).toNat

end

end A180823.P15851967481989337046

/-! ## A180823.P1676453672107253838

`A267333(A274859(n))%3`
-/

namespace A180823.P1676453672107253838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267333 (A274859 n).toNat) 3

end

end A180823.P1676453672107253838

/-! ## A180823.P11599777721785179088

`A083919(A126168(n+1)+A121426(n))`
-/

namespace A180823.P11599777721785179088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083919 (A126168 (n + 1) + A121426 n).toNat

end

end A180823.P11599777721785179088

/-! ## A180823.P17982922527312038818

`A039941(and(A002262(n), A125841(n+4)))`
-/

namespace A180823.P17982922527312038818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039941 (Int.land (A002262 n) (A125841 (n + 4))).toNat

end

end A180823.P17982922527312038818

/-! ## A180823.P223267847348514858

`A004524(A002262(n)%A195152(3*n+1))`
-/

namespace A180823.P223267847348514858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.tmod (A002262 n) (A195152 (3 * n + 1))).toNat

end

end A180823.P223267847348514858

/-!
# A180824: Number of distinct solutions of Sum_{i=1..1} x(2i-1)*x(2i) = 1 (mod n), with x() only in 2..n-2.

The programs for A180824, the canonical program `A180824.P4915511822982714582` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180824 has offset 1).

The definition of A180824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180824.P4915511822982714582

`(A180783(n+1)-2)%A108411(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A180824

/-- `(A180783(n+1)-2)%A108411(n)` -/
def P4915511822982714582.Spec : Prop :=
  ∀ n, P4915511822982714582.a n = A180824 (n + 1)

theorem P4915511822982714582.correct : P4915511822982714582.Spec := by
  intro n
  simp only [A180824, Nat.add_sub_cancel]

end A180824

/-! ## A180824.P10150991853652330016

`A025581(A000124(A028242(n))-A180783(n+1))`
-/

namespace A180824.P10150991853652330016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A000124 (A028242 n).toNat - A180783 (n + 1)).toNat

end

end A180824.P10150991853652330016

namespace A180824

/-- `A025581(A000124(A028242(n))-A180783(n+1))` -/
def P10150991853652330016.Spec : Prop :=
  ∀ n, P10150991853652330016.a n = A180824 (n + 1)

end A180824

/-! ## A180824.P1192825048030508711

`A180783(n+1)-A107286(A151896(n))`
-/

namespace A180824.P1192825048030508711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180783 (n + 1) - A107286 (A151896 n).toNat

end

end A180824.P1192825048030508711

namespace A180824

/-- `A180783(n+1)-A107286(A151896(n))` -/
def P1192825048030508711.Spec : Prop :=
  ∀ n, P1192825048030508711.a n = A180824 (n + 1)

end A180824

/-! ## A180824.P17814435944524980144

`A180783(n+1)-A053616(A034856(n+1))`
-/

namespace A180824.P17814435944524980144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180783 (n + 1) - A053616 (A034856 (n + 1)).toNat

end

end A180824.P17814435944524980144

namespace A180824

/-- `A180783(n+1)-A053616(A034856(n+1))` -/
def P17814435944524980144.Spec : Prop :=
  ∀ n, P17814435944524980144.a n = A180824 (n + 1)

end A180824

/-! ## A180824.P5725873588085872247

`A180783(n+1)-A130130(n²)`
-/

namespace A180824.P5725873588085872247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180783 (n + 1) - A130130 (n ^ 2)

end

end A180824.P5725873588085872247

namespace A180824

/-- `A180783(n+1)-A130130(n²)` -/
def P5725873588085872247.Spec : Prop :=
  ∀ n, P5725873588085872247.a n = A180824 (n + 1)

end A180824

/-! ## A180824.P7673133201629842514

`A180834(∑[n+1])`
-/

namespace A180824.P7673133201629842514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180824.P7673133201629842514

namespace A180824

/-- `A180834(∑[n+1])` -/
def P7673133201629842514.Spec : Prop :=
  ∀ n, P7673133201629842514.a n = A180824 (n + 1)

end A180824

/-!
# A180825: Number of distinct solutions of sum{i=1..2}(x(2i-1)*x(2i)) = 1 (mod n), with x() only in 2..n-2.

The programs for A180825, there is no canonical definition to state claims against.
-/

/-! ## A180825.P13978215803405141733

`A180834(∑[n+2])`
-/

namespace A180825.P13978215803405141733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180825.P13978215803405141733

/-! ## A180825.P10935541110649560249

`char[A004469(n)]*A180834(A000096(n+1))`
-/

namespace A180825.P10935541110649560249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004469 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A180834 (A000096 (n + 1)).toNat

end

end A180825.P10935541110649560249

/-! ## A180825.P13510021760975129134

`char[A091203(n)]*A180834(A000096(n+1))`
-/

namespace A180825.P13510021760975129134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A180834 (A000096 (n + 1)).toNat

end

end A180825.P13510021760975129134

/-! ## A180825.P12378489201514528646

`char[A130359(n)]*A180834(A000096(n+1))`
-/

namespace A180825.P12378489201514528646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130359 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A180834 (A000096 (n + 1)).toNat

end

end A180825.P12378489201514528646

/-! ## A180825.P15460106424434918725

`char[A038722(n+1)]*A180834(A000096(n+1))`
-/

namespace A180825.P15460106424434918725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A180834 (A000096 (n + 1)).toNat

end

end A180825.P15460106424434918725

/-! ## A180825.P1994521790522241821

`char[A056239(n+1)]*A180834(A000096(n+1))`
-/

namespace A180825.P1994521790522241821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A180834 (A000096 (n + 1)).toNat

end

end A180825.P1994521790522241821

/-!
# A180826: Number of distinct solutions of sum{i=1..3}(x(2i-1)*x(2i)) = 1 (mod n), with x() only in 2..n-2.

The programs for A180826, there is no canonical definition to state claims against.
-/

/-! ## A180826.P10254185744618490218

`A180834(∑[n+3]+1)`
-/

namespace A180826.P10254185744618490218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A180826.P10254185744618490218

/-! ## A180826.P10334105813546499087

`and(1-4/2, A180834(A055999(n)+4))`
-/

namespace A180826.P10334105813546499087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2)) (A180834 (A055999 n + 4).toNat)

end

end A180826.P10334105813546499087

/-! ## A180826.P16665085506366309501

`A180834(A052905(n)+3)%A003418(n)`
-/

namespace A180826.P16665085506366309501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180834 (A052905 n + 3).toNat) (A003418 n)

end

end A180826.P16665085506366309501

/-! ## A180826.P6212310642897518693

`A180834(A055999(n)+4)%A000079(n)`
-/

namespace A180826.P6212310642897518693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180834 (A055999 n + 4).toNat) (A000079 n)

end

end A180826.P6212310642897518693

/-! ## A180826.P744845365812660946

`A180834(A055999(n)+4)+A000007(n+1)`
-/

namespace A180826.P744845365812660946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A055999 n + 4).toNat + A000007 (n + 1)

end

end A180826.P744845365812660946

/-! ## A180826.P17515388733128243739

`A180834(A055999(n)+4)+A000035(2*n)`
-/

namespace A180826.P17515388733128243739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A055999 n + 4).toNat + A000035 (2 * n)

end

end A180826.P17515388733128243739

/-! ## A180826.P2636352290391400419

`A000034(2*n)*A180834(A052905(n)+3)`
-/

namespace A180826.P2636352290391400419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A180834 (A052905 n + 3).toNat

end

end A180826.P2636352290391400419

/-! ## A180826.P18332450924889721484

`A010121(2*n+1)*A180834(A034856(n+2))`
-/

namespace A180826.P18332450924889721484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 (2 * n + 1) * A180834 (A034856 (n + 2)).toNat

end

end A180826.P18332450924889721484

/-! ## A180826.P823434441831028678

`lcm(1-2*A000035(n), A180834(A034856(n+2)))`
-/

namespace A180826.P823434441831028678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - 2 * A000035 n) (A180834 (A034856 (n + 2)).toNat)

end

end A180826.P823434441831028678

/-! ## A180826.P2884204772739104776

`A014673(p?[2*n+1])*A180834(A034856(n+2))`
-/

namespace A180826.P2884204772739104776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) * A180834 (A034856 (n + 2)).toNat

end

end A180826.P2884204772739104776

/-!
# A180827: Number of distinct solutions of sum{i=1..4}(x(2i-1)*x(2i)) = 1 (mod n), with x() only in 2..n-2.

The programs for A180827, there is no canonical definition to state claims against.
-/

/-! ## A180827.P8191123999140570133

`A180834(∑[n+4]+3)`
-/

namespace A180827.P8191123999140570133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A180827.P8191123999140570133

/-! ## A180827.P15542111214288409344

`A180834(A027379(n+2))%A072256(n)`
-/

namespace A180827.P15542111214288409344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180834 (A027379 (n + 2)).toNat) (A072256 n)

end

end A180827.P15542111214288409344

/-! ## A180827.P5256241519694352762

`A057427(n)*A180834(A167499(n)+A016777(n))`
-/

namespace A180827.P5256241519694352762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A180834 (A167499 n + A016777 n).toNat

end

end A180827.P5256241519694352762

/-! ## A180827.P12149792627451633389

`A180834(A167499(n)+A016777(n))%A036550(n)`
-/

namespace A180827.P12149792627451633389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180834 (A167499 n + A016777 n).toNat) (A036550 n)

end

end A180827.P12149792627451633389

/-! ## A180827.P17479915916006758614

`A057979(2*n)*A180834(A167499(n)+A016777(n))`
-/

namespace A180827.P17479915916006758614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A180834 (A167499 n + A016777 n).toNat

end

end A180827.P17479915916006758614

/-!
# A180828: Number of distinct solutions of sum{i=1..5}(x(2i-1)*x(2i)) = 1 (mod n), with x() only in 2..n-2.

The programs for A180828, there is no canonical definition to state claims against.
-/

/-! ## A180828.P4342503856583132522

`A180834(A046691(n+3))`
-/

namespace A180828.P4342503856583132522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A046691 (n + 3)).toNat

end

end A180828.P4342503856583132522

/-! ## A180828.P2043753407961739511

`A180834(Δ[A023545(n+1)])`
-/

namespace A180828.P2043753407961739511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (f1 (n + 1) - f1 n).toNat

end

end A180828.P2043753407961739511

/-! ## A180828.P8955255631520142560

`A180834(A000096(n+4)-3)`
-/

namespace A180828.P8955255631520142560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A000096 (n + 4) - 3).toNat

end

end A180828.P8955255631520142560

/-! ## A180828.P12986639915387550891

`A180834(A000217(n+5)-4)`
-/

namespace A180828.P12986639915387550891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A000217 (n + 5) - 4).toNat

end

end A180828.P12986639915387550891

/-! ## A180828.P5512014966145332980

`A180834(A027379(n+2)+n+4)`
-/

namespace A180828.P5512014966145332980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A027379 (n + 2) + (n + 4 : ℤ)).toNat

end

end A180828.P5512014966145332980

/-!
# A180829: Number of distinct solutions of sum{i=1..6}(x(2i-1)*x(2i)) = 1 (mod n), with x() only in 2..n-2.

The programs for A180829, there is no canonical definition to state claims against.
-/

/-! ## A180829.P3576659247444163853

`A180834(A052905(n+3))`
-/

namespace A180829.P3576659247444163853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A052905 (n + 3)).toNat

end

end A180829.P3576659247444163853

/-! ## A180829.P9192218478721550365

`A180834(A046691(n+4)-1)`
-/

namespace A180829.P9192218478721550365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A046691 (n + 4) - 1).toNat

end

end A180829.P9192218478721550365

/-! ## A180829.P12613260514430127256

`A180834(A000096(n+5)-4)`
-/

namespace A180829.P12613260514430127256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A000096 (n + 5) - 4).toNat

end

end A180829.P12613260514430127256

/-! ## A180829.P2808196494033118648

`A180834(A000124(n+6)-6)`
-/

namespace A180829.P2808196494033118648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A000124 (n + 6) - 6).toNat

end

end A180829.P2808196494033118648

/-! ## A180829.P6057323767014808722

`A180834(eq[11, A099375(n)]+1)`
-/

namespace A180829.P6057323767014808722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A180829.P6057323767014808722

/-! ## A180829.P11285400708553568151

`A180834(Δ[Δ[A006504(n+1)]])`
-/

namespace A180829.P11285400708553568151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (f1 (n + 1) - f1 n).toNat

end

end A180829.P11285400708553568151

/-! ## A180829.P12257857570432324551

`A180834(Δ[A023545(n+2)]-1)`
-/

namespace A180829.P12257857570432324551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (f1 (n + 1) - f1 n - 1).toNat

end

end A180829.P12257857570432324551

/-! ## A180829.P911850140161390717

`A180834(Δ[A026054(n+3)]+1)`
-/

namespace A180829.P911850140161390717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (f1 (n + 1) - f1 n + 1).toNat

end

end A180829.P911850140161390717

/-! ## A180829.P14316814060135989885

`A180834(A034856(n+4)+n+3)`
-/

namespace A180829.P14316814060135989885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A034856 (n + 4) + (n + 3 : ℤ)).toNat

end

end A180829.P14316814060135989885

/-!
# A180830: Number of distinct solutions of sum{i=1..7}(x(2i-1)*x(2i)) = 1 (mod n), with x() only in 2..n-2.

The programs for A180830, there is no canonical definition to state claims against.
-/

/-! ## A180830.P17631487133731461596

`A180834(A055999(n+4))`
-/

namespace A180830.P17631487133731461596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A055999 (n + 4)).toNat

end

end A180830.P17631487133731461596

/-! ## A180830.P3052691312380114829

`A180834(Δ[A026054(n+4)])`
-/

namespace A180830.P3052691312380114829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (f1 (n + 1) - f1 n).toNat

end

end A180830.P3052691312380114829

/-! ## A180830.P36816733292111121

`A180834(A052905(n+4)-1)`
-/

namespace A180830.P36816733292111121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A052905 (n + 4) - 1).toNat

end

end A180830.P36816733292111121

/-! ## A180830.P10589408791847291573

`A180834(A000124(n+7)-7)`
-/

namespace A180830.P10589408791847291573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A000124 (n + 7) - 7).toNat

end

end A180830.P10589408791847291573

/-! ## A180830.P13397965033731451862

`A180834(A167614(n+6)-9)`
-/

namespace A180830.P13397965033731451862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A167614 (n + 6) - 9).toNat

end

end A180830.P13397965033731451862

/-! ## A180830.P8912373712344511545

`A180834(A000217(n+6)+n+1)`
-/

namespace A180830.P8912373712344511545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A180830.P8912373712344511545

/-! ## A180830.P2574862133255520180

`A180834(A004273(n+2)+A052905(n+2)+9)`
-/

namespace A180830.P2574862133255520180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A004273 (n + 2) + (A052905 (n + 2) + 9)).toNat

end

end A180830.P2574862133255520180

/-!
# A180831: Number of distinct solutions of sum{i=1..8}(x(2i-1)*x(2i)) = 1 (mod n), with x() only in 2..n-2.

The programs for A180831, there is no canonical definition to state claims against.
-/

/-! ## A180831.P11152043008286823354

`A180834(A052905(n+5)-2)`
-/

namespace A180831.P11152043008286823354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A052905 (n + 5) - 2).toNat

end

end A180831.P11152043008286823354

/-! ## A180831.P4169199151010716518

`A180834(A000096(n+7)-6)`
-/

namespace A180831.P4169199151010716518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A000096 (n + 7) - 6).toNat

end

end A180831.P4169199151010716518

/-! ## A180831.P5334023041136827758

`A180834(A253145(n+7)-7)`
-/

namespace A180831.P5334023041136827758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A253145 (n + 7) - 7).toNat

end

end A180831.P5334023041136827758

/-! ## A180831.P15367867693212467634

`A180834(A000124(n+8)-8)`
-/

namespace A180831.P15367867693212467634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A000124 (n + 8) - 8).toNat

end

end A180831.P15367867693212467634

/-! ## A180831.P12482031224182676751

`A180834(eq[7, A025581(n)]+1)`
-/

namespace A180831.P12482031224182676751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A180831.P12482031224182676751

/-! ## A180831.P7570547051197332213

`A180834(A005408(n)+A055999(n+3)+13)`
-/

namespace A180831.P7570547051197332213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A005408 n + (A055999 (n + 3) + 13)).toNat

end

end A180831.P7570547051197332213

/-! ## A180831.P11877503496868389031

`A180834(A167614(n+1)+A007310(2*(n+4)))`
-/

namespace A180831.P11877503496868389031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A167614 (n + 1) + A007310 (2 * (n + 4))).toNat

end

end A180831.P11877503496868389031

/-!
# A180832: Number of distinct solutions of sum{i=1..9}(x(2i-1)*x(2i)) = 1 (mod n), with x() only in 2..n-2.

The programs for A180832, there is no canonical definition to state claims against.
-/

/-! ## A180832.P17473715779866510642

`A180834(A155212(n+5))`
-/

namespace A180832.P17473715779866510642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A155212 (n + 5)).toNat

end

end A180832.P17473715779866510642

/-! ## A180832.P7339143720319593569

`A180834(A000096(n+8)-7)`
-/

namespace A180832.P7339143720319593569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A000096 (n + 8) - 7).toNat

end

end A180832.P7339143720319593569

/-! ## A180832.P15514588965822895641

`A180834(A000124(n+9)-9)`
-/

namespace A180832.P15514588965822895641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A000124 (n + 9) - 9).toNat

end

end A180832.P15514588965822895641

/-! ## A180832.P18248640010872690929

`A180834(A161680(n+9)+n+1)`
-/

namespace A180832.P18248640010872690929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A161680 (n + 9) + (n + 1 : ℤ)).toNat

end

end A180832.P18248640010872690929

/-! ## A180832.P2496394950801234180

`A180834(2*(n+1)+A000217(n+7)+7)`
-/

namespace A180832.P2496394950801234180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 ((2 * (n + 1) : ℤ) + (A000217 (n + 7) + 7)).toNat

end

end A180832.P2496394950801234180

/-!
# A180833: Number of distinct solutions of sum{i=1..10}(x(2i-1)*x(2i)) = 1 (mod n), with x() only in 2..n-2.

The programs for A180833, there is no canonical definition to state claims against.
-/

/-! ## A180833.P1902568609348690405

`A180834(A056000(n+6)+1)`
-/

namespace A180833.P1902568609348690405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A056000 (n + 6) + 1).toNat

end

end A180833.P1902568609348690405

/-! ## A180833.P10495474784955334920

`A180834(A052905(n+7)-4)`
-/

namespace A180833.P10495474784955334920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A052905 (n + 7) - 4).toNat

end

end A180833.P10495474784955334920

/-! ## A180833.P538165478596141652

`A180834(A000124(n+10)-10)`
-/

namespace A180833.P538165478596141652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A000124 (n + 10) - 10).toNat

end

end A180833.P538165478596141652

/-! ## A180833.P14776183301290173805

`A180834(A167614(n+9)-12)`
-/

namespace A180833.P14776183301290173805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A167614 (n + 9) - 12).toNat

end

end A180833.P14776183301290173805

/-! ## A180833.P14240932271891592660

`A180834(A000096(n+8)+n+2)`
-/

namespace A180833.P14240932271891592660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 (A000096 (n + 8) + (n + 2 : ℤ)).toNat

end

end A180833.P14240932271891592660

/-! ## A180833.P154607128529346341

`A180834(2*(n+1)+A166136(n+7)+2)`
-/

namespace A180833.P154607128529346341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180834 ((2 * (n + 1) : ℤ) + (A166136 (n + 7) + 2)).toNat

end

end A180833.P154607128529346341

/-!
# A180834: T(n,k)=number of distinct solutions of sum{i=1..k}(x(2i-1)*x(2i)) = 1 (mod n), with x() only in 2..n-2.

The programs for A180834, there is no canonical definition to state claims against.
-/

/-! ## A180834.P461892798498540258

`and(A051058(n), A356995(n+3))`
-/

namespace A180834.P461892798498540258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051058 n) (A356995 (n + 3))

end

end A180834.P461892798498540258

/-! ## A180834.P483882491581607446

`A005539(n+1)%A193517(n+1)`
-/

namespace A180834.P483882491581607446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005539 (n + 1)) (A193517 (n + 1))

end

end A180834.P483882491581607446

/-! ## A180834.P5611693182694417590

`A323642(n+1)%A193517(n+1)`
-/

namespace A180834.P5611693182694417590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323642 (n + 1)) (A193517 (n + 1))

end

end A180834.P5611693182694417590

/-! ## A180834.P7177512453573689765

`and(A046809(n+1), A356995(n+3))`
-/

namespace A180834.P7177512453573689765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046809 (n + 1)) (A356995 (n + 3))

end

end A180834.P7177512453573689765

/-! ## A180834.P6370928994034166228

`A328577(n)%A106478(A106442(n))`
-/

namespace A180834.P6370928994034166228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328577 n) (A106478 (A106442 n).toNat)

end

end A180834.P6370928994034166228

/-!
# A180835: T(n,k) = number of n-bit binary numbers with every initial substring not divisible by k.

The programs for A180835, there is no canonical definition to state claims against.
-/

/-! ## A180835.P9854992084348490002

`A325678(A277504(n))%A325682(n+1)`
-/

namespace A180835.P9854992084348490002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325678 (A277504 n).toNat) (A325682 (n + 1))

end

end A180835.P9854992084348490002

/-! ## A180835.P4177477892071092125

`∑{p}[A109974(n), A093655(#)]`
-/

namespace A180835.P4177477892071092125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A093655 p

end

end A180835.P4177477892071092125

/-! ## A180835.P8236986879533913048

`A326702(A331436(n)%((n+1)*3^n))`
-/

namespace A180835.P8236986879533913048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 (Int.tmod (A331436 n) ((n + 1) * 3 ^ n : ℤ)).toNat

end

end A180835.P8236986879533913048

/-! ## A180835.P4786639613164962735

`A004216(A000292(A093560(n)))`
-/

namespace A180835.P4786639613164962735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A000292 (A093560 n).toNat).toNat

end

end A180835.P4786639613164962735

/-! ## A180835.P9936770607162041176

`A326702(A210472(n))`
-/

namespace A180835.P9936770607162041176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 (A210472 n).toNat

end

end A180835.P9936770607162041176

/-!
# A180836: Number of nX2 arrays containing 2 indistinguishable copies of 1..n with rows and columns in lexicographically strictly increasing order.

The programs for A180836, there is no canonical definition to state claims against.
-/

/-! ## A180836.P7006418402131107970

`A180839(∑[n+2])`
-/

namespace A180836.P7006418402131107970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180839 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180836.P7006418402131107970

/-! ## A180836.P10729456986618091843

`A180839(A000096(n+1))*A180839(n+1)`
-/

namespace A180836.P10729456986618091843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180839 (A000096 (n + 1)).toNat * A180839 (n + 1)

end

end A180836.P10729456986618091843

/-!
# A180837: Number of nX3 arrays containing 3 indistinguishable copies of 1..n with rows and columns in lexicographically strictly increasing order.

The programs for A180837, there is no canonical definition to state claims against.
-/

/-! ## A180837.P11969837087805789691

`A180839(∑[n+3]+1)`
-/

namespace A180837.P11969837087805789691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180839 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A180837.P11969837087805789691

/-!
# A180838: Number of nX4 arrays containing 4 indistinguishable copies of 1..n with rows and columns in lexicographically strictly increasing order.

The programs for A180838, there is no canonical definition to state claims against.
-/

/-! ## A180838.P12174371915188917212

`A180839(A141214(n+1))`
-/

namespace A180838.P12174371915188917212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180839 (A141214 (n + 1)).toNat

end

end A180838.P12174371915188917212

/-!
# A180839: T(n,k) = number of n X k arrays containing k indistinguishable copies of 1..n with rows and columns in lexicographically strictly increasing order.

The programs for A180839, there is no canonical definition to state claims against.
-/

/-! ## A180839.P12607055795395254104

`A201162(A395141(n))`
-/

namespace A180839.P12607055795395254104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201162 (A395141 n).toNat

end

end A180839.P12607055795395254104

/-! ## A180839.P429089348781195093

`A284189(A360439(n))`
-/

namespace A180839.P429089348781195093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284189 (A360439 n).toNat

end

end A180839.P429089348781195093

/-! ## A180839.P12765031581287907436

`A001055(A316623(n)²)`
-/

namespace A180839.P12765031581287907436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A316623 n ^ 2).toNat

end

end A180839.P12765031581287907436

/-! ## A180839.P3309217178419600852

`A342513(A293012(n)²)`
-/

namespace A180839.P3309217178419600852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342513 (A293012 n ^ 2).toNat

end

end A180839.P3309217178419600852

/-! ## A180839.P8542204887374578663

`A275485(A181985(n+1))`
-/

namespace A180839.P8542204887374578663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275485 (A181985 (n + 1)).toNat

end

end A180839.P8542204887374578663

/-!
# A180840: Number of nX2 arrays containing 2 indistinguishable copies of 1..n with lexicographical ordering of rows strictly increasing and columns strictly decreasing.

The programs for A180840, there is no canonical definition to state claims against.
-/

/-! ## A180840.P17697900482931635157

`A180843(∑[n+2])`
-/

namespace A180840.P17697900482931635157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180843 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180840.P17697900482931635157

/-! ## A180840.P1083350574927730015

`xor(A028310(n²), A051218(A116723(n)))`
-/

namespace A180840.P1083350574927730015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A028310 (n ^ 2)) (A051218 (A116723 n).toNat)

end

end A180840.P1083350574927730015

/-!
# A180841: Number of nX3 arrays containing 3 indistinguishable copies of 1..n with lexicographical ordering of rows strictly increasing and columns strictly decreasing.

The programs for A180841, there is no canonical definition to state claims against.
-/

/-! ## A180841.P11327909924187757387

`A180843(∑[n+3]+1)`
-/

namespace A180841.P11327909924187757387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180843 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A180841.P11327909924187757387

/-!
# A180842: Number of n X 4 arrays containing 4 indistinguishable copies of 1..n with lexicographical ordering of rows strictly increasing and columns strictly decreasing.

The programs for A180842, there is no canonical definition to state claims against.
-/

/-! ## A180842.P7664218455144886461

`A180843(A141214(n+1))`
-/

namespace A180842.P7664218455144886461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180843 (A141214 (n + 1)).toNat

end

end A180842.P7664218455144886461

/-! ## A180842.P4491066323888402665

`A180843(A027379(n+2))`
-/

namespace A180842.P4491066323888402665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180843 (A027379 (n + 2)).toNat

end

end A180842.P4491066323888402665

/-!
# A180844: a(n) = (27^n - 2^n)/25.

The programs for A180844, the canonical program `A180844.P12562999779154666058` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180844 has offset 0).

The definition of A180844 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180844.P12562999779154666058

`(27^n-2^n)/25`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A180844

/-- `(27^n-2^n)/25` -/
def P12562999779154666058.Spec : Prop :=
  ∀ n, P12562999779154666058.a n = (A180844 n : ℚ)

end A180844

/-! ## A180844.P15890074459246314766

`29*a(n-1)-54*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A180844.P15890074459246314766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  29 * a (n - 1) - 54 * a (n - 2)

end

end A180844.P15890074459246314766

namespace A180844

/-- `29*a(n-1)-54*a(n-2)` -/
def P15890074459246314766.Spec : Prop :=
  ∀ n, P15890074459246314766.a n = A180844 n

end A180844

/-! ## A180844.P11362731686023080916

`A011782(n)+27*a(n-1)` with `a(0)=0`
-/

namespace A180844.P11362731686023080916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A011782 n + 27 * a (n - 1)

end

end A180844.P11362731686023080916

namespace A180844

/-- `A011782(n)+27*a(n-1)` -/
def P11362731686023080916.Spec : Prop :=
  ∀ n, P11362731686023080916.a n = A180844 n

end A180844

/-! ## A180844.P17122639770312943541

`A131577(n)+27*a(n-1)` with `a(0)=0`
-/

namespace A180844.P17122639770312943541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A131577 n + 27 * a (n - 1)

end

end A180844.P17122639770312943541

namespace A180844

/-- `A131577(n)+27*a(n-1)` -/
def P17122639770312943541.Spec : Prop :=
  ∀ n, P17122639770312943541.a n = A180844 n

end A180844

/-! ## A180844.P11674585134997018716

`lcm(27, a(n-1))+A056469(n)-2` with `a(0)=0`
-/

namespace A180844.P11674585134997018716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Int.lcm 27 (a (n - 1)) : ℤ) + (A056469 n - 2)

end

end A180844.P11674585134997018716

namespace A180844

/-- `lcm(27, a(n-1))+A056469(n)-2` -/
def P11674585134997018716.Spec : Prop :=
  ∀ n, P11674585134997018716.a n = A180844 n

end A180844

/-!
# A180845: a(n) = (16^n-3^n)/13.

The programs for A180845, the canonical program `A180845.P7116731583293214989` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180845 has offset 0).

The definition of A180845 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180845.P7116731583293214989

`(16^n-3^n)/13`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A180845

/-- `(16^n-3^n)/13` -/
def P7116731583293214989.Spec : Prop :=
  ∀ n, P7116731583293214989.a n = (A180845 n : ℚ)

end A180845

/-! ## A180845.P3894137138793349778

`lcm(3, a(n-1))+(4^(n-1))²` with `a(0)=0`
-/

namespace A180845.P3894137138793349778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (Int.lcm 3 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) + ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ 2

end

end A180845.P3894137138793349778

namespace A180845

/-- `lcm(3, a(n-1))+(4^(n-1))²` -/
def P3894137138793349778.Spec : Prop :=
  ∀ n, P3894137138793349778.a n = (A180845 n : ℚ)

end A180845

/-! ## A180845.P12612558562920240039

`xor(3*a(n-1), (4^(n-1))²)` with `a(0)=0`
-/

namespace A180845.P12612558562920240039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (3 * a (n - 1)) (SequenceMachineLib.roundAway (((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ 2))

end

end A180845.P12612558562920240039

namespace A180845

/-- `xor(3*a(n-1), (4^(n-1))²)` -/
def P12612558562920240039.Spec : Prop :=
  ∀ n, P12612558562920240039.a n = A180845 n

end A180845

/-! ## A180845.P254987955784091901

`or(3*a(n-1), A011782(n)²²)` with `a(0)=0`
-/

namespace A180845.P254987955784091901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (3 * a (n - 1)) ((A011782 n ^ 2) ^ 2)

end

end A180845.P254987955784091901

namespace A180845

/-- `or(3*a(n-1), A011782(n)²²)` -/
def P254987955784091901.Spec : Prop :=
  ∀ n, P254987955784091901.a n = A180845 n

end A180845

/-! ## A180845.P2753807708399929667

`3^(n-1)+16*a(A118340(A000124(n)))` with `a(0)=0`
-/

namespace A180845.P2753807708399929667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 16 * a (A118340 (A000124 n).toNat).toNat

end

end A180845.P2753807708399929667

namespace A180845

/-- `3^(n-1)+16*a(A118340(A000124(n)))` -/
def P2753807708399929667.Spec : Prop :=
  ∀ n, P2753807708399929667.a n = (A180845 n : ℚ)

end A180845

/-!
# A180846: a(n) = (81^n - 2^n)/79.

The programs for A180846, the canonical program `A180846.P14736449293524579153` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180846 has offset 0).

The definition of A180846 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180846.P14736449293524579153

`(81^n-2^n)/79`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A180846

/-- `(81^n-2^n)/79` -/
def P14736449293524579153.Spec : Prop :=
  ∀ n, P14736449293524579153.a n = (A180846 n : ℚ)

end A180846

/-!
# A180847: a(n) = (27^n-4^n)/23.

The programs for A180847, the canonical program `A180847.P1186816837319088258` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180847 has offset 0).

The definition of A180847 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180847.P1186816837319088258

`31*a(n-1)-108*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A180847

/-- `31*a(n-1)-108*a(n-2)` -/
def P1186816837319088258.Spec : Prop :=
  ∀ n, P1186816837319088258.a n = A180847 n

theorem P1186816837319088258.correct : P1186816837319088258.Spec := by
  intro n
  simp only [A180847]

end A180847

/-! ## A180847.P353603589599050228

`(27^n-4^n)/23`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A180847.P353603589599050228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((27 ^ n : ℤ) - (4 ^ n : ℤ) : ℚ) / 23

end

end A180847.P353603589599050228

namespace A180847

/-- `(27^n-4^n)/23` -/
def P353603589599050228.Spec : Prop :=
  ∀ n, P353603589599050228.a n = (A180847 n : ℚ)

end A180847

/-! ## A180847.P10425153228445749769

`lcm(27, a(n-1))+A011782(n)²` with `a(0)=0`
-/

namespace A180847.P10425153228445749769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Int.lcm 27 (a (n - 1)) : ℤ) + A011782 n ^ 2

end

end A180847.P10425153228445749769

namespace A180847

/-- `lcm(27, a(n-1))+A011782(n)²` -/
def P10425153228445749769.Spec : Prop :=
  ∀ n, P10425153228445749769.a n = A180847 n

end A180847

/-!
# A180851: Sum of increasing powers of divisors: a(n) = Sum_{i=1..q} d(i)^i where d(1) < d(2) < ... < d(q) are the divisors of n.

The programs for A180851, there is no canonical definition to state claims against.
-/

/-! ## A180851.P8309424511176907890

`A389091(A037278(n+1))`
-/

namespace A180851.P8309424511176907890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389091 (A037278 (n + 1)).toNat

end

end A180851.P8309424511176907890

/-! ## A180851.P4124042403635255347

`A389091(A390599(n+1))`
-/

namespace A180851.P4124042403635255347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389091 (A390599 (n + 1)).toNat

end

end A180851.P4124042403635255347

/-!
# A180853: Trajectory of 4 under map n->A006368(n).

The programs for A180853, the canonical program `A180853.P16226065177076148318` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180853 has offset 0).

The definition of A180853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180853.P16226065177076148318

`a(n-5)` with `a(0)=4, a(1)=6, a(2)=9, a(3)=7, a(4)=5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A180853

/-- `a(n-5)` -/
def P16226065177076148318.Spec : Prop :=
  ∀ n, (P16226065177076148318.a n : ℤ) = A180853 n

theorem P16226065177076148318.correct : P16226065177076148318.Spec := by
  intro n
  simp only [A180853]

end A180853

/-!
# A180854: Square array read by antidiagonals: T(m,n) is the Wiener index of the lollipop graph L(m,n) (m>=1, n>=1). L(m,n) is the graph obtained by joining the complete graph K_m to the path graph P_n by an edge. The Wiener index of a connected graph is the sum of distances between all unordered pairs of vertices in the graph.

The programs for A180854, there is no canonical definition to state claims against.
-/

/-! ## A180854.P9043703168962150421

`A140765(n)+C(comp[∑[n]]-n, 2)`
-/

namespace A180854.P9043703168962150421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140765 n + (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)

end

end A180854.P9043703168962150421

/-! ## A180854.P4367400094994067936

`A140765(n)+A127739(n+1)`
-/

namespace A180854.P4367400094994067936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140765 n + A127739 (n + 1)

end

end A180854.P4367400094994067936

/-! ## A180854.P4748453677557762249

`A004736(n+1)+A140765(n)+n`
-/

namespace A180854.P4748453677557762249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A140765 n + (n : ℤ))

end

end A180854.P4748453677557762249

/-! ## A180854.P6672857034910968174

`n+1+A140765(n)+A025581(n)`
-/

namespace A180854.P6672857034910968174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A140765 n + A025581 n)

end

end A180854.P6672857034910968174

/-! ## A180854.P8307565818475858192

`A064801(n+1)+A140765(n)-n`
-/

namespace A180854.P8307565818475858192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 1) + (A140765 n - (n : ℤ))

end

end A180854.P8307565818475858192

/-! ## A180854.P17202272385986996893

`A140765(n)+∑[A066182(n+1)-n]`
-/

namespace A180854.P17202272385986996893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140765 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180854.P17202272385986996893

/-! ## A180854.P914097514879029313

`val(A036561(n), 2)+1+A140765(n)+n`
-/

namespace A180854.P914097514879029313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A036561 n).toNat 2 + 1 : ℤ) + (A140765 n + (n : ℤ))

end

end A180854.P914097514879029313

/-! ## A180854.P15706476973509781095

`A140765(n)+A025747(A003056(n))`
-/

namespace A180854.P15706476973509781095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140765 n + A025747 (A003056 n).toNat

end

end A180854.P15706476973509781095

/-! ## A180854.P7166516908225695561

`A140765(n)+A080036(A057944(n))`
-/

namespace A180854.P7166516908225695561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140765 n + A080036 (A057944 n).toNat

end

end A180854.P7166516908225695561

/-! ## A180854.P6635844733806608319

`A140765(n)+A000217(A002024(n+1))`
-/

namespace A180854.P6635844733806608319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140765 n + A000217 (A002024 (n + 1)).toNat

end

end A180854.P6635844733806608319

/-!
# A180857: Wiener index of the Moebius ladder M(n).

The programs for A180857, the canonical program `A180857.P1783166644753890375` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180857 has offset 1).

The definition of A180857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180857.P1783166644753890375

`(∑[or(1, n)]+n)*(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A180857

/-- `(∑[or(1, n)]+n)*(n+1)` -/
def P1783166644753890375.Spec : Prop :=
  ∀ n, (P1783166644753890375.a n : ℤ) = A180857 (n + 1)

theorem P1783166644753890375.correct : P1783166644753890375.Spec := by
  intro n
  simp only [A180857, Nat.add_sub_cancel]

end A180857

/-! ## A180857.P397607546811376814

`lcm(∑[or(1, n)]+n, n+1)`
-/

namespace A180857.P397607546811376814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j + n) (n + 1)

end

end A180857.P397607546811376814

namespace A180857

/-- `lcm(∑[or(1, n)]+n, n+1)` -/
def P397607546811376814.Spec : Prop :=
  ∀ n, (P397607546811376814.a n : ℤ) = A180857 (n + 1)

end A180857

/-! ## A180857.P2678064135138551124

`(n+1)*(floor((n+2)²/2)-1)`
-/

namespace A180857.P2678064135138551124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (⌊((n + 2) ^ 2 : ℚ) / 2⌋ - 1)

end

end A180857.P2678064135138551124

namespace A180857

/-- `(n+1)*(floor((n+2)²/2)-1)` -/
def P2678064135138551124.Spec : Prop :=
  ∀ n, P2678064135138551124.a n = A180857 (n + 1)

end A180857

/-! ## A180857.P12042139493416142788

`gcd(n+1, ∑[n])+n*∑[n+2]`
-/

namespace A180857.P12042139493416142788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) + n * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A180857.P12042139493416142788

namespace A180857

/-- `gcd(n+1, ∑[n])+n*∑[n+2]` -/
def P12042139493416142788.Spec : Prop :=
  ∀ n, (P12042139493416142788.a n : ℤ) = A180857 (n + 1)

end A180857

/-! ## A180857.P8127786867600483251

`floor((n+1)*∑[a(n-2)+2])` with `a(0)=1, a(1)=2, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A180857.P8127786867600483251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180857.P8127786867600483251

namespace A180857

/-- `floor((n+1)*∑[a(n-2)+2])` -/
def P8127786867600483251.Spec : Prop :=
  ∀ n, (P8127786867600483251.a n : ℤ) = A180857 (n + 1)

end A180857

/-! ## A180857.P4821504867392119095

`(n+1)*∑[a(n-2)+2]-(n+1)` with `a(0)=2, a(1)=2`
-/

namespace A180857.P4821504867392119095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A180857.P4821504867392119095

namespace A180857

/-- `(n+1)*∑[a(n-2)+2]-(n+1)` -/
def P4821504867392119095.Spec : Prop :=
  ∀ n, P4821504867392119095.a n = A180857 (n + 1)

end A180857

/-! ## A180857.P10846878416311817436

`∑[2*A014255(n)-1]`
-/

namespace A180857.P10846878416311817436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014255 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180857.P10846878416311817436

namespace A180857

/-- `∑[2*A014255(n)-1]` -/
def P10846878416311817436.Spec : Prop :=
  ∀ n, P10846878416311817436.a n = A180857 (n + 1)

end A180857

/-! ## A180857.P7897103203774755908

`∑[A186424(n)+2*n]`
-/

namespace A180857.P7897103203774755908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186424 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180857.P7897103203774755908

namespace A180857

/-- `∑[A186424(n)+2*n]` -/
def P7897103203774755908.Spec : Prop :=
  ∀ n, P7897103203774755908.a n = A180857 (n + 1)

end A180857

/-! ## A180857.P9697423576625500149

`lcm(n+1, A047838(n+2))`
-/

namespace A180857.P9697423576625500149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A047838 (n + 2))

end

end A180857.P9697423576625500149

namespace A180857

/-- `lcm(n+1, A047838(n+2))` -/
def P9697423576625500149.Spec : Prop :=
  ∀ n, (P9697423576625500149.a n : ℤ) = A180857 (n + 1)

end A180857

/-! ## A180857.P1308254360410031319

`∑[∑[A178414(n+1)]+n]`
-/

namespace A180857.P1308254360410031319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178414 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180857.P1308254360410031319

namespace A180857

/-- `∑[∑[A178414(n+1)]+n]` -/
def P1308254360410031319.Spec : Prop :=
  ∀ n, P1308254360410031319.a n = A180857 (n + 1)

end A180857

/-! ## A180857.P6788039625853988412

`A317614(n+1)+∑[2*n]`
-/

namespace A180857.P6788039625853988412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317614 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A180857.P6788039625853988412

namespace A180857

/-- `A317614(n+1)+∑[2*n]` -/
def P6788039625853988412.Spec : Prop :=
  ∀ n, P6788039625853988412.a n = A180857 (n + 1)

end A180857

/-! ## A180857.P12371425581824572034

`2*A128624(n+1)-(n+1)`
-/

namespace A180857.P12371425581824572034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128624 (n + 1) - (n + 1 : ℤ)

end

end A180857.P12371425581824572034

namespace A180857

/-- `2*A128624(n+1)-(n+1)` -/
def P12371425581824572034.Spec : Prop :=
  ∀ n, P12371425581824572034.a n = A180857 (n + 1)

end A180857

/-! ## A180857.P10123513715063718262

`(n+1)^3-A323724(n+1)`
-/

namespace A180857.P10123513715063718262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A323724 (n + 1)

end

end A180857.P10123513715063718262

namespace A180857

/-- `(n+1)^3-A323724(n+1)` -/
def P10123513715063718262.Spec : Prop :=
  ∀ n, P10123513715063718262.a n = A180857 (n + 1)

end A180857

/-! ## A180857.P8598464024859193623

`A246697(n)+A035608(n)`
-/

namespace A180857.P8598464024859193623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246697 n + A035608 n

end

end A180857.P8598464024859193623

namespace A180857

/-- `A246697(n)+A035608(n)` -/
def P8598464024859193623.Spec : Prop :=
  ∀ n, P8598464024859193623.a n = A180857 (n + 1)

end A180857

/-! ## A180857.P10797066629139011017

`A055232(n)+A001082(n+1)`
-/

namespace A180857.P10797066629139011017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055232 n + A001082 (n + 1)

end

end A180857.P10797066629139011017

namespace A180857

/-- `A055232(n)+A001082(n+1)` -/
def P10797066629139011017.Spec : Prop :=
  ∀ n, P10797066629139011017.a n = A180857 (n + 1)

end A180857

/-! ## A180857.P7239519262629741132

`A178946(n+1)+A006503(n)`
-/

namespace A180857.P7239519262629741132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178946 (n + 1) + A006503 n

end

end A180857.P7239519262629741132

namespace A180857

/-- `A178946(n+1)+A006503(n)` -/
def P7239519262629741132.Spec : Prop :=
  ∀ n, P7239519262629741132.a n = A180857 (n + 1)

end A180857

/-! ## A180857.P5256500578382698183

`A238411(n+1)+A212975(n)`
-/

namespace A180857.P5256500578382698183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238411 (n + 1) + A212975 n

end

end A180857.P5256500578382698183

namespace A180857

/-- `A238411(n+1)+A212975(n)` -/
def P5256500578382698183.Spec : Prop :=
  ∀ n, P5256500578382698183.a n = A180857 (n + 1)

end A180857

/-! ## A180857.P5349764339288429443

`A032438(n)+A055232(n)+n`
-/

namespace A180857.P5349764339288429443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032438 n + (A055232 n + (n : ℤ))

end

end A180857.P5349764339288429443

namespace A180857

/-- `A032438(n)+A055232(n)+n` -/
def P5349764339288429443.Spec : Prop :=
  ∀ n, P5349764339288429443.a n = A180857 (n + 1)

end A180857

/-! ## A180857.P9160205115775864574

`A093005(n+1)+A077414(n+1)`
-/

namespace A180857.P9160205115775864574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (n + 1) + A077414 (n + 1)

end

end A180857.P9160205115775864574

namespace A180857

/-- `A093005(n+1)+A077414(n+1)` -/
def P9160205115775864574.Spec : Prop :=
  ∀ n, P9160205115775864574.a n = A180857 (n + 1)

end A180857

/-! ## A180857.P11240817189544771667

`A162260(n+1)-A110349(n+1)`
-/

namespace A180857.P11240817189544771667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162260 (n + 1) - A110349 (n + 1)

end

end A180857.P11240817189544771667

namespace A180857

/-- `A162260(n+1)-A110349(n+1)` -/
def P11240817189544771667.Spec : Prop :=
  ∀ n, P11240817189544771667.a n = A180857 (n + 1)

end A180857

/-!
# A180858: Square array read by antidiagonals: T(p,n) is the Wiener index of the fan graph F(p,n) (p>=1, n>=1). F(p,n) is the graph obtained by placing an edge between each node of the empty graph on p nodes and each node of the path graph on n nodes.

The programs for A180858, the canonical program `A180858.P13372473805184083103` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180858 has offset 1).

The definition of A180858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180858.P13372473805184083103

`∑[2*n-round(sqrt(2*n))²]+∑[char[∑[n]]]²-n`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A180858

/-- `∑[2*n-round(sqrt(2*n))²]+∑[char[∑[n]]]²-n` -/
def P13372473805184083103.Spec : Prop :=
  ∀ n, P13372473805184083103.a n = A180858 (n + 1)

theorem P13372473805184083103.correct : P13372473805184083103.Spec := by
  intro n
  simp only [A180858, Nat.add_sub_cancel]

end A180858

/-! ## A180858.P17983310900908098971

`A073254(comp[∑[n-1]])`
-/

namespace A180858.P17983310900908098971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A180858.P17983310900908098971

namespace A180858

/-- `A073254(comp[∑[n-1]])` -/
def P17983310900908098971.Spec : Prop :=
  ∀ n, P17983310900908098971.a n = A180858 (n + 1)

end A180858

/-! ## A180858.P2795358515719621211

`abs(A038722(n+1)+∑[2*n-round(sqrt(2*n))²])`
-/

namespace A180858.P2795358515719621211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038722 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A180858.P2795358515719621211

namespace A180858

/-- `abs(A038722(n+1)+∑[2*n-round(sqrt(2*n))²])` -/
def P2795358515719621211.Spec : Prop :=
  ∀ n, P2795358515719621211.a n = A180858 (n + 1)

end A180858

/-! ## A180858.P457089338388442016

`or(char[2], A073254(A007401(n+1)))`
-/

namespace A180858.P457089338388442016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A073254 (A007401 (n + 1)).toNat)

end

end A180858.P457089338388442016

namespace A180858

/-- `or(char[2], A073254(A007401(n+1)))` -/
def P457089338388442016.Spec : Prop :=
  ∀ n, P457089338388442016.a n = A180858 (n + 1)

end A180858

/-! ## A180858.P12874160666606891111

`A215630(∑[char[∑[n]]]²-n)`
-/

namespace A180858.P12874160666606891111
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215630 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A180858.P12874160666606891111

namespace A180858

/-- `A215630(∑[char[∑[n]]]²-n)` -/
def P12874160666606891111.Spec : Prop :=
  ∀ n, P12874160666606891111.a n = A180858 (n + 1)

end A180858

/-! ## A180858.P9705695541260286284

`A215630(A038722(n+1))%A016885(n)`
-/

namespace A180858.P9705695541260286284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215630 (A038722 (n + 1)).toNat) (A016885 n)

end

end A180858.P9705695541260286284

namespace A180858

/-- `A215630(A038722(n+1))%A016885(n)` -/
def P9705695541260286284.Spec : Prop :=
  ∀ n, P9705695541260286284.a n = A180858 (n + 1)

end A180858

/-! ## A180858.P14100883203810786965

`or(A010054(n+1), A215630(A038722(n+1)))`
-/

namespace A180858.P14100883203810786965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (n + 1)) (A215630 (A038722 (n + 1)).toNat)

end

end A180858.P14100883203810786965

namespace A180858

/-- `or(A010054(n+1), A215630(A038722(n+1)))` -/
def P14100883203810786965.Spec : Prop :=
  ∀ n, P14100883203810786965.a n = A180858 (n + 1)

end A180858

/-! ## A180858.P1341923565524528732

`C(A215630(A038722(n+1)), and(1, A000040(n+1)))`
-/

namespace A180858.P1341923565524528732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A215630 (A038722 (n + 1)).toNat).toNat (Int.land 1 (A000040 (n + 1))).toNat

end

end A180858.P1341923565524528732

namespace A180858

/-- `C(A215630(A038722(n+1)), and(1, A000040(n+1)))` -/
def P1341923565524528732.Spec : Prop :=
  ∀ n, (P1341923565524528732.a n : ℤ) = A180858 (n + 1)

end A180858

/-! ## A180858.P15146550590063946302

`lcm(A057979(2*n), A215630(A038722(n+1)))`
-/

namespace A180858.P15146550590063946302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057979 (2 * n)) (A215630 (A038722 (n + 1)).toNat)

end

end A180858.P15146550590063946302

namespace A180858

/-- `lcm(A057979(2*n), A215630(A038722(n+1)))` -/
def P15146550590063946302.Spec : Prop :=
  ∀ n, (P15146550590063946302.a n : ℤ) = A180858 (n + 1)

end A180858

/-! ## A180858.P9117472701469806018

`A209279(A038722(n+1)²+n²)`
-/

namespace A180858.P9117472701469806018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (A038722 (n + 1) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A180858.P9117472701469806018

namespace A180858

/-- `A209279(A038722(n+1)²+n²)` -/
def P9117472701469806018.Spec : Prop :=
  ∀ n, P9117472701469806018.a n = A180858 (n + 1)

end A180858

/-!
# A180859: Square array read by antidiagonals: T(m,n) is the Wiener index of the windmill graph D(m,n) obtained by taking n copies of the complete graph K_m with a vertex in common (i.e., a bouquet of n pieces of K_m graphs; m>=2, n>=1).

The programs for A180859, there is no canonical definition to state claims against.
-/

/-! ## A180859.P3376733619244409071

`A095729(n+1)+A049207(n)`
-/

namespace A180859.P3376733619244409071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095729 (n + 1) + A049207 n

end

end A180859.P3376733619244409071

/-! ## A180859.P14281570153268870629

`A002378(A003991(n+1))-A104633(n+1)`
-/

namespace A180859.P14281570153268870629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A003991 (n + 1)).toNat - A104633 (n + 1)

end

end A180859.P14281570153268870629

/-! ## A180859.P7354152625972491923

`A003991(n+1)²-A062707(A014132(n+1))`
-/

namespace A180859.P7354152625972491923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) ^ 2 - A062707 (A014132 (n + 1)).toNat

end

end A180859.P7354152625972491923

/-! ## A180859.P5742731641592943392

`A000037(A003991(n+1)²)-A104633(n+1)`
-/

namespace A180859.P5742731641592943392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A003991 (n + 1) ^ 2).toNat - A104633 (n + 1)

end

end A180859.P5742731641592943392

/-!
# A180861: Wiener index of the n-pan graph.

The programs for A180861, the canonical program `A180861.P13791177340759303374` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180861 has offset 1).

The definition of A180861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180861.P9784660483907195451

`∑[∑[lcm(2, n+2)/2]-n]`
-/

namespace A180861.P9784660483907195451
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 2) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180861.P9784660483907195451

namespace A180861

/-- `∑[∑[lcm(2, n+2)/2]-n]` -/
def P9784660483907195451.Spec : Prop :=
  ∀ n, P9784660483907195451.a n = (A180861 (n + 1) : ℚ)

end A180861

/-! ## A180861.P12820716190670329029

`∑[∑[(n+2)/gcd(2, n)]-n]`
-/

namespace A180861.P12820716190670329029
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Nat.gcd 2 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180861.P12820716190670329029

namespace A180861

/-- `∑[∑[(n+2)/gcd(2, n)]-n]` -/
def P12820716190670329029.Spec : Prop :=
  ∀ n, P12820716190670329029.a n = (A180861 (n + 1) : ℚ)

end A180861

/-! ## A180861.P13791177340759303374

`∑[∑[∑[n+2]%(n+2)]+1]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A180861

/-- `∑[∑[∑[n+2]%(n+2)]+1]` -/
def P13791177340759303374.Spec : Prop :=
  ∀ n, (P13791177340759303374.a n : ℤ) = A180861 (n + 1)

theorem P13791177340759303374.correct : P13791177340759303374.Spec := by
  intro n
  simp only [A180861, Nat.add_sub_cancel]

end A180861

/-! ## A180861.P165712976588684718

`∑[∑[gcd(n+2, ∑[n+1])]-n]`
-/

namespace A180861.P165712976588684718
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180861.P165712976588684718

namespace A180861

/-- `∑[∑[gcd(n+2, ∑[n+1])]-n]` -/
def P165712976588684718.Spec : Prop :=
  ∀ n, P165712976588684718.a n = A180861 (n + 1)

end A180861

/-! ## A180861.P3151083308829561430

`∑[a(n-2)+ceil(3*n/2)]` with `a(0)=1, a(1)=3`
-/

namespace A180861.P3151083308829561430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 2) + ⌈3 * ((n : ℚ) / 2)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180861.P3151083308829561430

namespace A180861

/-- `∑[a(n-2)+ceil(3*n/2)]` -/
def P3151083308829561430.Spec : Prop :=
  ∀ n, P3151083308829561430.a n = A180861 (n + 1)

end A180861

/-! ## A180861.P2949444597331025269

`∑[∑[∑[n+1]/a(n-1)]-n]` with `a(0)=1`
-/

namespace A180861.P2949444597331025269
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ) / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180861.P2949444597331025269

namespace A180861

/-- `∑[∑[∑[n+1]/a(n-1)]-n]` -/
def P2949444597331025269.Spec : Prop :=
  ∀ n, P2949444597331025269.a n = (A180861 (n + 1) : ℚ)

end A180861

/-! ## A180861.P12077839774142314039

`∑[∑[A145051(n+1)]-n]`
-/

namespace A180861.P12077839774142314039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180861.P12077839774142314039

namespace A180861

/-- `∑[∑[A145051(n+1)]-n]` -/
def P12077839774142314039.Spec : Prop :=
  ∀ n, P12077839774142314039.a n = A180861 (n + 1)

end A180861

/-! ## A180861.P12129837162411739593

`∑[∑[A339913(2*(n+1))]-n]`
-/

namespace A180861.P12129837162411739593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180861.P12129837162411739593

namespace A180861

/-- `∑[∑[A339913(2*(n+1))]-n]` -/
def P12129837162411739593.Spec : Prop :=
  ∀ n, P12129837162411739593.a n = A180861 (n + 1)

end A180861

/-! ## A180861.P14638530902722574067

`A111710(n+1)+A034828(n)`
-/

namespace A180861.P14638530902722574067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111710 (n + 1) + A034828 n

end

end A180861.P14638530902722574067

namespace A180861

/-- `A111710(n+1)+A034828(n)` -/
def P14638530902722574067.Spec : Prop :=
  ∀ n, P14638530902722574067.a n = A180861 (n + 1)

end A180861

/-! ## A180861.P10163932548562380245

`A175287(n)+A003453(n+5)`
-/

namespace A180861.P10163932548562380245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175287 n + A003453 (n + 5)

end

end A180861.P10163932548562380245

namespace A180861

/-- `A175287(n)+A003453(n+5)` -/
def P10163932548562380245.Spec : Prop :=
  ∀ n, P10163932548562380245.a n = A180861 (n + 1)

end A180861

/-! ## A180861.P12836065139129332550

`∑[A000035(n)+∑[A029579(n)]]`
-/

namespace A180861.P12836065139129332550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180861.P12836065139129332550

namespace A180861

/-- `∑[A000035(n)+∑[A029579(n)]]` -/
def P12836065139129332550.Spec : Prop :=
  ∀ n, P12836065139129332550.a n = A180861 (n + 1)

end A180861

/-! ## A180861.P4515618071192695147

`A006918(n)+∑[∑[A065033(n)]]`
-/

namespace A180861.P4515618071192695147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180861.P4515618071192695147

namespace A180861

/-- `A006918(n)+∑[∑[A065033(n)]]` -/
def P4515618071192695147.Spec : Prop :=
  ∀ n, P4515618071192695147.a n = A180861 (n + 1)

end A180861

/-! ## A180861.P215392353820064974

`∑[A008619(n+1)+A001318(n)]`
-/

namespace A180861.P215392353820064974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) + A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180861.P215392353820064974

namespace A180861

/-- `∑[A008619(n+1)+A001318(n)]` -/
def P215392353820064974.Spec : Prop :=
  ∀ n, P215392353820064974.a n = A180861 (n + 1)

end A180861

/-! ## A180861.P4391288328827706233

`A211379(n+3)+A034856(n+1)`
-/

namespace A180861.P4391288328827706233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211379 (n + 3) + A034856 (n + 1)

end

end A180861.P4391288328827706233

namespace A180861

/-- `A211379(n+3)+A034856(n+1)` -/
def P4391288328827706233.Spec : Prop :=
  ∀ n, P4391288328827706233.a n = A180861 (n + 1)

end A180861

/-! ## A180861.P16371735190008731129

`A006578(n+1)+A111384(n+1)-A002620(n)`
-/

namespace A180861.P16371735190008731129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 (n + 1) + (A111384 (n + 1) - A002620 n)

end

end A180861.P16371735190008731129

namespace A180861

/-- `A006578(n+1)+A111384(n+1)-A002620(n)` -/
def P16371735190008731129.Spec : Prop :=
  ∀ n, P16371735190008731129.a n = A180861 (n + 1)

end A180861

/-! ## A180861.P8409841837004581461

`∑[A211539(n+1)+1]`
-/

namespace A180861.P8409841837004581461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211539 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180861.P8409841837004581461

namespace A180861

/-- `∑[A211539(n+1)+1]` -/
def P8409841837004581461.Spec : Prop :=
  ∀ n, P8409841837004581461.a n = A180861 (n + 1)

end A180861

/-! ## A180861.P4905643449459923460

`∑[A144065(n+1)-n]`
-/

namespace A180861.P4905643449459923460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144065 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180861.P4905643449459923460

namespace A180861

/-- `∑[A144065(n+1)-n]` -/
def P4905643449459923460.Spec : Prop :=
  ∀ n, P4905643449459923460.a n = A180861 (n + 1)

end A180861

/-! ## A180861.P4597224539563298626

`(A005998(n+2)+n)/2`
-/

namespace A180861.P4597224539563298626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005998 (n + 2) + (n : ℤ) : ℚ) / 2

end

end A180861.P4597224539563298626

namespace A180861

/-- `(A005998(n+2)+n)/2` -/
def P4597224539563298626.Spec : Prop :=
  ∀ n, P4597224539563298626.a n = (A180861 (n + 1) : ℚ)

end A180861

/-! ## A180861.P10073128737675318300

`∑[∑[A065423(n+2)]+1]`
-/

namespace A180861.P10073128737675318300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180861.P10073128737675318300

namespace A180861

/-- `∑[∑[A065423(n+2)]+1]` -/
def P10073128737675318300.Spec : Prop :=
  ∀ n, P10073128737675318300.a n = A180861 (n + 1)

end A180861

/-! ## A180861.P9875906105478451684

`∑[∑[A026741(n+2)]-n]`
-/

namespace A180861.P9875906105478451684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180861.P9875906105478451684

namespace A180861

/-- `∑[∑[A026741(n+2)]-n]` -/
def P9875906105478451684.Spec : Prop :=
  ∀ n, P9875906105478451684.a n = A180861 (n + 1)

end A180861

/-!
# A180862: Square array read by antidiagonals: T(m,n) is the Wiener index of the flower graph F(m,n) (m>=2, n>=1). F(m,n) is the graph obtained by joining with an edge a node in the star graph on m nodes to an end-node of the path graph P_n. The Wiener index of a connected graph is the sum of distances between all unordered pairs of vertices in the graph.

The programs for A180862, there is no canonical definition to state claims against.
-/

/-! ## A180862.P6007383588407012491

`A140765(n)+(n-comp[∑[n]])²`
-/

namespace A180862.P6007383588407012491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140765 n + ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2

end

end A180862.P6007383588407012491

/-! ## A180862.P10008304394157804335

`A140978(n+1)+A140765(n)`
-/

namespace A180862.P10008304394157804335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140978 (n + 1) + A140765 n

end

end A180862.P10008304394157804335

/-! ## A180862.P11197438083477206549

`A180854(n+1)+A025747(∑[A010054(n)])`
-/

namespace A180862.P11197438083477206549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180854 (n + 1) + A025747 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A180862.P11197438083477206549

/-! ## A180862.P17407936957690407596

`A180854(n+1)+A025747(A002024(n+1))`
-/

namespace A180862.P17407936957690407596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180854 (n + 1) + A025747 (A002024 (n + 1)).toNat

end

end A180862.P17407936957690407596

/-! ## A180862.P2904707728307472136

`A180854(n+1)+A127739(A080036(n+1))`
-/

namespace A180862.P2904707728307472136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180854 (n + 1) + A127739 (A080036 (n + 1)).toNat

end

end A180862.P2904707728307472136

/-! ## A180862.P7560300358543210020

`A180854(n+1)+A000217(A003057(n+2))`
-/

namespace A180862.P7560300358543210020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180854 (n + 1) + A000217 (A003057 (n + 2)).toNat

end

end A180862.P7560300358543210020

/-! ## A180862.P14888846802512975188

`A180854(n+1)+A000217(A002024(n+1)+1)`
-/

namespace A180862.P14888846802512975188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180854 (n + 1) + A000217 (A002024 (n + 1) + 1).toNat

end

end A180862.P14888846802512975188

/-! ## A180862.P1987946628559059886

`A180854(n+1)+A127739(A127739(n+1)+1)`
-/

namespace A180862.P1987946628559059886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180854 (n + 1) + A127739 (A127739 (n + 1) + 1).toNat

end

end A180862.P1987946628559059886

/-!
# A180863: Wiener index of the n-sun graph.

The programs for A180863, the canonical program `A180863.P3776371991548638441` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180863 has offset 2).

The definition of A180863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180863.P3776371991548638441

`∑[record[xor(7, n+1)]]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A180863

/-- `∑[record[xor(7, n+1)]]` -/
def P3776371991548638441.Spec : Prop :=
  ∀ n, (P3776371991548638441.a n : ℤ) = A180863 (n + 2)

theorem P3776371991548638441.correct : P3776371991548638441.Spec := by
  intro n
  simp only [A180863, Nat.add_sub_cancel]

end A180863

/-! ## A180863.P1107798408392894923

`∑[record[xor(7, n)]]-1`
-/

namespace A180863.P1107798408392894923
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A180863.P1107798408392894923

namespace A180863

/-- `∑[record[xor(7, n)]]-1` -/
def P1107798408392894923.Spec : Prop :=
  ∀ n, P1107798408392894923.a n = A180863 (n + 2)

end A180863

/-! ## A180863.P7156352100528106549

`∑[8*n+7]-1`
-/

namespace A180863.P7156352100528106549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A180863.P7156352100528106549

namespace A180863

/-- `∑[8*n+7]-1` -/
def P7156352100528106549.Spec : Prop :=
  ∀ n, P7156352100528106549.a n = A180863 (n + 2)

end A180863

/-! ## A180863.P11653414896905924212

`(n+2)*record[xor(3, n)]`
-/

namespace A180863.P11653414896905924212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180863.P11653414896905924212

namespace A180863

/-- `(n+2)*record[xor(3, n)]` -/
def P11653414896905924212.Spec : Prop :=
  ∀ n, (P11653414896905924212.a n : ℤ) = A180863 (n + 2)

end A180863

/-! ## A180863.P53022088588875426

`∑[a(n-1)+8]` with `a(0)=6, a(1)=15`
-/

namespace A180863.P53022088588875426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 15] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180863.P53022088588875426

namespace A180863

/-- `∑[a(n-1)+8]` -/
def P53022088588875426.Spec : Prop :=
  ∀ n, (P53022088588875426.a n : ℤ) = A180863 (n + 2)

end A180863

/-! ## A180863.P16928347349490619335

`(n+2)*or(3, 4*n)`
-/

namespace A180863.P16928347349490619335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.lor 3 (4 * n)

end

end A180863.P16928347349490619335

namespace A180863

/-- `(n+2)*or(3, 4*n)` -/
def P16928347349490619335.Spec : Prop :=
  ∀ n, (P16928347349490619335.a n : ℤ) = A180863 (n + 2)

end A180863

/-! ## A180863.P6906657095838708796

`(n+2)*xor(3, 4*n)`
-/

namespace A180863.P6906657095838708796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.xor 3 (4 * n)

end

end A180863.P6906657095838708796

namespace A180863

/-- `(n+2)*xor(3, 4*n)` -/
def P6906657095838708796.Spec : Prop :=
  ∀ n, (P6906657095838708796.a n : ℤ) = A180863 (n + 2)

end A180863

/-! ## A180863.P9383827412684286690

`(n+2)*lt[1, val(n+1, 2)]`
-/

namespace A180863.P9383827412684286690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180863.P9383827412684286690

namespace A180863

/-- `(n+2)*lt[1, val(n+1, 2)]` -/
def P9383827412684286690.Spec : Prop :=
  ∀ n, (P9383827412684286690.a n : ℤ) = A180863 (n + 2)

end A180863

/-! ## A180863.P2139448148652118697

`(record[lcm(2, n+1)]+1)*(n+2)`
-/

namespace A180863.P2139448148652118697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1) * (n + 2)

end

end A180863.P2139448148652118697

namespace A180863

/-- `(record[lcm(2, n+1)]+1)*(n+2)` -/
def P2139448148652118697.Spec : Prop :=
  ∀ n, (P2139448148652118697.a n : ℤ) = A180863 (n + 2)

end A180863

/-! ## A180863.P3305271420865931843

`(n+2)*Δ[C(2*n+1, 2)]`
-/

namespace A180863.P3305271420865931843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A180863.P3305271420865931843

namespace A180863

/-- `(n+2)*Δ[C(2*n+1, 2)]` -/
def P3305271420865931843.Spec : Prop :=
  ∀ n, P3305271420865931843.a n = A180863 (n + 2)

end A180863

/-! ## A180863.P10353851550719974700

`floor(8*n+a(n-1)+7)` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A180863.P10353851550719974700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  8 * n + (a (n - 1) + 7)

end

end A180863.P10353851550719974700

namespace A180863

/-- `floor(8*n+a(n-1)+7)` -/
def P10353851550719974700.Spec : Prop :=
  ∀ n, (P10353851550719974700.a n : ℤ) = A180863 (n + 2)

end A180863

/-! ## A180863.P7018148171245288610

`lcm(n+2, n+3-(2*n+3)²)`
-/

namespace A180863.P7018148171245288610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 2 : ℤ) ((n + 3 : ℤ) - ((2 * n + 3) ^ 2 : ℤ))

end

end A180863.P7018148171245288610

namespace A180863

/-- `lcm(n+2, n+3-(2*n+3)²)` -/
def P7018148171245288610.Spec : Prop :=
  ∀ n, (P7018148171245288610.a n : ℤ) = A180863 (n + 2)

end A180863

/-! ## A180863.P9491410015402237128

`∑[A281813(n)+3]`
-/

namespace A180863.P9491410015402237128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281813 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180863.P9491410015402237128

namespace A180863

/-- `∑[A281813(n)+3]` -/
def P9491410015402237128.Spec : Prop :=
  ∀ n, P9491410015402237128.a n = A180863 (n + 2)

end A180863

/-! ## A180863.P3910033439252358305

`∑[xor(7, A022144(n))]`
-/

namespace A180863.P3910033439252358305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A022144 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180863.P3910033439252358305

namespace A180863

/-- `∑[xor(7, A022144(n))]` -/
def P3910033439252358305.Spec : Prop :=
  ∀ n, P3910033439252358305.a n = A180863 (n + 2)

end A180863

/-! ## A180863.P10810690970137299055

`(n+2)*A004767(n)`
-/

namespace A180863.P10810690970137299055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A004767 n

end

end A180863.P10810690970137299055

namespace A180863

/-- `(n+2)*A004767(n)` -/
def P10810690970137299055.Spec : Prop :=
  ∀ n, P10810690970137299055.a n = A180863 (n + 2)

end A180863

/-! ## A180863.P13370448737840303772

`(n+2)*sqrt(A016838(n))`
-/

namespace A180863.P13370448737840303772
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) * Real.sqrt (A016838 n : ℝ)

end

end A180863.P13370448737840303772

namespace A180863

/-- `(n+2)*sqrt(A016838(n))` -/
def P13370448737840303772.Spec : Prop :=
  ∀ n, P13370448737840303772.a n = (A180863 (n + 2) : ℝ)

end A180863

/-! ## A180863.P6463152562390670488

`(n+2)*Δ[A014105(n)]`
-/

namespace A180863.P6463152562390670488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A180863.P6463152562390670488

namespace A180863

/-- `(n+2)*Δ[A014105(n)]` -/
def P6463152562390670488.Spec : Prop :=
  ∀ n, P6463152562390670488.a n = A180863 (n + 2)

end A180863

/-! ## A180863.P4087718727048309966

`(n+2)*(A016825(n)+1)`
-/

namespace A180863.P4087718727048309966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A016825 n + 1)

end

end A180863.P4087718727048309966

namespace A180863

/-- `(n+2)*(A016825(n)+1)` -/
def P4087718727048309966.Spec : Prop :=
  ∀ n, P4087718727048309966.a n = A180863 (n + 2)

end A180863

/-!
# A180864: Trajectory of 13 under map n->A006368(n).

The programs for A180864, the canonical program `A180864.P12688138741425306482` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180864 has offset 0).

The definition of A180864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180864.P12688138741425306482

`A168221(a(n-2))` with `a(0)=13, a(1)=10`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A180864

/-- `A168221(a(n-2))` -/
def P12688138741425306482.Spec : Prop :=
  ∀ n, P12688138741425306482.a n = A180864 n

theorem P12688138741425306482.correct : P12688138741425306482.Spec := by
  intro n
  simp only [A180864]

end A180864

/-! ## A180864.P12939227867399427904

`A006368(a(n-1))` with `a(0)=13`
-/

namespace A180864.P12939227867399427904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A006368 (a (n - 1)).toNat

end

end A180864.P12939227867399427904

namespace A180864

/-- `A006368(a(n-1))` -/
def P12939227867399427904.Spec : Prop :=
  ∀ n, P12939227867399427904.a n = A180864 n

end A180864

/-! ## A180864.P2605765278034521154

`A351412(xor(1, a(n-1)))` with `a(0)=13`
-/

namespace A180864.P2605765278034521154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A351412 (Int.xor 1 (a (n - 1))).toNat

end

end A180864.P2605765278034521154

namespace A180864

/-- `A351412(xor(1, a(n-1)))` -/
def P2605765278034521154.Spec : Prop :=
  ∀ n, P2605765278034521154.a n = A180864 n

end A180864

/-! ## A180864.P9273835978810811559

`floor(A165355(a(n-1))/2)` with `a(0)=13`
-/

namespace A180864.P9273835978810811559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  ⌊(A165355 (a (n - 1)).toNat : ℚ) / 2⌋

end

end A180864.P9273835978810811559

namespace A180864

/-- `floor(A165355(a(n-1))/2)` -/
def P9273835978810811559.Spec : Prop :=
  ∀ n, P9273835978810811559.a n = A180864 n

end A180864

/-! ## A180864.P11368296838004348283

`A342131(a(n-1)-1)+1` with `a(0)=13`
-/

namespace A180864.P11368296838004348283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A342131 (a (n - 1) - 1).toNat + 1

end

end A180864.P11368296838004348283

namespace A180864

/-- `A342131(a(n-1)-1)+1` -/
def P11368296838004348283.Spec : Prop :=
  ∀ n, P11368296838004348283.a n = A180864 n

end A180864

/-! ## A180864.P6938410976994910926

`A006368(ceil(a(A023443(n))))` with `a(0)=13`

`ceil` is left out, it is the identity on integers.
-/

namespace A180864.P6938410976994910926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A006368 (a (A023443 n).toNat).toNat

end

end A180864.P6938410976994910926

namespace A180864

/-- `A006368(ceil(a(A023443(n))))` -/
def P6938410976994910926.Spec : Prop :=
  ∀ n, P6938410976994910926.a n = A180864 n

end A180864

/-! ## A180864.P6115534818584585706

`A074306(A159966(a(n-1)))` with `a(0)=13`
-/

namespace A180864.P6115534818584585706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A074306 (A159966 (a (n - 1)).toNat).toNat

end

end A180864.P6115534818584585706

namespace A180864

/-- `A074306(A159966(a(n-1)))` -/
def P6115534818584585706.Spec : Prop :=
  ∀ n, P6115534818584585706.a n = A180864 n

end A180864

/-! ## A180864.P9853672226395253051

`A168222(A168222(A028393(n)))`
-/

namespace A180864.P9853672226395253051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168222 (A168222 (A028393 n).toNat).toNat

end

end A180864.P9853672226395253051

namespace A180864

/-- `A168222(A168222(A028393(n)))` -/
def P9853672226395253051.Spec : Prop :=
  ∀ n, P9853672226395253051.a n = A180864 n

end A180864

/-! ## A180864.P4554481520155322534

`A004526(A165355(a(n-1)))` with `a(0)=13`
-/

namespace A180864.P4554481520155322534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A004526 (A165355 (a (n - 1)).toNat).toNat

end

end A180864.P4554481520155322534

namespace A180864

/-- `A004526(A165355(a(n-1)))` -/
def P4554481520155322534.Spec : Prop :=
  ∀ n, P4554481520155322534.a n = A180864 n

end A180864

/-!
# A180868: Numbers n such that n and n+1 are semiprime powers.

The programs for A180868, the canonical program `A180868.P7115571650315980028` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180868 has offset 1).

The definition of A180868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180868.P13828026034830860351

`∩[A085155(n+1)-1, A085155(n+1)]`
-/

namespace A180868.P13828026034830860351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180868.P13828026034830860351

namespace A180868

/-- `∩[A085155(n+1)-1, A085155(n+1)]` -/
def P13828026034830860351.Spec : Prop :=
  ∀ n, (P13828026034830860351.a n : ℤ) = A180868 (n + 1)

end A180868

/-! ## A180868.P7115571650315980028

`A085155(eq[1, A085155(n+2)-A085155(n+1)]+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A180868

/-- `A085155(eq[1, A085155(n+2)-A085155(n+1)]+1)` -/
def P7115571650315980028.Spec : Prop :=
  ∀ n, P7115571650315980028.a n = A180868 (n + 1)

theorem P7115571650315980028.correct : P7115571650315980028.Spec := by
  intro n
  simp only [A180868, Nat.add_sub_cancel]

end A180868

/-! ## A180868.P16107043131846938370

`∩[A085155(n+1), A023443(A085155(n+1))]`
-/

namespace A180868.P16107043131846938370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A085155 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180868.P16107043131846938370

namespace A180868

/-- `∩[A085155(n+1), A023443(A085155(n+1))]` -/
def P16107043131846938370.Spec : Prop :=
  ∀ n, (P16107043131846938370.a n : ℤ) = A180868 (n + 1)

end A180868

/-! ## A180868.P1521758773756626204

`A001358(A079905(n+2)*A287377(n))`
-/

namespace A180868.P1521758773756626204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A079905 (n + 2) * A287377 n).toNat

end

end A180868.P1521758773756626204

namespace A180868

/-- `A001358(A079905(n+2)*A287377(n))` -/
def P1521758773756626204.Spec : Prop :=
  ∀ n, P1521758773756626204.a n = A180868 (n + 1)

end A180868

/-! ## A180868.P16446214271261893653

`A001358(A079905(n+2)^A287377(n))`
-/

namespace A180868.P16446214271261893653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.roundAway ((A079905 (n + 2) : ℚ) ^ (A287377 n : ℤ))).toNat

end

end A180868.P16446214271261893653

namespace A180868

/-- `A001358(A079905(n+2)^A287377(n))` -/
def P16446214271261893653.Spec : Prop :=
  ∀ n, P16446214271261893653.a n = A180868 (n + 1)

end A180868

/-!
# A180869: E.g.f.: A(x) = Sum_{n>=0} log(1+x)^[n*phi] / [n*phi]!, where [n*phi] = A000201(n), the lower Wythoff sequence, and phi = (1+sqrt(5))/2.

The programs for A180869, there is no canonical definition to state claims against.
-/

/-! ## A180869.P14259682009781026220

`A036987(A001423(n))-A357836(n)`
-/

namespace A180869.P14259682009781026220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A001423 n).toNat - A357836 n

end

end A180869.P14259682009781026220

/-! ## A180869.P5708256198133070297

`A036987(A001705(n))-A357836(n)`
-/

namespace A180869.P5708256198133070297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A001705 n).toNat - A357836 n

end

end A180869.P5708256198133070297

/-! ## A180869.P17911339514548122869

`A036297(A003229(n))-A357836(n)`
-/

namespace A180869.P17911339514548122869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036297 (A003229 n).toNat - A357836 n

end

end A180869.P17911339514548122869

/-!
# A180870: D(n, x) is the Dirichlet kernel sin((n+1/2)x)/sin(x/2). The triangle gives in row n the coefficients of descending powers of x of the polynomial D(n, arccos(x)).

The programs for A180870, there is no canonical definition to state claims against.
-/

/-! ## A180870.P14036648801952846869

`A244419(∑[2*n]%comp[∑[n]])`
-/

namespace A180870.P14036648801952846869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244419 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A180870.P14036648801952846869

/-! ## A180870.P14094059002695736176

`A244419(∑[char[∑[n]]]²-(n+1))`
-/

namespace A180870.P14094059002695736176
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244419 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A180870.P14094059002695736176

/-! ## A180870.P16060739593515861382

`2*A053118(n)-A228565(n)`
-/

namespace A180870.P16060739593515861382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053118 n - A228565 n

end

end A180870.P16060739593515861382

/-! ## A180870.P7369396039236745490

`A244419(A061579(n))^ceil(acot(n))`
-/

namespace A180870.P7369396039236745490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244419 (A061579 n).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A180870.P7369396039236745490

/-! ## A180870.P7943550013814125777

`A244419(A061579(n))+A025439(n)`
-/

namespace A180870.P7943550013814125777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244419 (A061579 n).toNat + A025439 n

end

end A180870.P7943550013814125777

/-! ## A180870.P6691409053490657730

`A055975(A054582(n))*A108299(n)`
-/

namespace A180870.P6691409053490657730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (A054582 n).toNat * A108299 n

end

end A180870.P6691409053490657730

/-! ## A180870.P17658133636493995285

`A014451(A002262(n))*A228565(n)`
-/

namespace A180870.P17658133636493995285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014451 (A002262 n).toNat * A228565 n

end

end A180870.P17658133636493995285

/-! ## A180870.P4242569382088984566

`A004718(A059268(n))*A228565(n)`
-/

namespace A180870.P4242569382088984566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A059268 n).toNat * A228565 n

end

end A180870.P4242569382088984566

/-! ## A180870.P12247485433648155107

`A097807(A061579(n))*A228565(n)`
-/

namespace A180870.P12247485433648155107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A061579 n).toNat * A228565 n

end

end A180870.P12247485433648155107

/-! ## A180870.P4671612461737950819

`A130321(n)*A267482(A061579(n))`
-/

namespace A180870.P4671612461737950819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A267482 (A061579 n).toNat

end

end A180870.P4671612461737950819

/-!
# A180874: Lassalle's sequence connected with Catalan numbers and Narayana polynomials.

The programs for A180874, there is no canonical definition to state claims against.
-/

/-! ## A180874.P10785106569917030622

`A000108(n+1)/2*A188664(n+1)`
-/

namespace A180874.P10785106569917030622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / 2 * (A188664 (n + 1) : ℚ)

end

end A180874.P10785106569917030622

/-!
# A180875: Sum_{j>=1} j^n*2^j/binomial(2*j,j) = r_n*Pi/2 + s_n with integer r_n and s_n; sequence gives s_n.

The programs for A180875, there is no canonical definition to state claims against.
-/

/-! ## A180875.P6281951476330796170

`A014307(n+1)+A132436(n+1)-A000007(n)`
-/

namespace A180875.P6281951476330796170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014307 (n + 1) + (A132436 (n + 1) - A000007 n)

end

end A180875.P6281951476330796170

/-! ## A180875.P15992560904201071407

`A004396(∑[A248871(n+1)])`
-/

namespace A180875.P15992560904201071407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A180875.P15992560904201071407

/-!
# A180876: a(n) = sopfr(n) - (floor(sqrt(n))*bigomega(n)).

The programs for A180876, the canonical program `A180876.P15554643865341676063` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180876 has offset 1).

The definition of A180876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180876.P15554643865341676063

`A001414(n+1)-A001222(n+1)*A000196(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A180876

/-- `A001414(n+1)-A001222(n+1)*A000196(n+1)` -/
def P15554643865341676063.Spec : Prop :=
  ∀ n, P15554643865341676063.a n = A180876 (n + 1)

theorem P15554643865341676063.correct : P15554643865341676063.Spec := by
  intro n
  simp only [A180876, Nat.add_sub_cancel]

end A180876

/-! ## A180876.P16076719561519441380

`A001414(n+1)-A001222(A117926(n+1))`
-/

namespace A180876.P16076719561519441380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) - A001222 (A117926 (n + 1)).toNat

end

end A180876.P16076719561519441380

namespace A180876

/-- `A001414(n+1)-A001222(A117926(n+1))` -/
def P16076719561519441380.Spec : Prop :=
  ∀ n, P16076719561519441380.a n = A180876 (n + 1)

end A180876

/-!
# A180879: Number of permutations p() of 1..n+2 with centered difference p(i+1)-p(i-1) < 0 exactly once.

The programs for A180879, the canonical program `A180879.P15904673467512840993` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180879 has offset 1).

The definition of A180879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180879.P15904673467512840993

`A001405(n+3)*A077866(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A180879

/-- `A001405(n+3)*A077866(n)` -/
def P15904673467512840993.Spec : Prop :=
  ∀ n, P15904673467512840993.a n = A180879 (n + 1)

theorem P15904673467512840993.correct : P15904673467512840993.Spec := by
  intro n
  simp only [A180879, Nat.add_sub_cancel]

end A180879

/-! ## A180879.P3165844913107535771

`A180887(∑[n+1]+2)`
-/

namespace A180879.P3165844913107535771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A180879.P3165844913107535771

namespace A180879

/-- `A180887(∑[n+1]+2)` -/
def P3165844913107535771.Spec : Prop :=
  ∀ n, P3165844913107535771.a n = A180879 (n + 1)

end A180879

/-! ## A180879.P18366160643638926527

`record[A010054(n)*A180887(n+2)]`
-/

namespace A180879.P18366160643638926527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A180887 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180879.P18366160643638926527

namespace A180879

/-- `record[A010054(n)*A180887(n+2)]` -/
def P18366160643638926527.Spec : Prop :=
  ∀ n, P18366160643638926527.a n = A180879 (n + 1)

end A180879

/-! ## A180879.P6555671735817505149

`record[A180887(A133263(A008616(n)))]`
-/

namespace A180879.P6555671735817505149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A133263 (A008616 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180879.P6555671735817505149

namespace A180879

/-- `record[A180887(A133263(A008616(n)))]` -/
def P6555671735817505149.Spec : Prop :=
  ∀ n, P6555671735817505149.a n = A180879 (n + 1)

end A180879

/-! ## A180879.P13114894086381098087

`record[A180887(A133263(A008624(n)))]`
-/

namespace A180879.P13114894086381098087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A133263 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180879.P13114894086381098087

namespace A180879

/-- `record[A180887(A133263(A008624(n)))]` -/
def P13114894086381098087.Spec : Prop :=
  ∀ n, P13114894086381098087.a n = A180879 (n + 1)

end A180879

/-! ## A180879.P17630980488530085752

`A180887(A000096(n+1))%A173776(n+1)`
-/

namespace A180879.P17630980488530085752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180887 (A000096 (n + 1)).toNat) (A173776 (n + 1))

end

end A180879.P17630980488530085752

namespace A180879

/-- `A180887(A000096(n+1))%A173776(n+1)` -/
def P17630980488530085752.Spec : Prop :=
  ∀ n, P17630980488530085752.a n = A180879 (n + 1)

end A180879

/-!
# A180880: Number of permutations p() of 1..n+3 with centered difference p(i+1)-p(i-1) < 0 exactly twice.

The programs for A180880, there is no canonical definition to state claims against.
-/

/-! ## A180880.P14301307097576731288

`A180887(∑[n+2]+4)`
-/

namespace A180880.P14301307097576731288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A180880.P14301307097576731288

/-! ## A180880.P11461009600251248241

`lcm(2, A180887(A167614(n+1)))`
-/

namespace A180880.P11461009600251248241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A180887 (A167614 (n + 1)).toNat)

end

end A180880.P11461009600251248241

/-! ## A180880.P25155680626332162

`A180887(A167614(n+1))+A000007(n+1)`
-/

namespace A180880.P25155680626332162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A180880.P25155680626332162

/-! ## A180880.P4834458486408405702

`A178334(n+1)*A180887(A167614(n+1))`
-/

namespace A180880.P4834458486408405702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 1) * A180887 (A167614 (n + 1)).toNat

end

end A180880.P4834458486408405702

/-! ## A180880.P1042199217156315052

`A180887(A167614(n+1))%A204710(n+1)`
-/

namespace A180880.P1042199217156315052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180887 (A167614 (n + 1)).toNat) (A204710 (n + 1))

end

end A180880.P1042199217156315052

/-!
# A180881: Number of permutations p() of 1..n+4 with centered difference p(i+1)-p(i-1) < 0 exactly 3 times.

The programs for A180881, there is no canonical definition to state claims against.
-/

/-! ## A180881.P4053104231435786206

`A180887(A052905(n)+9)`
-/

namespace A180881.P4053104231435786206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A052905 n + 9).toNat

end

end A180881.P4053104231435786206

/-! ## A180881.P4341848477163319794

`A180887(A167614(n+2)+1)`
-/

namespace A180881.P4341848477163319794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A167614 (n + 2) + 1).toNat

end

end A180881.P4341848477163319794

/-! ## A180881.P143540080606202646

`A180887(A000124(n+3)+3)`
-/

namespace A180881.P143540080606202646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A000124 (n + 3) + 3).toNat

end

end A180881.P143540080606202646

/-! ## A180881.P14164594261299606469

`A180887(A167487(n+2)-3)`
-/

namespace A180881.P14164594261299606469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A167487 (n + 2) - 3).toNat

end

end A180881.P14164594261299606469

/-! ## A180881.P17498192463816040126

`A180887(A000096(n+2)+5)`
-/

namespace A180881.P17498192463816040126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A000096 (n + 2) + 5).toNat

end

end A180881.P17498192463816040126

/-! ## A180881.P16607215831006721108

`A180887(A034856(n+2)+6)`
-/

namespace A180881.P16607215831006721108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A034856 (n + 2) + 6).toNat

end

end A180881.P16607215831006721108

/-! ## A180881.P5048541095943411387

`record[A010054(n+6)*A180887(n+10)]`
-/

namespace A180881.P5048541095943411387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 6) * A180887 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180881.P5048541095943411387

/-! ## A180881.P6766480922012240810

`A180887(A167499(n+7)-A016861(n+6))`
-/

namespace A180881.P6766480922012240810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A167499 (n + 7) - A016861 (n + 6)).toNat

end

end A180881.P6766480922012240810

/-! ## A180881.P10234073641285444177

`A180887(A374004(n+1))`
-/

namespace A180881.P10234073641285444177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A374004 (n + 1)).toNat

end

end A180881.P10234073641285444177

/-! ## A180881.P11185369207431862588

`A180887(A055998(n+2))`
-/

namespace A180881.P11185369207431862588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A055998 (n + 2)).toNat

end

end A180881.P11185369207431862588

/-!
# A180882: Number of permutations p() of 1..n+5 with centered difference p(i+1)-p(i-1) < 0 exactly 4 times.

The programs for A180882, there is no canonical definition to state claims against.
-/

/-! ## A180882.P4117874551579947175

`A180887(A000217(n+4)+5)`
-/

namespace A180882.P4117874551579947175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A000217 (n + 4) + 5).toNat

end

end A180882.P4117874551579947175

/-! ## A180882.P18359767000847002504

`A180887(A055998(n+2)+8)`
-/

namespace A180882.P18359767000847002504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A055998 (n + 2) + 8).toNat

end

end A180882.P18359767000847002504

/-! ## A180882.P4845773722100913431

`A180887(A374005(n+1))`
-/

namespace A180882.P4845773722100913431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A374005 (n + 1)).toNat

end

end A180882.P4845773722100913431

/-! ## A180882.P7343247746090968574

`A180887(A046691(n+3))`
-/

namespace A180882.P7343247746090968574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A046691 (n + 3)).toNat

end

end A180882.P7343247746090968574

/-! ## A180882.P7468700016445043237

`A180887(eq[4, A193592(n)])`
-/

namespace A180882.P7468700016445043237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180882.P7468700016445043237

/-! ## A180882.P10643324936025855170

`A180887(eq[6, A185782(n+1)])`
-/

namespace A180882.P10643324936025855170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180882.P10643324936025855170

/-! ## A180882.P5879144888516474891

`A180887(eq[8, A057728(n+1)])`
-/

namespace A180882.P5879144888516474891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180882.P5879144888516474891

/-!
# A180883: Number of permutations p() of 1..n+6 with centered difference p(i+1)-p(i-1) < 0 exactly 5 times.

The programs for A180883, there is no canonical definition to state claims against.
-/

/-! ## A180883.P9485283009435788910

`A180887(A000217(n+5)+6)`
-/

namespace A180883.P9485283009435788910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A000217 (n + 5) + 6).toNat

end

end A180883.P9485283009435788910

/-! ## A180883.P4971942295220423796

`A180887(eq[7, A131818(n+1)])`
-/

namespace A180883.P4971942295220423796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180883.P4971942295220423796

/-! ## A180883.P9150448019976105700

`A180887(A000124(n+6)-(n+1))`
-/

namespace A180883.P9150448019976105700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A180883.P9150448019976105700

/-! ## A180883.P9602570241260502183

`A180887(A374007(n+1))`
-/

namespace A180883.P9602570241260502183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A374007 (n + 1)).toNat

end

end A180883.P9602570241260502183

/-! ## A180883.P2310889226385428010

`A180887(eq[3, A219347(n)])`
-/

namespace A180883.P2310889226385428010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180883.P2310889226385428010

/-! ## A180883.P691418996392586480

`A180887(eq[5, A193592(n)])`
-/

namespace A180883.P691418996392586480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180883.P691418996392586480

/-! ## A180883.P11513952232721383348

`A180887(A000096(n+5)-4)`
-/

namespace A180883.P11513952232721383348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A000096 (n + 5) - 4).toNat

end

end A180883.P11513952232721383348

/-! ## A180883.P8606804183523210600

`A180887(eq[8, A185782(n+1)])`
-/

namespace A180883.P8606804183523210600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180883.P8606804183523210600

/-! ## A180883.P8649742619121485843

`A180887(eq[16, A057728(n+1)])`
-/

namespace A180883.P8649742619121485843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180883.P8649742619121485843

/-! ## A180883.P76759096618518614

`A180887(Δ[Δ[A006504(n+1)]])`
-/

namespace A180883.P76759096618518614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (f1 (n + 1) - f1 n).toNat

end

end A180883.P76759096618518614

/-!
# A180884: Number of permutations p() of 1..n+7 with centered difference p(i+1)-p(i-1) < 0 exactly 6 times.

The programs for A180884, there is no canonical definition to state claims against.
-/

/-! ## A180884.P12045906191151737189

`A180887(A167487(n+5))`
-/

namespace A180884.P12045906191151737189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A167487 (n + 5)).toNat

end

end A180884.P12045906191151737189

/-! ## A180884.P16506754551764612308

`A180887(A000124(n+6)+6)`
-/

namespace A180884.P16506754551764612308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A000124 (n + 6) + 6).toNat

end

end A180884.P16506754551764612308

/-! ## A180884.P4843384003903958206

`A180887(A000096(n+5)+8)`
-/

namespace A180884.P4843384003903958206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A000096 (n + 5) + 8).toNat

end

end A180884.P4843384003903958206

/-! ## A180884.P18425816821550746845

`A180887(eq[8, A131818(n+1)])`
-/

namespace A180884.P18425816821550746845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180884.P18425816821550746845

/-! ## A180884.P13879159538211765285

`A180887(A374008(n+1))`
-/

namespace A180884.P13879159538211765285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A374008 (n + 1)).toNat

end

end A180884.P13879159538211765285

/-! ## A180884.P18395333181793835975

`A180887(eq[4, A219347(n)])`
-/

namespace A180884.P18395333181793835975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180884.P18395333181793835975

/-! ## A180884.P7613372162391696590

`A180887(eq[6, A193592(n)])`
-/

namespace A180884.P7613372162391696590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180884.P7613372162391696590

/-! ## A180884.P16499286529730628351

`A180887(eq[10, A185782(n+1)])`
-/

namespace A180884.P16499286529730628351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180884.P16499286529730628351

/-! ## A180884.P10169206988511725585

`A180887(A000217(n+6)+n+1)`
-/

namespace A180884.P10169206988511725585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A180884.P10169206988511725585

/-!
# A180885: Number of permutations p() of 1..n+8 with centered difference p(i+1)-p(i-1) < 0 exactly 7 times.

The programs for A180885, there is no canonical definition to state claims against.
-/

/-! ## A180885.P6593329612346262220

`A180887(eq[9, A131818(n+1)])`
-/

namespace A180885.P6593329612346262220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180885.P6593329612346262220

/-! ## A180885.P5662185026941702930

`A180887(A374009(n+1))`
-/

namespace A180885.P5662185026941702930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A374009 (n + 1)).toNat

end

end A180885.P5662185026941702930

/-! ## A180885.P3128232090152335496

`A180887(eq[5, A219347(n)])`
-/

namespace A180885.P3128232090152335496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180885.P3128232090152335496

/-! ## A180885.P11165053469092356956

`A180887(eq[7, A193592(n)])`
-/

namespace A180885.P11165053469092356956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180885.P11165053469092356956

/-! ## A180885.P2718988433097399764

`A180887(eq[12, A185782(n+1)])`
-/

namespace A180885.P2718988433097399764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180885.P2718988433097399764

/-! ## A180885.P8266735674875193654

`A180887(2*(n+1)+A000124(n+6)+5)`
-/

namespace A180885.P8266735674875193654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 ((2 * (n + 1) : ℤ) + (A000124 (n + 6) + 5)).toNat

end

end A180885.P8266735674875193654

/-!
# A180886: Number of permutations p() of 1..n+9 with centered difference p(i+1)-p(i-1) < 0 exactly 8 times.

The programs for A180886, there is no canonical definition to state claims against.
-/

/-! ## A180886.P7963269429604742396

`A180887(eq[17, A066657(n)])`
-/

namespace A180886.P7963269429604742396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180886.P7963269429604742396

/-! ## A180886.P13323636468042227583

`A180887(eq[10, A131818(n+1)])`
-/

namespace A180886.P13323636468042227583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180886.P13323636468042227583

/-! ## A180886.P15277759257834255087

`A180887(A374010(n+1))`
-/

namespace A180886.P15277759257834255087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (A374010 (n + 1)).toNat

end

end A180886.P15277759257834255087

/-! ## A180886.P4051615627041469255

`A180887(eq[6, A219347(n)])`
-/

namespace A180886.P4051615627041469255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180886.P4051615627041469255

/-! ## A180886.P14723062362692121805

`A180887(eq[8, A193592(n)])`
-/

namespace A180886.P14723062362692121805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180886.P14723062362692121805

/-! ## A180886.P16247950662659188986

`A180887(eq[8, A025581(n)]+1)`
-/

namespace A180886.P16247950662659188986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A180886.P16247950662659188986

/-!
# A180887: Array read by antidiagonals: T(n,k)=number of permutations p() of 1..n+k with centered difference p(i+1)-p(i-1) < 0 exactly k-1 times.

The programs for A180887, there is no canonical definition to state claims against.
-/

/-! ## A180887.P7735290830667500909

`A264128(A032559(n+1))+A193592(A347940(n))`
-/

namespace A180887.P7735290830667500909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (A032559 (n + 1)).toNat + A193592 (A347940 n).toNat

end

end A180887.P7735290830667500909

/-! ## A180887.P15814138149584545974

`A264128(A077739(n+1))+A193592(A347940(n))`
-/

namespace A180887.P15814138149584545974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (A077739 (n + 1)).toNat + A193592 (A347940 n).toNat

end

end A180887.P15814138149584545974

/-!
# A180888: Number of permutations of 0..n-1 with no element greater than or equal to the sum of its neighbors.

The programs for A180888, there is no canonical definition to state claims against.
-/

/-! ## A180888.P175179084147248621

`lcm(A025487(n+1), A123496(A145454(n)))`
-/

namespace A180888.P175179084147248621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025487 (n + 1)) (A123496 (A145454 n).toNat)

end

end A180888.P175179084147248621

/-!
# A180889: Number of permutations of 1..n with no element greater than or equal to the sum of its neighbors.

The programs for A180889, there is no canonical definition to state claims against.
-/

/-! ## A180889.P1457045127062761945

`A141095((val(n+1, 2)+1)*A001672(n))`
-/

namespace A180889.P1457045127062761945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141095 ((SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A001672 n).toNat

end

end A180889.P1457045127062761945

/-! ## A180889.P6028153929708103356

`A351892(n)-A010051(A182176(n))`
-/

namespace A180889.P6028153929708103356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351892 n - A010051 (A182176 n).toNat

end

end A180889.P6028153929708103356

/-! ## A180889.P10604439633943178558

`A020042(n)*A341596(A116427(n+1))`
-/

namespace A180889.P10604439633943178558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020042 n * A341596 (A116427 (n + 1)).toNat

end

end A180889.P10604439633943178558

/-!
# A180891: Number of permutations of 3..n+2 with no element greater than or equal to the sum of its neighbors.

The programs for A180891, there is no canonical definition to state claims against.
-/

/-! ## A180891.P736509125362557362

`A144722(a(n-1)+2)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A180891.P736509125362557362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  A144722 (a (n - 1) + 2).toNat

end

end A180891.P736509125362557362

/-! ## A180891.P17688557776313729300

`Δ[A102348(a(n-1))]-char[1]` with `a(0)=1`
-/

namespace A180891.P17688557776313729300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A102348 (f1 (n - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A180891.P17688557776313729300

/-!
# A180892: Number of permutations of 4..n+3 with no element greater than or equal to the sum of its neighbors.

The programs for A180892, there is no canonical definition to state claims against.
-/

/-! ## A180892.P14019217376412500471

`A194220(A213228(n)+A007444(n+1))`
-/

namespace A180892.P14019217376412500471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194220 (A213228 n + A007444 (n + 1)).toNat

end

end A180892.P14019217376412500471

/-! ## A180892.P7886569787862810311

`A008616((∑[n!]-1)*comp[2*n])`
-/

namespace A180892.P7886569787862810311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)).toNat

end

end A180892.P7886569787862810311

/-!
# A180893: Number of permutations of 5..n+4 with no element greater than or equal to the sum of its neighbors.

The programs for A180893, there is no canonical definition to state claims against.
-/

/-! ## A180893.P9943383800044130014

`A026922(A189271(n+1)+char[n²])`
-/

namespace A180893.P9943383800044130014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A189271 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A180893.P9943383800044130014

/-! ## A180893.P11917126802915088290

`A026922(A189842(n+1)+A000700(n))`
-/

namespace A180893.P11917126802915088290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A189842 (n + 1) + A000700 n).toNat

end

end A180893.P11917126802915088290

/-! ## A180893.P15250453417498521497

`A026922(A189842(n+1)+A010052(n))`
-/

namespace A180893.P15250453417498521497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A189842 (n + 1) + A010052 n).toNat

end

end A180893.P15250453417498521497

/-!
# A180894: Number of permutations of 6..n+5 with no element greater than or equal to the sum of its neighbors.

The programs for A180894, there is no canonical definition to state claims against.
-/

/-! ## A180894.P8851293958517047857

`A354856((n+1)!)`
-/

namespace A180894.P8851293958517047857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354856 (Nat.factorial (n + 1))

end

end A180894.P8851293958517047857

/-! ## A180894.P18380839054041708546

`A354856(∏[n+1])`
-/

namespace A180894.P18380839054041708546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354856 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A180894.P18380839054041708546

/-! ## A180894.P51903579959991555

`Δ[A026922(∑[n!])]`
-/

namespace A180894.P51903579959991555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180894.P51903579959991555

/-!
# A180895: Number of permutations of 7..n+6 with no element greater than or equal to the sum of its neighbors.

The programs for A180895, there is no canonical definition to state claims against.
-/

/-! ## A180895.P2481917641547724903

`(floor(n/4)^3^n+n)*a(n-1)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A180895.P2481917641547724903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  (⌊(n : ℚ) / 4⌋ ^ 3 ^ n + (n : ℤ)) * a (n - 1)

end

end A180895.P2481917641547724903

/-! ## A180895.P8957738813485865492

`Δ[A103391(∑[ceil(n!/2)])]`
-/

namespace A180895.P8957738813485865492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial n : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180895.P8957738813485865492

/-! ## A180895.P4886007849927190333

`A273943(A357711(n))`
-/

namespace A180895.P4886007849927190333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A357711 n).toNat

end

end A180895.P4886007849927190333

/-! ## A180895.P14470297702184912704

`A245092(A180896(n+1))`
-/

namespace A180895.P14470297702184912704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A180896 (n + 1)).toNat

end

end A180895.P14470297702184912704

/-!
# A180896: Number of permutations of 8..n+7 with no element greater than or equal to the sum of its neighbors.

The programs for A180896, there is no canonical definition to state claims against.
-/

/-! ## A180896.P16630770190570994311

`A180897(C(lt[0, ∏{digits}[n, (1-#)²]], n))`
-/

namespace A180896.P16630770190570994311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (1 - (x : ℤ)) ^ 2).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180897 (Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) n)

end

end A180896.P16630770190570994311

/-! ## A180896.P13506625343037827460

`(A201644(n+1)%2+n)*a(n-1)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=6`
-/

namespace A180896.P13506625343037827460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 6] fun n a =>
  (Int.tmod (A201644 (n + 1)) 2 + (n : ℤ)) * a (n - 1)

end

end A180896.P13506625343037827460

/-! ## A180896.P3868750572008613712

`A180897(A062998(n+1))`
-/

namespace A180896.P3868750572008613712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180897 (A062998 (n + 1)).toNat

end

end A180896.P3868750572008613712

/-! ## A180896.P10124062728815620059

`A180897(A330927(n+1))`
-/

namespace A180896.P10124062728815620059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180897 (A330927 (n + 1)).toNat

end

end A180896.P10124062728815620059

/-! ## A180896.P2206643615398790620

`filter[A180897(n+1), A356162(#)]`
-/

namespace A180896.P2206643615398790620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356162 (f1 j).toNat = 1) n)

end

end A180896.P2206643615398790620

/-!
# A180897: Number of permutations of 9..n+8 with no element greater than or equal to the sum of its neighbors.

The programs for A180897, there is no canonical definition to state claims against.
-/

/-! ## A180897.P9314088610261535974

`A357711(n)/A000034(A103403(n+1))`
-/

namespace A180897.P9314088610261535974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357711 n : ℚ) / (A000034 (A103403 (n + 1)).toNat : ℚ)

end

end A180897.P9314088610261535974

/-! ## A180897.P18313786076320235041

`A357711(n)/A046698(A000045(2*n+1))`
-/

namespace A180897.P18313786076320235041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357711 n : ℚ) / (A046698 (A000045 (2 * n + 1)).toNat : ℚ)

end

end A180897.P18313786076320235041

/-! ## A180897.P3843686206446357187

`A357711(n)/A001221(A006431(3*n+4))`
-/

namespace A180897.P3843686206446357187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357711 n : ℚ) / (A001221 (A006431 (3 * n + 4)).toNat : ℚ)

end

end A180897.P3843686206446357187

/-!
# A180898: Number of sequences of n integers p(i), i=0..n-1, with 0 <= p(i) <= 2*i and |p(i) - p(i-1)| <= 2.

The programs for A180898, there is no canonical definition to state claims against.
-/

/-! ## A180898.P14783768852484957108

`A180906(∑[n+2])`
-/

namespace A180898.P14783768852484957108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180898.P14783768852484957108

/-! ## A180898.P5904061725979661472

`record[A129186(n)*A180906(n+1)]`
-/

namespace A180898.P5904061725979661472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 n * A180906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180898.P5904061725979661472

/-! ## A180898.P6068990163444991891

`record[A180906(n+2)/A180906(n+4)]`
-/

namespace A180898.P6068990163444991891
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180906 (n + 2) : ℚ) / (A180906 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180898.P6068990163444991891

/-! ## A180898.P16933929019778731722

`record[root(A180906(n+4), A180906(n+6))]`
-/

namespace A180898.P16933929019778731722
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A180906 (n + 4) : ℝ) ^ (1 / (A180906 (n + 6) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180898.P16933929019778731722

/-! ## A180898.P3375831386380981537

`record[A180906(A000096(A052128(n+1)))]`
-/

namespace A180898.P3375831386380981537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (A000096 (A052128 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180898.P3375831386380981537

/-!
# A180899: Number of sequences of n integers p(i) i=0..n-1 with 0 <= p(i) <= 3*i and |p(i) - p(i-1)| <= 3.

The programs for A180899, there is no canonical definition to state claims against.
-/

/-! ## A180899.P723923867226978979

`A180906(∑[n+3]+1)`
-/

namespace A180899.P723923867226978979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A180899.P723923867226978979

/-! ## A180899.P9994714029521046411

`record[A180906(n+1)/A180906(n+4)]`
-/

namespace A180899.P9994714029521046411
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180906 (n + 1) : ℚ) / (A180906 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180899.P9994714029521046411

/-! ## A180899.P353618450422599130

`A057427(n+1)*A180906(A055999(n)+4)`
-/

namespace A180899.P353618450422599130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A180906 (A055999 n + 4).toNat

end

end A180899.P353618450422599130

/-! ## A180899.P4569820414137728225

`A176895(4*n)*A180906(A055999(n)+4)`
-/

namespace A180899.P4569820414137728225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (4 * n) * A180906 (A055999 n + 4).toNat

end

end A180899.P4569820414137728225

/-! ## A180899.P13662295802679552621

`lcm(A087960((n+1)²), A180906(A055999(n)+4))`
-/

namespace A180899.P13662295802679552621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 ((n + 1) ^ 2)) (A180906 (A055999 n + 4).toNat)

end

end A180899.P13662295802679552621

/-! ## A180899.P477774917485572804

`(1-A064873(n+1))!*A180906(A055999(n)+4)`
-/

namespace A180899.P477774917485572804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (1 - A064873 (n + 1)).toNat : ℤ) * A180906 (A055999 n + 4).toNat

end

end A180899.P477774917485572804

/-! ## A180899.P4701819895163882194

`A180906(A055999(n)+4)+A070824(p?[9*n+2])`
-/

namespace A180899.P4701819895163882194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180906 (A055999 n + 4).toNat + A070824 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A180899.P4701819895163882194

/-! ## A180899.P9669070924431737926

`A301989(A001316(n))+A180906(A055999(n)+4)`
-/

namespace A180899.P9669070924431737926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301989 (A001316 n).toNat + A180906 (A055999 n + 4).toNat

end

end A180899.P9669070924431737926

