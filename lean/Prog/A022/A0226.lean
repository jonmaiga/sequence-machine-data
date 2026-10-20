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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C029
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A022600: Expansion of Product_{m>=1} (1+q^m)^(-5).

The programs for A022600, there is no canonical definition to state claims against.
-/

/-! ## A022600.P13131690713201897231

`A286352(2*n+∑[n+4]+11)`
-/

namespace A022600.P13131690713201897231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 11))

end

end A022600.P13131690713201897231

/-! ## A022600.P16790047346346933235

`gcd(n, n+1)*A286352(eq[11, A099375(n)])`
-/

namespace A022600.P16790047346346933235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022600.P16790047346346933235

/-! ## A022600.P18015966975842367346

`A020985(n)²*A286352(eq[11, A099375(n)])`
-/

namespace A022600.P18015966975842367346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022600.P18015966975842367346

/-! ## A022600.P4394658101664751611

`A286352(eq[11, A099375(n)])+A000007(n+1)`
-/

namespace A022600.P4394658101664751611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000007 (n + 1)

end

end A022600.P4394658101664751611

/-! ## A022600.P2037134895578107961

`A014963(15*(n+1))*A286352(eq[11, A099375(n)])`
-/

namespace A022600.P2037134895578107961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (15 * (n + 1)) * A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022600.P2037134895578107961

/-! ## A022600.P3612423474740235792

`A286352(eq[11, A099375(n)])%A147996(n+1)`
-/

namespace A022600.P3612423474740235792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A147996 (n + 1))

end

end A022600.P3612423474740235792

/-!
# A022601: Expansion of Product_{m>=1} (1+q^m)^(-6).

The programs for A022601, there is no canonical definition to state claims against.
-/

/-! ## A022601.P14419421800546247166

`(-1)^n*A112150(n)`
-/

namespace A022601.P14419421800546247166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A112150 n

end

end A022601.P14419421800546247166

/-! ## A022601.P13415701274314826912

`A058088(2*n)`
-/

namespace A022601.P13415701274314826912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058088 (2 * n)

end

end A022601.P13415701274314826912

/-! ## A022601.P5812230409827276826

`A112145(2*n)`
-/

namespace A022601.P5812230409827276826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112145 (2 * n)

end

end A022601.P5812230409827276826

/-! ## A022601.P14260719254036432373

`A112150(n)/A033999(n)`
-/

namespace A022601.P14260719254036432373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112150 n : ℚ) / (A033999 n : ℚ)

end

end A022601.P14260719254036432373

/-! ## A022601.P271071526134094209

`A007249(n)*A112150(n)/A112142(n)`
-/

namespace A022601.P271071526134094209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007249 n * A112150 n : ℚ) / (A112142 n : ℚ)

end

end A022601.P271071526134094209

/-! ## A022601.P6375907835951583922

`2*A143895(n)-A052241(n)`
-/

namespace A022601.P6375907835951583922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143895 n - A052241 n

end

end A022601.P6375907835951583922

/-! ## A022601.P17680852849010790733

`A112145(n+n)%∑[A112145(n+1)]`
-/

namespace A022601.P17680852849010790733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112145 (n + n)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022601.P17680852849010790733

/-! ## A022601.P9460041166675893515

`A112145(n+n)+A010051(∑[∑[n+1]])`
-/

namespace A022601.P9460041166675893515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112145 (n + n) + A010051 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022601.P9460041166675893515

/-!
# A022602: Expansion of Product_{m>=1} (1+q^m)^(-7).

The programs for A022602, there is no canonical definition to state claims against.
-/

/-! ## A022602.P8920971544804393768

`A286352(A155212(n+4))`
-/

namespace A022602.P8920971544804393768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A155212 (n + 4)).toNat

end

end A022602.P8920971544804393768

/-! ## A022602.P11710436111686576216

`A286352(A055999(n+5)-2)`
-/

namespace A022602.P11710436111686576216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A055999 (n + 5) - 2).toNat

end

end A022602.P11710436111686576216

/-! ## A022602.P6955607023044668401

`A286352(A000217(n+8)-8)`
-/

namespace A022602.P6955607023044668401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A000217 (n + 8) - 8).toNat

end

end A022602.P6955607023044668401

/-! ## A022602.P14466915599173854190

`A286352(A017041(n+3)+A000124(n+1))`
-/

namespace A022602.P14466915599173854190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A017041 (n + 3) + A000124 (n + 1)).toNat

end

end A022602.P14466915599173854190

/-! ## A022602.P14695803591840807169

`A286352(A152947(n+3)+A017041(n+3))`
-/

namespace A022602.P14695803591840807169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A152947 (n + 3) + A017041 (n + 3)).toNat

end

end A022602.P14695803591840807169

/-!
# A022603: Indices of primes of form 3^p - 2.

The programs for A022603, there is no canonical definition to state claims against.
-/

/-! ## A022603.P10183516435314516043

`A055729(A014224(n+1))`
-/

namespace A022603.P10183516435314516043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055729 (A014224 (n + 1)).toNat

end

end A022603.P10183516435314516043

/-!
# A022604: Expansion of Product_{m>=1} (1+q^m)^(-9).

The programs for A022604, there is no canonical definition to state claims against.
-/

/-! ## A022604.P14420793351841887049

`A286352(A056000(n+6))`
-/

namespace A022604.P14420793351841887049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A056000 (n + 6)).toNat

end

end A022604.P14420793351841887049

/-! ## A022604.P16531385812918580730

`A286352(A051936(n+10)-1)`
-/

namespace A022604.P16531385812918580730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A051936 (n + 10) - 1).toNat

end

end A022604.P16531385812918580730

/-! ## A022604.P12293846784140053221

`A286352(A055999(n+7)-4)`
-/

namespace A022604.P12293846784140053221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A055999 (n + 7) - 4).toNat

end

end A022604.P12293846784140053221

/-! ## A022604.P2508958786375545666

`A286352(A000096(n+9)-9)`
-/

namespace A022604.P2508958786375545666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A000096 (n + 9) - 9).toNat

end

end A022604.P2508958786375545666

/-! ## A022604.P1750032741528396161

`A286352(A000217(n+10)-10)`
-/

namespace A022604.P1750032741528396161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A000217 (n + 10) - 10).toNat

end

end A022604.P1750032741528396161

/-!
# A022605: Expansion of Product_{m>=1} (1+q^m)^(-10).

The programs for A022605, there is no canonical definition to state claims against.
-/

/-! ## A022605.P4726704190135524362

`A286352(eq[10, A025581(n)])`
-/

namespace A022605.P4726704190135524362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022605.P4726704190135524362

/-! ## A022605.P15758058897323000664

`A286352(A052905(n+8)-6)`
-/

namespace A022605.P15758058897323000664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A052905 (n + 8) - 6).toNat

end

end A022605.P15758058897323000664

/-! ## A022605.P5055844029014362087

`A286352(A000096(n+10)-10)`
-/

namespace A022605.P5055844029014362087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A000096 (n + 10) - 10).toNat

end

end A022605.P5055844029014362087

/-! ## A022605.P7939799178263653997

`A286352(A000217(n+11)-11)`
-/

namespace A022605.P7939799178263653997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A000217 (n + 11) - 11).toNat

end

end A022605.P7939799178263653997

/-! ## A022605.P16018924958077005892

`A286352(eq[11, A004736(n+1)])`
-/

namespace A022605.P16018924958077005892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022605.P16018924958077005892

/-!
# A022606: Expansion of Product_{m>=1} (1+q^m)^(-11).

The programs for A022606, there is no canonical definition to state claims against.
-/

/-! ## A022606.P10099701962010602954

`A286352(eq[11, A025581(n)])`
-/

namespace A022606.P10099701962010602954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022606.P10099701962010602954

/-! ## A022606.P12012804736928934706

`A286352(A000217(n+12)-12)`
-/

namespace A022606.P12012804736928934706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A000217 (n + 12) - 12).toNat

end

end A022606.P12012804736928934706

/-! ## A022606.P17773867810548313723

`A286352(eq[12, A004736(n+1)])`
-/

namespace A022606.P17773867810548313723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022606.P17773867810548313723

/-! ## A022606.P11430426830316143438

`A286352(A000124(n+11)+n-1)`
-/

namespace A022606.P11430426830316143438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A000124 (n + 11) + ((n : ℤ) - 1)).toNat

end

end A022606.P11430426830316143438

/-! ## A022606.P1120674344100341930

`A286352(A005408(n)+A167499(n+9)+5)`
-/

namespace A022606.P1120674344100341930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A005408 n + (A167499 (n + 9) + 5)).toNat

end

end A022606.P1120674344100341930

/-!
# A022608: Expansion of Product_{m>=1} (1+q^m)^(-13).

The programs for A022608, there is no canonical definition to state claims against.
-/

/-! ## A022608.P9085763331901114822

`A286352(eq[13, A025581(n)])`
-/

namespace A022608.P9085763331901114822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022608.P9085763331901114822

/-! ## A022608.P4140121096790140627

`A286352(eq[14, A193739(n)])`
-/

namespace A022608.P4140121096790140627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022608.P4140121096790140627

/-! ## A022608.P18207498002231795095

`A286352(eq[27, A099375(n)])`
-/

namespace A022608.P18207498002231795095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022608.P18207498002231795095

/-! ## A022608.P3254288906488133070

`A286352(eq[14, A004736(n+1)])`
-/

namespace A022608.P3254288906488133070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022608.P3254288906488133070

/-! ## A022608.P17923224255696566192

`A286352(A000217(n+13)+n)`
-/

namespace A022608.P17923224255696566192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A000217 (n + 13) + (n : ℤ)).toNat

end

end A022608.P17923224255696566192

/-!
# A022609: Expansion of Product_{m>=1} (1+q^m)^(-14).

The programs for A022609, there is no canonical definition to state claims against.
-/

/-! ## A022609.P296772840888160761

`A286352(eq[14, A025581(n)])`
-/

namespace A022609.P296772840888160761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022609.P296772840888160761

/-! ## A022609.P10204590487800535689

`A286352(eq[15, A193739(n)])`
-/

namespace A022609.P10204590487800535689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022609.P10204590487800535689

/-! ## A022609.P18257574370969047932

`A286352(eq[29, A099375(n)])`
-/

namespace A022609.P18257574370969047932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022609.P18257574370969047932

/-! ## A022609.P15208378855581107399

`A286352(eq[15, A004736(n+1)])`
-/

namespace A022609.P15208378855581107399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022609.P15208378855581107399

/-! ## A022609.P11936662914083750134

`A286352(A000217(n+14)+n)`
-/

namespace A022609.P11936662914083750134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A000217 (n + 14) + (n : ℤ)).toNat

end

end A022609.P11936662914083750134

/-! ## A022609.P12308516700638277625

`A286352(A017041(n+9)+A000124(n+8))`
-/

namespace A022609.P12308516700638277625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A017041 (n + 9) + A000124 (n + 8)).toNat

end

end A022609.P12308516700638277625

/-!
# A022610: Expansion of Product_{m>=1} (1+q^m)^(-15).

The programs for A022610, there is no canonical definition to state claims against.
-/

/-! ## A022610.P15897528798097337998

`A286352(eq[15, A025581(n)])`
-/

namespace A022610.P15897528798097337998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022610.P15897528798097337998

/-! ## A022610.P5037353358806532928

`A286352(eq[16, A193739(n)])`
-/

namespace A022610.P5037353358806532928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022610.P5037353358806532928

/-! ## A022610.P9748482447087129584

`A286352(eq[31, A099375(n)])`
-/

namespace A022610.P9748482447087129584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022610.P9748482447087129584

/-! ## A022610.P9013181796802631769

`A286352(eq[16, A004736(n+1)])`
-/

namespace A022610.P9013181796802631769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022610.P9013181796802631769

/-! ## A022610.P14230137133657120955

`A286352(A000217(n+15)+n)`
-/

namespace A022610.P14230137133657120955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A000217 (n + 15) + (n : ℤ)).toNat

end

end A022610.P14230137133657120955

/-!
# A022611: Expansion of Product_{m>=1} (1+q^m)^(-16).

The programs for A022611, there is no canonical definition to state claims against.
-/

/-! ## A022611.P4367497098020110905

`A286352(eq[16, A025581(n)])`
-/

namespace A022611.P4367497098020110905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022611.P4367497098020110905

/-! ## A022611.P4293532188089467150

`A286352(eq[17, A193739(n)])`
-/

namespace A022611.P4293532188089467150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022611.P4293532188089467150

/-! ## A022611.P1423680410629428327

`A286352(eq[33, A099375(n)])`
-/

namespace A022611.P1423680410629428327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022611.P1423680410629428327

/-! ## A022611.P1737546883085836087

`A286352(eq[17, A004736(n+1)])`
-/

namespace A022611.P1737546883085836087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022611.P1737546883085836087

/-! ## A022611.P5377753785552586432

`A286352(A167614(n+10)+A016921(n+11))`
-/

namespace A022611.P5377753785552586432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A167614 (n + 10) + A016921 (n + 11)).toNat

end

end A022611.P5377753785552586432

/-!
# A022612: Expansion of Product_{m>=1} (1+q^m)^(-17).

The programs for A022612, there is no canonical definition to state claims against.
-/

/-! ## A022612.P1050137012196682850

`A286352(eq[17, A025581(n)])`
-/

namespace A022612.P1050137012196682850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022612.P1050137012196682850

/-! ## A022612.P4295634596083130271

`A286352(eq[18, A193739(n)])`
-/

namespace A022612.P4295634596083130271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022612.P4295634596083130271

/-! ## A022612.P11239202869910168266

`A286352(eq[35, A099375(n)])`
-/

namespace A022612.P11239202869910168266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022612.P11239202869910168266

/-! ## A022612.P10166066104899583017

`A286352(eq[18, A004736(n+1)])`
-/

namespace A022612.P10166066104899583017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022612.P10166066104899583017

/-! ## A022612.P8313799892751238360

`A286352(eq[18, A134231(n+1)])`
-/

namespace A022612.P8313799892751238360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022612.P8313799892751238360

/-!
# A022613: Expansion of Product_{m>=1} (1+q^m)^(-18).

The programs for A022613, there is no canonical definition to state claims against.
-/

/-! ## A022613.P5762518505274942143

`A286352(eq[19, A004736(n+1)])`
-/

namespace A022613.P5762518505274942143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022613.P5762518505274942143

/-!
# A022614: Expansion of Product_{m>=1} (1+q^m)^(-19).

The programs for A022614, there is no canonical definition to state claims against.
-/

/-! ## A022614.P6967179350956138958

`A286352(eq[19, A025581(n)])`
-/

namespace A022614.P6967179350956138958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022614.P6967179350956138958

/-! ## A022614.P6701042447575587987

`A286352(eq[20, A004736(n+1)])`
-/

namespace A022614.P6701042447575587987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022614.P6701042447575587987

/-! ## A022614.P12947659783854869282

`A286352(A000217(n+19)+n)`
-/

namespace A022614.P12947659783854869282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A000217 (n + 19) + (n : ℤ)).toNat

end

end A022614.P12947659783854869282

/-!
# A022615: Expansion of Product_{m>=1} (1+q^m)^(-20).

The programs for A022615, there is no canonical definition to state claims against.
-/

/-! ## A022615.P4620975175169380658

`A286352(eq[20, A025581(n)])`
-/

namespace A022615.P4620975175169380658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022615.P4620975175169380658

/-!
# A022619: Triangle T(n,k)of numbers of asymmetric Boolean functions of n variables with exactly k = 0..2^n nonzero values (atoms) under action of complementing group C(n,2).

The programs for A022619, there is no canonical definition to state claims against.
-/

/-! ## A022619.P2599568716675881433

`A070878(A009998(A316740(n+1))*A070878(n))`
-/

namespace A022619.P2599568716675881433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070878 (A009998 (A316740 (n + 1)).toNat * A070878 n).toNat

end

end A022619.P2599568716675881433

/-! ## A022619.P12353876055471023766

`A166352(and(A070866(n+1), A216971(n+1)))`
-/

namespace A022619.P12353876055471023766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166352 (Int.land (A070866 (n + 1)) (A216971 (n + 1))).toNat

end

end A022619.P12353876055471023766

/-! ## A022619.P327329923716282086

`A249349(A340611(lcm(n, 1-a(n-1))+1))` with `a(0)=0`
-/

namespace A022619.P327329923716282086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A249349 (A340611 (Int.lcm (n : ℤ) (1 - a (n - 1)) + 1)).toNat

end

end A022619.P327329923716282086

/-! ## A022619.P8356191423822117518

`A020656(A296270(n))%A071517(n+1)`
-/

namespace A022619.P8356191423822117518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020656 (A296270 n).toNat) (A071517 (n + 1))

end

end A022619.P8356191423822117518

/-! ## A022619.P12407069014003062894

`A323879(A041029(n))`
-/

namespace A022619.P12407069014003062894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323879 (A041029 n).toNat

end

end A022619.P12407069014003062894

/-!
# A022621: Expansion of Product_{m>=1} (1+q^m)^(-26).

The programs for A022621, there is no canonical definition to state claims against.
-/

/-! ## A022621.P11893290668647329660

`A286352(eq[27, A004736(n+1)])`
-/

namespace A022621.P11893290668647329660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022621.P11893290668647329660

/-!
# A022623: Expansion of Product_{m>=1} (1+q^m)^(-28).

The programs for A022623, there is no canonical definition to state claims against.
-/

/-! ## A022623.P55681416822712812

`A286352(eq[28, A025581(n)])`
-/

namespace A022623.P55681416822712812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022623.P55681416822712812

/-!
# A022625: Expansion of Product_{m>=1} (1+q^m)^(-30).

The programs for A022625, there is no canonical definition to state claims against.
-/

/-! ## A022625.P11285744202599954626

`A286352(eq[31, A004736(n+1)])`
-/

namespace A022625.P11285744202599954626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022625.P11285744202599954626

/-!
# A022628: Expansion of 1/((1-x)*(1-5*x)*(1-8*x)*(1-11*x)).

The programs for A022628, there is no canonical definition to state claims against.
-/

/-! ## A022628.P14350647272755212315

`∑[A020447(n)]`
-/

namespace A022628.P14350647272755212315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022628.P14350647272755212315

/-! ## A022628.P5322542990315141241

`A016259(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A022628.P5322542990315141241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016259 n + 5 * a (n - 1)

end

end A022628.P5322542990315141241

/-! ## A022628.P5643582105124657674

`A020447(2*n-n)+a(n-1)` with `a(0)=1`
-/

namespace A022628.P5643582105124657674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020447 (2 * n - n) + a (n - 1)

end

end A022628.P5643582105124657674

/-! ## A022628.P8611262187875598915

`2*A021274(n)-A021154(n)`
-/

namespace A022628.P8611262187875598915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021274 n - A021154 n

end

end A022628.P8611262187875598915

/-! ## A022628.P4129522282461043436

`∑[2*A016318(n)-A016301(n)]`
-/

namespace A022628.P4129522282461043436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016318 n - A016301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022628.P4129522282461043436

/-! ## A022628.P16670850006051632985

`∑[2*A016318(n)]-A021154(n)`
-/

namespace A022628.P16670850006051632985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A021154 n

end

end A022628.P16670850006051632985

/-! ## A022628.P10230938091359881514

`2*A021274(n)-∑[A016301(n)]`
-/

namespace A022628.P10230938091359881514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021274 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022628.P10230938091359881514

/-! ## A022628.P10603815097475979738

`A021154(n)+A021274(n)-A021129(n)`
-/

namespace A022628.P10603815097475979738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021154 n + (A021274 n - A021129 n)

end

end A022628.P10603815097475979738

/-! ## A022628.P5506163042424532526

`A025963(n)+∑[A025963(n)-A025960(n)]`
-/

namespace A022628.P5506163042424532526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025963 n - A025960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025963 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022628.P5506163042424532526

/-!
# A022629: Expansion of Product_{m>=1} (1 + m*q^m).

The programs for A022629, there is no canonical definition to state claims against.
-/

/-! ## A022629.P3100578670522017509

`∑{d}[A028310(n), A300278(#)]`
-/

namespace A022629.P3100578670522017509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300278 d

end

end A022629.P3100578670522017509

/-! ## A022629.P15086681771734516143

`∑{d}[A274922(n), A300278(#)]`
-/

namespace A022629.P15086681771734516143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300278 d

end

end A022629.P15086681771734516143

/-! ## A022629.P11082049761415336625

`A317913(abs(1-n))+A317913(n)`
-/

namespace A022629.P11082049761415336625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317913 |1 - (n : ℤ)|.toNat + A317913 n

end

end A022629.P11082049761415336625

/-! ## A022629.P11721492945196238130

`∑{d}[A008619(A004273(n)), A300278(#)]`
-/

namespace A022629.P11721492945196238130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300278 d

end

end A022629.P11721492945196238130

/-! ## A022629.P5736066184894657801

`abs(Δ[A302831(abs(1-n))])`
-/

namespace A022629.P5736066184894657801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302831 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022629.P5736066184894657801

/-! ## A022629.P503902653250391956

`A297321(∑[n+2]-1)`
-/

namespace A022629.P503902653250391956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A022629.P503902653250391956

/-! ## A022629.P2761594278043539983

`A297321(∑[n+1]+n)%A000051(n)`
-/

namespace A022629.P2761594278043539983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297321 (∑ j ∈ Finset.range (n + 1), f1 j + n)) (A000051 n)

end

end A022629.P2761594278043539983

/-! ## A022629.P11058891329426899007

`or(A000007(n), A297321(A034856(n+1)))`
-/

namespace A022629.P11058891329426899007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A297321 (A034856 (n + 1)).toNat)

end

end A022629.P11058891329426899007

/-! ## A022629.P16222336451485746584

`A297321(A052905(n)-n)+A005843(n)%2`
-/

namespace A022629.P16222336451485746584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A052905 n - (n : ℤ)).toNat + Int.tmod (A005843 n) 2

end

end A022629.P16222336451485746584

/-! ## A022629.P13903956509298611734

`A094024(2*(n+1))*A297321(A034856(n+1))`
-/

namespace A022629.P13903956509298611734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 (2 * (n + 1)) * A297321 (A034856 (n + 1)).toNat

end

end A022629.P13903956509298611734

/-!
# A022630: Expansion of Product_{m>=1} (1 + m*q^m)^2.

The programs for A022630, there is no canonical definition to state claims against.
-/

/-! ## A022630.P15383934066932110616

`A297321(∑[n+3])`
-/

namespace A022630.P15383934066932110616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022630.P15383934066932110616

/-! ## A022630.P10105246755125362000

`record[A297321(A055998(A008612(n)))]`
-/

namespace A022630.P10105246755125362000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A055998 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022630.P10105246755125362000

/-! ## A022630.P16402097955413126170

`record[A297321(A055998(A008615(n)))]`
-/

namespace A022630.P16402097955413126170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A055998 (A008615 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022630.P16402097955413126170

/-! ## A022630.P635692577859574851

`record[A297321(A055998(A025480(n)))]`
-/

namespace A022630.P635692577859574851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A055998 (A025480 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022630.P635692577859574851

/-! ## A022630.P13360922073703456306

`record[A297321(A027379(A274820(n)))]`
-/

namespace A022630.P13360922073703456306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A027379 (A274820 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022630.P13360922073703456306

/-! ## A022630.P3111968075301588678

`record[A297321(A027379(A259434(n+1)))]`
-/

namespace A022630.P3111968075301588678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A027379 (A259434 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022630.P3111968075301588678

/-!
# A022631: Expansion of Product_{m>=1} (1 + m*q^m)^3.

The programs for A022631, there is no canonical definition to state claims against.
-/

/-! ## A022631.P9488575127793595365

`A297321(∑[n+4]+2)`
-/

namespace A022631.P9488575127793595365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A022631.P9488575127793595365

/-! ## A022631.P14404592234739456417

`record[A297321(abs(A046691(n)))]`
-/

namespace A022631.P14404592234739456417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022631.P14404592234739456417

/-! ## A022631.P15275252617183322839

`record[A297321(A027379(n)-1)]`
-/

namespace A022631.P15275252617183322839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A027379 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022631.P15275252617183322839

/-! ## A022631.P9842480716906271908

`record[A297321(A038722(A167499(n)))]`
-/

namespace A022631.P9842480716906271908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A038722 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022631.P9842480716906271908

/-! ## A022631.P5418837900887765658

`A297321(A046691(n+2))%A025555(n+3)`
-/

namespace A022631.P5418837900887765658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297321 (A046691 (n + 2)).toNat) (A025555 (n + 3))

end

end A022631.P5418837900887765658

/-!
# A022632: Expansion of Product_{m>=1} (1 + m*q^m)^4.

The programs for A022632, there is no canonical definition to state claims against.
-/

/-! ## A022632.P15407342885006504122

`A297321(∑[n+5]+5)`
-/

namespace A022632.P15407342885006504122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A022632.P15407342885006504122

/-! ## A022632.P3702776849041084069

`record[A297321(A052905(n))]`
-/

namespace A022632.P3702776849041084069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022632.P3702776849041084069

/-! ## A022632.P1525988633311846045

`record[A297321(A055999(n)+1)]`
-/

namespace A022632.P1525988633311846045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022632.P1525988633311846045

/-! ## A022632.P11474427441568891281

`record[A297321(abs(A046691(n))-1)]`
-/

namespace A022632.P11474427441568891281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (|A046691 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022632.P11474427441568891281

/-! ## A022632.P4500452642889285388

`record[A297321(A046691(n+1)-1)]`
-/

namespace A022632.P4500452642889285388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022632.P4500452642889285388

/-! ## A022632.P15507478471516804627

`record[A297321(A027379(n+1)-2)]`
-/

namespace A022632.P15507478471516804627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A027379 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022632.P15507478471516804627

/-! ## A022632.P17840681208129165418

`record[A297321(A055998(n+1)-2)]`
-/

namespace A022632.P17840681208129165418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A055998 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022632.P17840681208129165418

/-! ## A022632.P16686291164897482671

`record[A297321(A034856(n+2)-3)]`
-/

namespace A022632.P16686291164897482671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A034856 (n + 2) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022632.P16686291164897482671

/-! ## A022632.P16120398730791527252

`record[A297321(A016777(n)+A000217(n))]`
-/

namespace A022632.P16120398730791527252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A016777 n + A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022632.P16120398730791527252

/-! ## A022632.P10551864573095848202

`A000035(2*n+1)*A297321(A052905(n+2))`
-/

namespace A022632.P10551864573095848202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A297321 (A052905 (n + 2)).toNat

end

end A022632.P10551864573095848202

/-!
# A022633: Expansion of Product_{m>=1} (1 + m*q^m)^5.

The programs for A022633, there is no canonical definition to state claims against.
-/

/-! ## A022633.P3145030234060084962

`A297321(∑[n+6]+9)`
-/

namespace A022633.P3145030234060084962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (∑ j ∈ Finset.range (n + 1), f1 j + 9)

end

end A022633.P3145030234060084962

/-! ## A022633.P6858059185882669070

`record[A297321(A055999(n))]`
-/

namespace A022633.P6858059185882669070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022633.P6858059185882669070

/-! ## A022633.P3867330934729462564

`record[A297321(A052905(n)-1)]`
-/

namespace A022633.P3867330934729462564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A052905 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022633.P3867330934729462564

/-! ## A022633.P965186713730678950

`record[A297321(A056000(n)+4)]`
-/

namespace A022633.P965186713730678950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A056000 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022633.P965186713730678950

/-! ## A022633.P14964050728335994185

`record[A297321(A027379(n)+n)]`
-/

namespace A022633.P14964050728335994185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A027379 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022633.P14964050728335994185

/-! ## A022633.P11240105314202493757

`record[A297321(A055998(n)+n)]`
-/

namespace A022633.P11240105314202493757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A055998 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022633.P11240105314202493757

/-! ## A022633.P11097699672756209218

`record[A297321(abs(2-A046691(n)))]`
-/

namespace A022633.P11097699672756209218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 |2 - A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022633.P11097699672756209218

/-! ## A022633.P5998287618391419523

`record[A297321(A046691(n+1)-2)]`
-/

namespace A022633.P5998287618391419523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A046691 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022633.P5998287618391419523

/-! ## A022633.P18395996759043032807

`record[A297321(A034856(n+3)-4)]`
-/

namespace A022633.P18395996759043032807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A034856 (n + 3) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022633.P18395996759043032807

/-!
# A022634: Expansion of Product_{m>=1} (1 + m*q^m)^6.

The programs for A022634, there is no canonical definition to state claims against.
-/

/-! ## A022634.P2887058952067720398

`A297321(eq[6, A025581(n)])`
-/

namespace A022634.P2887058952067720398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022634.P2887058952067720398

/-! ## A022634.P2346544312386353596

`A297321(A055999(n+4)-1)`
-/

namespace A022634.P2346544312386353596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A055999 (n + 4) - 1).toNat

end

end A022634.P2346544312386353596

/-! ## A022634.P214103458485643860

`A297321(A000217(n+7)-7)`
-/

namespace A022634.P214103458485643860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A000217 (n + 7) - 7).toNat

end

end A022634.P214103458485643860

/-! ## A022634.P7041377123051830460

`A297321(A161680(n+8)-7)`
-/

namespace A022634.P7041377123051830460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A161680 (n + 8) - 7).toNat

end

end A022634.P7041377123051830460

/-! ## A022634.P14410163032370382643

`A297321(A000124(n+6)+n-1)`
-/

namespace A022634.P14410163032370382643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A000124 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A022634.P14410163032370382643

/-! ## A022634.P16146267780676768662

`A297321(A167614(n+5)+n-3)`
-/

namespace A022634.P16146267780676768662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A167614 (n + 5) + ((n : ℤ) - 3)).toNat

end

end A022634.P16146267780676768662

/-! ## A022634.P12609966628507494964

`A297321(2*n+A000096(n+4)+7)`
-/

namespace A022634.P12609966628507494964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 ((2 * n : ℤ) + (A000096 (n + 4) + 7)).toNat

end

end A022634.P12609966628507494964

/-! ## A022634.P12748469374773945027

`A297321(2*n+A055998(n+3)+9)`
-/

namespace A022634.P12748469374773945027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 ((2 * n : ℤ) + (A055998 (n + 3) + 9)).toNat

end

end A022634.P12748469374773945027

/-! ## A022634.P479466527768961367

`A297321(A167499(n+2)+4*n+10)`
-/

namespace A022634.P479466527768961367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A167499 (n + 2) + (4 * n + 10 : ℤ)).toNat

end

end A022634.P479466527768961367

/-!
# A022635: Expansion of Product_{m>=1} (1 + m*q^m)^7.

The programs for A022635, there is no canonical definition to state claims against.
-/

/-! ## A022635.P6913658292040437423

`A297321(A056126(n)+28)`
-/

namespace A022635.P6913658292040437423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A056126 n + 28).toNat

end

end A022635.P6913658292040437423

/-! ## A022635.P2878318164409141034

`A297321(eq[7, A025581(n)])`
-/

namespace A022635.P2878318164409141034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022635.P2878318164409141034

/-! ## A022635.P11643230469177498544

`A297321(A027379(n+6)-5)`
-/

namespace A022635.P11643230469177498544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A027379 (n + 6) - 5).toNat

end

end A022635.P11643230469177498544

/-! ## A022635.P2783583422444956532

`A297321(A000217(n+8)-8)`
-/

namespace A022635.P2783583422444956532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A000217 (n + 8) - 8).toNat

end

end A022635.P2783583422444956532

/-! ## A022635.P13359156945694586692

`A297321(eq[8, A004736(n+1)])`
-/

namespace A022635.P13359156945694586692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022635.P13359156945694586692

/-! ## A022635.P282538963538791013

`A297321(eq[15, A027293(n+1)])`
-/

namespace A022635.P282538963538791013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022635.P282538963538791013

/-! ## A022635.P5104145218106670637

`A297321(eq[8, sqrt(A055461(n+1))])`
-/

namespace A022635.P5104145218106670637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A022635.P5104145218106670637

/-! ## A022635.P11199811884148208174

`A297321(A000096(n+6)+n+1)`
-/

namespace A022635.P11199811884148208174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A000096 (n + 6) + (n + 1 : ℤ)).toNat

end

end A022635.P11199811884148208174

/-! ## A022635.P6335723535724922178

`A297321(A000124(n+7)+n-1)`
-/

namespace A022635.P6335723535724922178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A000124 (n + 7) + ((n : ℤ) - 1)).toNat

end

end A022635.P6335723535724922178

/-! ## A022635.P10032826478095838101

`A297321(2*n+A000217(n+6)+7)`
-/

namespace A022635.P10032826478095838101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 ((2 * n : ℤ) + (A000217 (n + 6) + 7)).toNat

end

end A022635.P10032826478095838101

/-!
# A022636: Expansion of Product_{m>=1} (1 + m*q^m)^8.

The programs for A022636, there is no canonical definition to state claims against.
-/

/-! ## A022636.P13798623346153157344

`A297321(A134227(n+7)-3)`
-/

namespace A022636.P13798623346153157344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A134227 (n + 7) - 3).toNat

end

end A022636.P13798623346153157344

/-! ## A022636.P11492375282334695695

`A297321(A000217(n+9)-9)`
-/

namespace A022636.P11492375282334695695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A000217 (n + 9) - 9).toNat

end

end A022636.P11492375282334695695

/-! ## A022636.P1153086369211573529

`A297321(A161680(n+10)-9)`
-/

namespace A022636.P1153086369211573529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A161680 (n + 10) - 9).toNat

end

end A022636.P1153086369211573529

/-! ## A022636.P7929861583305142121

`A297321(A000124(n+8)+n-1)`
-/

namespace A022636.P7929861583305142121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A000124 (n + 8) + ((n : ℤ) - 1)).toNat

end

end A022636.P7929861583305142121

/-! ## A022636.P12832849046466664986

`A297321(A167499(n+4)+4*(n+4))`
-/

namespace A022636.P12832849046466664986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A167499 (n + 4) + (4 * (n + 4) : ℤ)).toNat

end

end A022636.P12832849046466664986

/-! ## A022636.P12372065041109305411

`A297321(A167614(n+5)+A008486(n+4))`
-/

namespace A022636.P12372065041109305411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A167614 (n + 5) + A008486 (n + 4)).toNat

end

end A022636.P12372065041109305411

/-! ## A022636.P4100450636193363354

`A297321(A008574(n+5)+A000124(n+5))`
-/

namespace A022636.P4100450636193363354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A008574 (n + 5) + A000124 (n + 5)).toNat

end

end A022636.P4100450636193363354

/-!
# A022637: Expansion of Product_{m>=1} (1 + m*q^m)^9.

The programs for A022637, there is no canonical definition to state claims against.
-/

/-! ## A022637.P10653929101493095317

`A297321(A056000(n+6))`
-/

namespace A022637.P10653929101493095317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A056000 (n + 6)).toNat

end

end A022637.P10653929101493095317

/-! ## A022637.P16523409251011035162

`A297321(A000217(n+10)-10)`
-/

namespace A022637.P16523409251011035162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A000217 (n + 10) - 10).toNat

end

end A022637.P16523409251011035162

/-! ## A022637.P15032941113888632673

`A297321(A167499(n+7)+A103517(n+1))`
-/

namespace A022637.P15032941113888632673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A167499 (n + 7) + A103517 (n + 1)).toNat

end

end A022637.P15032941113888632673

/-! ## A022637.P5747243224469897139

`A297321(A167499(n+7)+A005843(n+2))`
-/

namespace A022637.P5747243224469897139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A167499 (n + 7) + A005843 (n + 2)).toNat

end

end A022637.P5747243224469897139

/-! ## A022637.P7294656477932937746

`A297321(A002378(n+7)-A000124(n+4))`
-/

namespace A022637.P7294656477932937746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A002378 (n + 7) - A000124 (n + 4)).toNat

end

end A022637.P7294656477932937746

/-!
# A022638: Expansion of Product_{m>=1} (1 + m*q^m)^10.

The programs for A022638, there is no canonical definition to state claims against.
-/

/-! ## A022638.P2763394649888131405

`A297321(A056000(n+7)-1)`
-/

namespace A022638.P2763394649888131405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A056000 (n + 7) - 1).toNat

end

end A022638.P2763394649888131405

/-! ## A022638.P16784605335060309298

`A297321(A000217(n+11)-11)`
-/

namespace A022638.P16784605335060309298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A000217 (n + 11) - 11).toNat

end

end A022638.P16784605335060309298

/-! ## A022638.P14591764363775131432

`A297321(A000124(n+10)-(1-n))`
-/

namespace A022638.P14591764363775131432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A000124 (n + 10) - (1 - (n : ℤ))).toNat

end

end A022638.P14591764363775131432

/-! ## A022638.P7904414206995511919

`A297321(A223134(n+2)+A167499(n+8))`
-/

namespace A022638.P7904414206995511919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A223134 (n + 2) + A167499 (n + 8)).toNat

end

end A022638.P7904414206995511919

/-! ## A022638.P14643164308932446582

`record[A297321(∑[A057717(n)])]`
-/

namespace A022638.P14643164308932446582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022638.P14643164308932446582

/-!
# A022639: Expansion of Product_{m>=1} (1 + m*q^m)^11.

The programs for A022639, there is no canonical definition to state claims against.
-/

/-! ## A022639.P4621739355518341904

`A297321(eq[11, A025581(n)])`
-/

namespace A022639.P4621739355518341904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022639.P4621739355518341904

/-! ## A022639.P12796736518923130528

`A297321(A000217(n+12)-12)`
-/

namespace A022639.P12796736518923130528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A000217 (n + 12) - 12).toNat

end

end A022639.P12796736518923130528

/-! ## A022639.P1627931738217002188

`A297321(eq[12, A004736(n+1)])`
-/

namespace A022639.P1627931738217002188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022639.P1627931738217002188

/-! ## A022639.P4056666687347486854

`A297321(A055998(n+9)+n+3)`
-/

namespace A022639.P4056666687347486854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A055998 (n + 9) + (n + 3 : ℤ)).toNat

end

end A022639.P4056666687347486854

/-! ## A022639.P12646658262224549519

`A297321(A167499(n+9)+A005843(n+3))`
-/

namespace A022639.P12646658262224549519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A167499 (n + 9) + A005843 (n + 3)).toNat

end

end A022639.P12646658262224549519

/-! ## A022639.P12257016821668962697

`A297321(A167614(n+8)+A008486(n+6))`
-/

namespace A022639.P12257016821668962697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A167614 (n + 8) + A008486 (n + 6)).toNat

end

end A022639.P12257016821668962697

/-!
# A022640: Expansion of Product_{m>=1} (1 + m*q^m)^12.

The programs for A022640, there is no canonical definition to state claims against.
-/

/-! ## A022640.P9282557748386253582

`A297321(eq[12, A025581(n)])`
-/

namespace A022640.P9282557748386253582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022640.P9282557748386253582

/-! ## A022640.P5049095399918552514

`A297321(eq[25, A099375(n)])`
-/

namespace A022640.P5049095399918552514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022640.P5049095399918552514

/-! ## A022640.P8873426558789676938

`A297321(eq[13, A004736(n+1)])`
-/

namespace A022640.P8873426558789676938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022640.P8873426558789676938

/-! ## A022640.P15371285511015985303

`A297321(A000217(n+12)+n)`
-/

namespace A022640.P15371285511015985303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A000217 (n + 12) + (n : ℤ)).toNat

end

end A022640.P15371285511015985303

/-! ## A022640.P5028281371953913112

`A297321(A008574(n+8)+A000124(n+9))`
-/

namespace A022640.P5028281371953913112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A008574 (n + 8) + A000124 (n + 9)).toNat

end

end A022640.P5028281371953913112

/-!
# A022641: Expansion of Product_{m>=1} (1 + m*q^m)^13.

The programs for A022641, there is no canonical definition to state claims against.
-/

/-! ## A022641.P4241423495321463936

`A297321(eq[13, A025581(n)])`
-/

namespace A022641.P4241423495321463936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022641.P4241423495321463936

/-! ## A022641.P12340171468541652212

`A297321(eq[14, A193739(n)])`
-/

namespace A022641.P12340171468541652212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022641.P12340171468541652212

/-! ## A022641.P12990821507988701242

`A297321(eq[14, A004736(n+1)])`
-/

namespace A022641.P12990821507988701242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022641.P12990821507988701242

/-! ## A022641.P2468932339915067619

`A297321(A000217(n+13)+n)`
-/

namespace A022641.P2468932339915067619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A000217 (n + 13) + (n : ℤ)).toNat

end

end A022641.P2468932339915067619

/-! ## A022641.P1642660296410545972

`A297321(A000096(n+12)+n+1)`
-/

namespace A022641.P1642660296410545972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A000096 (n + 12) + (n + 1 : ℤ)).toNat

end

end A022641.P1642660296410545972

/-!
# A022642: Expansion of Product_{m>=1} (1 + m*q^m)^14.

The programs for A022642, there is no canonical definition to state claims against.
-/

/-! ## A022642.P5416647868658831400

`A297321(A056115(n+10))`
-/

namespace A022642.P5416647868658831400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A056115 (n + 10)).toNat

end

end A022642.P5416647868658831400

/-! ## A022642.P7312275655178638040

`A297321(eq[14, A025581(n)])`
-/

namespace A022642.P7312275655178638040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022642.P7312275655178638040

/-! ## A022642.P1405593868018876117

`A297321(eq[15, A004736(n+1)])`
-/

namespace A022642.P1405593868018876117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022642.P1405593868018876117

/-! ## A022642.P16432681284565159514

`A297321(A000217(n+14)+n)`
-/

namespace A022642.P16432681284565159514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A000217 (n + 14) + (n : ℤ)).toNat

end

end A022642.P16432681284565159514

/-! ## A022642.P12868686227766172193

`A297321(eq[15, sqrt(A055461(n+1))])`
-/

namespace A022642.P12868686227766172193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A022642.P12868686227766172193

/-!
# A022643: Expansion of Product_{m>=1} (1 + m*q^m)^15.

The programs for A022643, there is no canonical definition to state claims against.
-/

/-! ## A022643.P13668241937492366925

`A297321(eq[15, A025581(n)])`
-/

namespace A022643.P13668241937492366925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022643.P13668241937492366925

/-! ## A022643.P8953670412987926520

`A297321(eq[16, A193739(n)])`
-/

namespace A022643.P8953670412987926520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022643.P8953670412987926520

/-! ## A022643.P8191186891445612688

`A297321(eq[31, A099375(n)])`
-/

namespace A022643.P8191186891445612688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022643.P8191186891445612688

/-! ## A022643.P10866085448624496638

`A297321(eq[16, A004736(n+1)])`
-/

namespace A022643.P10866085448624496638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022643.P10866085448624496638

/-! ## A022643.P5165096014766899391

`A297321(A000217(n+15)+n)`
-/

namespace A022643.P5165096014766899391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A000217 (n + 15) + (n : ℤ)).toNat

end

end A022643.P5165096014766899391

/-!
# A022644: Expansion of Product_{m>=1} (1 + m*q^m)^16.

The programs for A022644, there is no canonical definition to state claims against.
-/

/-! ## A022644.P9884094650881324940

`A297321(eq[16, A025581(n)])`
-/

namespace A022644.P9884094650881324940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022644.P9884094650881324940

/-! ## A022644.P4905076697079131583

`A297321(eq[17, A193739(n)])`
-/

namespace A022644.P4905076697079131583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022644.P4905076697079131583

/-! ## A022644.P14173254013005894703

`A297321(eq[33, A099375(n)])`
-/

namespace A022644.P14173254013005894703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022644.P14173254013005894703

/-! ## A022644.P4372889064535824953

`A297321(eq[17, A004736(n+1)])`
-/

namespace A022644.P4372889064535824953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022644.P4372889064535824953

/-! ## A022644.P16395512786079856734

`record[A297321(A132315(n+1))]`
-/

namespace A022644.P16395512786079856734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A132315 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022644.P16395512786079856734

/-!
# A022645: Expansion of Product_{m>=1} (1 + m*q^m)^17.

The programs for A022645, there is no canonical definition to state claims against.
-/

/-! ## A022645.P1125006577122975734

`A297321(eq[17, A025581(n)])`
-/

namespace A022645.P1125006577122975734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022645.P1125006577122975734

/-! ## A022645.P9674141250780230110

`A297321(eq[18, A193739(n)])`
-/

namespace A022645.P9674141250780230110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022645.P9674141250780230110

/-! ## A022645.P15378878876584110412

`A297321(eq[18, A195663(n)])`
-/

namespace A022645.P15378878876584110412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022645.P15378878876584110412

/-! ## A022645.P3379795551584560857

`A297321(eq[35, A099375(n)])`
-/

namespace A022645.P3379795551584560857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022645.P3379795551584560857

/-! ## A022645.P8115968885567786187

`A297321(eq[18, A004736(n+1)])`
-/

namespace A022645.P8115968885567786187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022645.P8115968885567786187

/-!
# A022646: Expansion of Product_{m>=1} (1 + m*q^m)^18.

The programs for A022646, there is no canonical definition to state claims against.
-/

/-! ## A022646.P14916201372078886019

`A297321(eq[19, A004736(n+1)])`
-/

namespace A022646.P14916201372078886019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022646.P14916201372078886019

/-!
# A022647: Expansion of Product_{m>=1} (1 + m*q^m)^19.

The programs for A022647, there is no canonical definition to state claims against.
-/

/-! ## A022647.P3862392630888824548

`A297321(eq[20, A004736(n+1)])`
-/

namespace A022647.P3862392630888824548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022647.P3862392630888824548

/-!
# A022648: Expansion of Product_{m>=1} (1 + m*q^m)^20.

The programs for A022648, there is no canonical definition to state claims against.
-/

/-! ## A022648.P8131804644177927325

`A297321(eq[20, A025581(n)])`
-/

namespace A022648.P8131804644177927325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022648.P8131804644177927325

/-! ## A022648.P11949836724000991888

`A297321(eq[21, A004736(n+1)])`
-/

namespace A022648.P11949836724000991888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022648.P11949836724000991888

/-!
# A022649: Expansion of Product_{m >=1} (1+m*q^m)^21.

The programs for A022649, there is no canonical definition to state claims against.
-/

/-! ## A022649.P416100836184142930

`A297321(eq[21, A025581(n)])`
-/

namespace A022649.P416100836184142930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022649.P416100836184142930

/-!
# A022652: Expansion of Product_{m>=1} (1+m*q^m)^24.

The programs for A022652, there is no canonical definition to state claims against.
-/

/-! ## A022652.P8115494941465382949

`A297321(eq[25, A004736(n+1)])`
-/

namespace A022652.P8115494941465382949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022652.P8115494941465382949

/-!
# A022653: Expansion of Product_{m>=1} (1+m*q^m)^25.

The programs for A022653, there is no canonical definition to state claims against.
-/

/-! ## A022653.P10411942164097134252

`A297321(eq[25, A025581(n)])`
-/

namespace A022653.P10411942164097134252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022653.P10411942164097134252

/-! ## A022653.P16308351743628640184

`A297321(eq[51, A099375(n)])`
-/

namespace A022653.P16308351743628640184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022653.P16308351743628640184

/-!
# A022656: Expansion of Product_{m>=1} (1+m*q^m)^28.

The programs for A022656, there is no canonical definition to state claims against.
-/

/-! ## A022656.P5539981771776027157

`A297321(eq[57, A099375(n)])`
-/

namespace A022656.P5539981771776027157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  57

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022656.P5539981771776027157

/-! ## A022656.P5057845610680964878

`A297321(eq[29, A004736(n+1)])`
-/

namespace A022656.P5057845610680964878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022656.P5057845610680964878

/-!
# A022657: Expansion of Product_{m>=1} (1+m*q^m)^29.

The programs for A022657, there is no canonical definition to state claims against.
-/

/-! ## A022657.P4488586434029768214

`A297321(eq[29, A025581(n)])`
-/

namespace A022657.P4488586434029768214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022657.P4488586434029768214

/-!
# A022659: Expansion of Product_{m>=1} (1+m*q^m)^31.

The programs for A022659, there is no canonical definition to state claims against.
-/

/-! ## A022659.P4317824278124449007

`A297321(eq[32, A004736(n+1)])`
-/

namespace A022659.P4317824278124449007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022659.P4317824278124449007

/-!
# A022661: Expansion of Product_{m>=1} (1-m*q^m).

The programs for A022661, there is no canonical definition to state claims against.
-/

/-! ## A022661.P96840479758716734

`A292166(∑[n+2]-1)`
-/

namespace A022661.P96840479758716734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292166 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A022661.P96840479758716734

/-! ## A022661.P15932656791945709878

`A292166(A034856(n+1))%(2^(n+1))`
-/

namespace A022661.P15932656791945709878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292166 (A034856 (n + 1)).toNat) (2 ^ (n + 1) : ℤ)

end

end A022661.P15932656791945709878

/-! ## A022661.P6620291638705464070

`or(A000007(n), A292166(A034856(n+1)))`
-/

namespace A022661.P6620291638705464070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A292166 (A034856 (n + 1)).toNat)

end

end A022661.P6620291638705464070

/-! ## A022661.P10472037748225254933

`A292166(A034856(n+1))+A028326(n)%2`
-/

namespace A022661.P10472037748225254933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292166 (A034856 (n + 1)).toNat + Int.tmod (A028326 n) 2

end

end A022661.P10472037748225254933

/-! ## A022661.P12998484026773770611

`A292166(A034856(n+1))+and(2, A001844(n))`
-/

namespace A022661.P12998484026773770611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292166 (A034856 (n + 1)).toNat + Int.land 2 (A001844 n)

end

end A022661.P12998484026773770611

/-! ## A022661.P14214172543174646413

`A292166(A034856(n+1))+and(2, A041113(n))`
-/

namespace A022661.P14214172543174646413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292166 (A034856 (n + 1)).toNat + Int.land 2 (A041113 n)

end

end A022661.P14214172543174646413

/-! ## A022661.P4035533027693862673

`A292166(A034856(n+1))+and(2, A080610(n))`
-/

namespace A022661.P4035533027693862673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292166 (A034856 (n + 1)).toNat + Int.land 2 (A080610 n)

end

end A022661.P4035533027693862673

/-! ## A022661.P4296444511665831693

`A292166(A034856(n+1))^gcd(2, A025530(n+1))`
-/

namespace A022661.P4296444511665831693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292166 (A034856 (n + 1)).toNat ^ Int.gcd 2 (A025530 (n + 1))

end

end A022661.P4296444511665831693

/-! ## A022661.P4826504804389063615

`A294587(∑[n]+n)`
-/

namespace A022661.P4826504804389063615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294587 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A022661.P4826504804389063615

/-! ## A022661.P7602698583154357865

`A294587(A000096(n))%A000051(n)`
-/

namespace A022661.P7602698583154357865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294587 (A000096 n).toNat) (A000051 n)

end

end A022661.P7602698583154357865

/-!
# A022662: Expansion of Product_{m>=1} (1 - m*q^m)^2.

The programs for A022662, there is no canonical definition to state claims against.
-/

/-! ## A022662.P13344309331242357267

`A297323(∑[n+3])`
-/

namespace A022662.P13344309331242357267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297323 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022662.P13344309331242357267

/-! ## A022662.P18277097097990180770

`A297323(A141214(n))%84`
-/

namespace A022662.P18277097097990180770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297323 (A141214 n).toNat) 84

end

end A022662.P18277097097990180770

/-! ## A022662.P2846965880361138597

`A297323(A055998(n+1))%84`
-/

namespace A022662.P2846965880361138597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297323 (A055998 (n + 1)).toNat) 84

end

end A022662.P2846965880361138597

/-! ## A022662.P18434893450714492920

`A297323(A141214(n))+A025469(n)`
-/

namespace A022662.P18434893450714492920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297323 (A141214 n).toNat + A025469 n

end

end A022662.P18434893450714492920

/-! ## A022662.P10666422308769422669

`A332281(n)+A297323(A141214(n))`
-/

namespace A022662.P10666422308769422669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332281 n + A297323 (A141214 n).toNat

end

end A022662.P10666422308769422669

/-!
# A022663: Expansion of Product_{m>=1} (1 - m*q^m)^3.

The programs for A022663, there is no canonical definition to state claims against.
-/

/-! ## A022663.P14777801056671873898

`A297323(∑[n+4]+2)`
-/

namespace A022663.P14777801056671873898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297323 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A022663.P14777801056671873898

/-! ## A022663.P7739286360174959141

`A297323(A046691(n+2))+A000007(2*n+3)`
-/

namespace A022663.P7739286360174959141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297323 (A046691 (n + 2)).toNat + A000007 (2 * n + 3)

end

end A022663.P7739286360174959141

/-!
# A022665: Expansion of Product_{m>=1} (1 - m*q^m)^5.

The programs for A022665, there is no canonical definition to state claims against.
-/

/-! ## A022665.P9719915689866782871

`A297323(A055999(n+3))`
-/

namespace A022665.P9719915689866782871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297323 (A055999 (n + 3)).toNat

end

end A022665.P9719915689866782871

/-! ## A022665.P3315893837604044342

`A297323(eq[2, A116949(n)])`
-/

namespace A022665.P3315893837604044342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022665.P3315893837604044342

/-! ## A022665.P17096921971736534794

`A297323(eq[5, A025581(n)])`
-/

namespace A022665.P17096921971736534794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022665.P17096921971736534794

/-!
# A022670: Expansion of Product_{m >= 1} (1-m*q^m)^10.

The programs for A022670, there is no canonical definition to state claims against.
-/

/-! ## A022670.P10381216496488346964

`A341831(∑[∑[A081016(n)]])`
-/

namespace A022670.P10381216496488346964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081016 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341831 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A022670.P10381216496488346964

/-!
# A022693: Expansion of Product_{m>=1} 1/(1 + m*q^m).

The programs for A022693, there is no canonical definition to state claims against.
-/

/-! ## A022693.P2605974367957315791

`A297325(∑[n+2]-1)`
-/

namespace A022693.P2605974367957315791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A022693.P2605974367957315791

/-! ## A022693.P7592242123816401106

`A297325(A034856(n+1))%A048578(n)`
-/

namespace A022693.P7592242123816401106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297325 (A034856 (n + 1)).toNat) (A048578 n)

end

end A022693.P7592242123816401106

/-! ## A022693.P18091339725712926760

`or(A000007(n), A297325(A034856(n+1)))`
-/

namespace A022693.P18091339725712926760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A297325 (A034856 (n + 1)).toNat)

end

end A022693.P18091339725712926760

/-! ## A022693.P16278568779036373157

`char[A014682(n)]*A297325(A034856(n+1))`
-/

namespace A022693.P16278568779036373157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A297325 (A034856 (n + 1)).toNat

end

end A022693.P16278568779036373157

/-! ## A022693.P12971320563250362658

`A342845(∑{e}[n+1, #])+A297325(A034856(n+1))`
-/

namespace A022693.P12971320563250362658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342845 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + A297325 (A034856 (n + 1)).toNat

end

end A022693.P12971320563250362658

/-! ## A022693.P15848180889300371865

`A297325(A034856(n+1))+floor(3/2*A027271(n))%(n+1)`
-/

namespace A022693.P15848180889300371865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A034856 (n + 1)).toNat + Int.tmod ⌊(3 : ℚ) / 2 * (A027271 n : ℚ)⌋ (n + 1 : ℤ)

end

end A022693.P15848180889300371865

/-! ## A022693.P8055359613153682198

`A117494(A175448(n+1))*A297325(A034856(n+1))`
-/

namespace A022693.P8055359613153682198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117494 (A175448 (n + 1)).toNat * A297325 (A034856 (n + 1)).toNat

end

end A022693.P8055359613153682198

/-! ## A022693.P8987935857442934906

`A297325(A034856(n+1))+A000007(n²+1)`
-/

namespace A022693.P8987935857442934906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A034856 (n + 1)).toNat + A000007 (n ^ 2 + 1)

end

end A022693.P8987935857442934906

/-!
# A022694: Expansion of Product_{m>=1} (1 + m*q^m)^-2.

The programs for A022694, there is no canonical definition to state claims against.
-/

/-! ## A022694.P15155669866576753109

`A297325(∑[n+3])`
-/

namespace A022694.P15155669866576753109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022694.P15155669866576753109

/-! ## A022694.P16813125068097771611

`or(char[2], A297325(A027379(n+1)))`
-/

namespace A022694.P16813125068097771611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A297325 (A027379 (n + 1)).toNat)

end

end A022694.P16813125068097771611

/-! ## A022694.P16943236358579083708

`A297325(A027379(n+1))^dr(A033999(n))`
-/

namespace A022694.P16943236358579083708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A027379 (n + 1)).toNat ^ SequenceMachineLib.digitalRoot (A033999 n)

end

end A022694.P16943236358579083708

/-! ## A022694.P16172130462460793008

`char[A006368(n)]*A297325(A027379(n+1))`
-/

namespace A022694.P16172130462460793008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A297325 (A027379 (n + 1)).toNat

end

end A022694.P16172130462460793008

/-! ## A022694.P9461110715843429050

`char[A026741(n)]*A297325(A027379(n+1))`
-/

namespace A022694.P9461110715843429050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A297325 (A027379 (n + 1)).toNat

end

end A022694.P9461110715843429050

/-! ## A022694.P198019042157989271

`char[A028242(n)]*A297325(A027379(n+1))`
-/

namespace A022694.P198019042157989271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A297325 (A027379 (n + 1)).toNat

end

end A022694.P198019042157989271

/-! ## A022694.P16180780438565217816

`gcd(2, A005408(n))*A297325(A027379(n+1))`
-/

namespace A022694.P16180780438565217816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A005408 n) : ℤ) * A297325 (A027379 (n + 1)).toNat

end

end A022694.P16180780438565217816

/-! ## A022694.P15794747232726205049

`A007318(C(2, n))*A297325(A055998(n+1))`
-/

namespace A022694.P15794747232726205049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A297325 (A055998 (n + 1)).toNat

end

end A022694.P15794747232726205049

/-! ## A022694.P14455285587225145966

`gcd(9, A166136(n+5)+1)*A297325(A027379(n+1))`
-/

namespace A022694.P14455285587225145966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 9 (A166136 (n + 5) + 1) : ℤ) * A297325 (A027379 (n + 1)).toNat

end

end A022694.P14455285587225145966

/-! ## A022694.P5246719777715879032

`A297325(A027379(n+1))+A023969(A110660(n))`
-/

namespace A022694.P5246719777715879032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A027379 (n + 1)).toNat + A023969 (A110660 n).toNat

end

end A022694.P5246719777715879032

/-! ## A022694.P3028713663738565671

`A014963(A008458(n))*A297325(A027379(n+1))`
-/

namespace A022694.P3028713663738565671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A297325 (A027379 (n + 1)).toNat

end

end A022694.P3028713663738565671

/-! ## A022694.P9066960341458973593

`A007318(A000217(n))*A297325(A027379(n+1))`
-/

namespace A022694.P9066960341458973593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A297325 (A027379 (n + 1)).toNat

end

end A022694.P9066960341458973593

/-! ## A022694.P5634352706565225055

`A297325(A000217(2*n))*A297325(A027379(n+1))`
-/

namespace A022694.P5634352706565225055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A000217 (2 * n)).toNat * A297325 (A027379 (n + 1)).toNat

end

end A022694.P5634352706565225055

/-!
# A022695: Expansion of Product_{m>=1} (1 + m*q^m)^-3.

The programs for A022695, there is no canonical definition to state claims against.
-/

/-! ## A022695.P15259749822213683576

`A297325(∑[n+3]+n+3)`
-/

namespace A022695.P15259749822213683576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A022695.P15259749822213683576

/-! ## A022695.P2590511591083648518

`and(-1, A297325(A027379(n+2)-1))`
-/

namespace A022695.P2590511591083648518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A297325 (A027379 (n + 2) - 1).toNat)

end

end A022695.P2590511591083648518

/-! ## A022695.P17005901893366879110

`or(A000007(n), A297325(A046691(n+2)))`
-/

namespace A022695.P17005901893366879110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A297325 (A046691 (n + 2)).toNat)

end

end A022695.P17005901893366879110

/-! ## A022695.P2113763814264256713

`A297325(A027379(n+2)-1)%A048578(n)`
-/

namespace A022695.P2113763814264256713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297325 (A027379 (n + 2) - 1).toNat) (A048578 n)

end

end A022695.P2113763814264256713

/-! ## A022695.P11302326440123634268

`A000007(val(n+1, n+11))*A297325(A046691(n+2))`
-/

namespace A022695.P11302326440123634268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.valuation (n + 1) (n + 11)) * A297325 (A046691 (n + 2)).toNat

end

end A022695.P11302326440123634268

/-!
# A022696: Expansion of Product_{m>=1} (1 + m*q^m)^-4.

The programs for A022696, there is no canonical definition to state claims against.
-/

/-! ## A022696.P17794500873241213165

`A297325(∑[n+5]+5)`
-/

namespace A022696.P17794500873241213165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A022696.P17794500873241213165

/-! ## A022696.P11061697406709702284

`or(char[4], A297325(A000217(n+5)-5))`
-/

namespace A022696.P11061697406709702284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A297325 (A000217 (n + 5) - 5).toNat)

end

end A022696.P11061697406709702284

/-! ## A022696.P14472069235402256103

`A297325(A000217(n+5)-5)%A307606(n+1)`
-/

namespace A022696.P14472069235402256103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297325 (A000217 (n + 5) - 5).toNat) (A307606 (n + 1))

end

end A022696.P14472069235402256103

/-! ## A022696.P13275924807142157126

`A006257(A069935(n))*A297325(A000217(n+4)+n)`
-/

namespace A022696.P13275924807142157126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A069935 n).toNat * A297325 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A022696.P13275924807142157126

/-! ## A022696.P1527915405774878403

`A001222(A217926(n+1))*A297325(A000217(n+4)+n)`
-/

namespace A022696.P1527915405774878403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A217926 (n + 1)).toNat * A297325 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A022696.P1527915405774878403

/-! ## A022696.P9121461030489994787

`A297325(A000217(n+5)-5)%A240530(n)`
-/

namespace A022696.P9121461030489994787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297325 (A000217 (n + 5) - 5).toNat) (A240530 n)

end

end A022696.P9121461030489994787

/-!
# A022697: Expansion of Product_{m>=1} 1/(1 + m*q^m)^5.

The programs for A022697, there is no canonical definition to state claims against.
-/

/-! ## A022697.P7188530577226618725

`A297325(A055999(n+3))`
-/

namespace A022697.P7188530577226618725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A055999 (n + 3)).toNat

end

end A022697.P7188530577226618725

/-! ## A022697.P17617122976060160087

`A297325(Δ[A023551(n+1)])`
-/

namespace A022697.P17617122976060160087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (f1 (n + 1) - f1 n).toNat

end

end A022697.P17617122976060160087

/-! ## A022697.P10604666637655004716

`A297325(Δ[A026054(n+3)])`
-/

namespace A022697.P10604666637655004716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (f1 (n + 1) - f1 n).toNat

end

end A022697.P10604666637655004716

/-! ## A022697.P15120983112267072844

`A297325(A034856(n+5)-4)`
-/

namespace A022697.P15120983112267072844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A034856 (n + 5) - 4).toNat

end

end A022697.P15120983112267072844

/-! ## A022697.P6885953810064548583

`A297325(eq[5, A025581(n)])`
-/

namespace A022697.P6885953810064548583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022697.P6885953810064548583

/-!
# A022698: Expansion of Product_{m>=1} 1/(1 + m*q^m)^6.

The programs for A022698, there is no canonical definition to state claims against.
-/

/-! ## A022698.P14245188426861536916

`A297325(A052905(n+4)-2)`
-/

namespace A022698.P14245188426861536916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A052905 (n + 4) - 2).toNat

end

end A022698.P14245188426861536916

/-! ## A022698.P3944806126914014509

`A297325(A000096(n+6)-6)`
-/

namespace A022698.P3944806126914014509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A000096 (n + 6) - 6).toNat

end

end A022698.P3944806126914014509

/-! ## A022698.P14219956625903496531

`A297325(A000217(n+7)-7)`
-/

namespace A022698.P14219956625903496531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A000217 (n + 7) - 7).toNat

end

end A022698.P14219956625903496531

/-! ## A022698.P2412001414444532765

`A297325(Δ[A023551(n+2)]-1)`
-/

namespace A022698.P2412001414444532765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (f1 (n + 1) - f1 n - 1).toNat

end

end A022698.P2412001414444532765

/-! ## A022698.P15789828725347998265

`A297325(Δ[A026054(n+4)]-1)`
-/

namespace A022698.P15789828725347998265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (f1 (n + 1) - f1 n - 1).toNat

end

end A022698.P15789828725347998265

/-! ## A022698.P13360916098750874496

`A297325(eq[6, A025581(n)])`
-/

namespace A022698.P13360916098750874496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022698.P13360916098750874496

/-!
# A022699: Expansion of Product_{m>=1} 1/(1 + m*q^m)^7.

The programs for A022699, there is no canonical definition to state claims against.
-/

/-! ## A022699.P16633868061831779442

`A297325(A155212(n+4))`
-/

namespace A022699.P16633868061831779442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A155212 (n + 4)).toNat

end

end A022699.P16633868061831779442

/-! ## A022699.P3979902930648071650

`A297325(A056000(n+4)+2)`
-/

namespace A022699.P3979902930648071650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A056000 (n + 4) + 2).toNat

end

end A022699.P3979902930648071650

/-! ## A022699.P1618054638692057462

`A297325(A034856(n+7)-6)`
-/

namespace A022699.P1618054638692057462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A034856 (n + 7) - 6).toNat

end

end A022699.P1618054638692057462

/-! ## A022699.P2093987144872011238

`A297325(A000096(n+7)-7)`
-/

namespace A022699.P2093987144872011238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A000096 (n + 7) - 7).toNat

end

end A022699.P2093987144872011238

/-! ## A022699.P17936915453496887382

`A297325(A000217(n+8)-8)`
-/

namespace A022699.P17936915453496887382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A000217 (n + 8) - 8).toNat

end

end A022699.P17936915453496887382

/-! ## A022699.P669401781668853363

`A297325(eq[7, A025581(n)])`
-/

namespace A022699.P669401781668853363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022699.P669401781668853363

