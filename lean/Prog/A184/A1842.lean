import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.B012.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

/-!
# A184200: Number of (n+1) X 3 binary arrays with no 2 X 2 subblock containing fewer than two 1s.

The programs for A184200, there is no canonical definition to state claims against.
-/

/-! ## A184200.P7959298298152042059

`A184207(∑[n+1]+2)`
-/

namespace A184200.P7959298298152042059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184200.P7959298298152042059

/-! ## A184200.P9455888700658053558

`record[root(A184207(n+3), A249057(n))]`
-/

namespace A184200.P9455888700658053558
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184207 (n + 3) : ℝ) ^ (1 / (A249057 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184200.P9455888700658053558

/-! ## A184200.P16960615412166621031

`record[root(A184207(n+2), A038738(n+1))]`
-/

namespace A184200.P16960615412166621031
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184207 (n + 2) : ℝ) ^ (1 / (A038738 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184200.P16960615412166621031

/-! ## A184200.P16401446891050491835

`record[A184207(Δ[A003453(n+5)])]`
-/

namespace A184200.P16401446891050491835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184200.P16401446891050491835

/-! ## A184200.P5823343507758347206

`A218823(∑[n+3]+6)`
-/

namespace A184200.P5823343507758347206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218823 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A184200.P5823343507758347206

/-!
# A184201: Number of (n+1)X4 binary arrays with no 2X2 subblock containing fewer than two 1s.

The programs for A184201, there is no canonical definition to state claims against.
-/

/-! ## A184201.P13067047102803085064

`A184207(∑[n+2]+4)`
-/

namespace A184201.P13067047102803085064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184201.P13067047102803085064

/-! ## A184201.P2246681271820605719

`A184207(A167614(n+1))+A025444(n)`
-/

namespace A184201.P2246681271820605719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (A167614 (n + 1)).toNat + A025444 n

end

end A184201.P2246681271820605719

/-! ## A184201.P16746124247912103248

`A184207(A167614(n+1))+A025469(n)`
-/

namespace A184201.P16746124247912103248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (A167614 (n + 1)).toNat + A025469 n

end

end A184201.P16746124247912103248

/-! ## A184201.P9772776537533605803

`lcm(A033999(n), A184207(A167614(n+1)))`
-/

namespace A184201.P9772776537533605803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A184207 (A167614 (n + 1)).toNat)

end

end A184201.P9772776537533605803

/-! ## A184201.P7178460962199295413

`A184207(A167614(n+1))%A184206(n+1)`
-/

namespace A184201.P7178460962199295413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184207 (A167614 (n + 1)).toNat) (A184206 (n + 1))

end

end A184201.P7178460962199295413

/-!
# A184202: Number of (n+1)X5 binary arrays with no 2X2 subblock containing fewer than two 1s.

The programs for A184202, there is no canonical definition to state claims against.
-/

/-! ## A184202.P12868526197705059837

`A184207(A374004(n+1))`
-/

namespace A184202.P12868526197705059837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (A374004 (n + 1)).toNat

end

end A184202.P12868526197705059837

/-! ## A184202.P4016142862829227241

`A184207(A052905(n)+9)`
-/

namespace A184202.P4016142862829227241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (A052905 n + 9).toNat

end

end A184202.P4016142862829227241

/-! ## A184202.P17028609606448498574

`A184207(A055999(n)+10)`
-/

namespace A184202.P17028609606448498574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (A055999 n + 10).toNat

end

end A184202.P17028609606448498574

/-! ## A184202.P4370273284629554450

`A184207(A167614(n+2)+1)`
-/

namespace A184202.P4370273284629554450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (A167614 (n + 2) + 1).toNat

end

end A184202.P4370273284629554450

/-! ## A184202.P8664248865051028226

`A184207(A167487(n+2)-3)`
-/

namespace A184202.P8664248865051028226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (A167487 (n + 2) - 3).toNat

end

end A184202.P8664248865051028226

/-!
# A184203: Number of (n+1) X 6 binary arrays with no 2 X 2 subblock containing fewer than two 1's.

The programs for A184203, there is no canonical definition to state claims against.
-/

/-! ## A184203.P10530696372983511177

`A184207(A374005(n+1))`
-/

namespace A184203.P10530696372983511177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (A374005 (n + 1)).toNat

end

end A184203.P10530696372983511177

/-! ## A184203.P4916878437094733510

`A184207(A167499(n+3))`
-/

namespace A184203.P4916878437094733510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (A167499 (n + 3)).toNat

end

end A184203.P4916878437094733510

/-! ## A184203.P6282008227414814253

`A184207(A155212(n)+13)`
-/

namespace A184203.P6282008227414814253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (A155212 n + 13).toNat

end

end A184203.P6282008227414814253

/-! ## A184203.P17358553857470297030

`A184207(A056000(n)+15)`
-/

namespace A184203.P17358553857470297030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (A056000 n + 15).toNat

end

end A184203.P17358553857470297030

/-! ## A184203.P7461708053296238963

`A184207(eq[7, A066657(n)])`
-/

namespace A184203.P7461708053296238963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184203.P7461708053296238963

/-!
# A184204: Number of (n+1)X7 binary arrays with no 2X2 subblock containing fewer than two 1s.

The programs for A184204, there is no canonical definition to state claims against.
-/

/-! ## A184204.P17020911816319337730

`A184207(A374007(n+1))`
-/

namespace A184204.P17020911816319337730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (A374007 (n + 1)).toNat

end

end A184204.P17020911816319337730

/-! ## A184204.P11447880066736507690

`A184207(A167487(n+4)-1)`
-/

namespace A184204.P11447880066736507690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (A167487 (n + 4) - 1).toNat

end

end A184204.P11447880066736507690

/-! ## A184204.P15472854621042652672

`A184207(eq[7, A131818(n+1)])`
-/

namespace A184204.P15472854621042652672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184204.P15472854621042652672

/-! ## A184204.P7716165750068474765

`A184207(Δ[A023545(n+1)]+10)`
-/

namespace A184204.P7716165750068474765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (f1 (n + 1) - f1 n + 10).toNat

end

end A184204.P7716165750068474765

/-! ## A184204.P18055635796748509235

`A184207(A052905(n+3))`
-/

namespace A184204.P18055635796748509235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (A052905 (n + 3)).toNat

end

end A184204.P18055635796748509235

/-!
# A184205: Number of (n+1) X 8 binary arrays with no 2 X 2 subblock containing fewer than two 1's.

The programs for A184205, there is no canonical definition to state claims against.
-/

/-! ## A184205.P14202787564558825049

`A184207(A374008(n+1))`
-/

namespace A184205.P14202787564558825049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (A374008 (n + 1)).toNat

end

end A184205.P14202787564558825049

/-! ## A184205.P6640469272680925353

`A184207(eq[11, A066657(n)])`
-/

namespace A184205.P6640469272680925353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184205.P6640469272680925353

/-! ## A184205.P14805616639330184127

`A184207(A167499(n+5)+2)`
-/

namespace A184205.P14805616639330184127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (A167499 (n + 5) + 2).toNat

end

end A184205.P14805616639330184127

/-! ## A184205.P11313150304445898276

`A184207(A000217(n+6)+7)`
-/

namespace A184205.P11313150304445898276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (A000217 (n + 6) + 7).toNat

end

end A184205.P11313150304445898276

/-! ## A184205.P1487929236759784950

`A184207(eq[8, A131818(n+1)])`
-/

namespace A184205.P1487929236759784950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184205.P1487929236759784950

/-!
# A184206: Number of (n+1)X9 binary arrays with no 2X2 subblock containing fewer than two 1s.

The programs for A184206, there is no canonical definition to state claims against.
-/

/-! ## A184206.P15394027183649596129

`A184207(A374009(n+1))`
-/

namespace A184206.P15394027183649596129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (A374009 (n + 1)).toNat

end

end A184206.P15394027183649596129

/-! ## A184206.P5138731610985336919

`A184207(eq[9, A131818(n+1)])`
-/

namespace A184206.P5138731610985336919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184207 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184206.P5138731610985336919

/-!
# A184207: T(n,k)=Number of (n+1)X(k+1) binary arrays with no 2X2 subblock containing fewer than two 1s.

The programs for A184207, there is no canonical definition to state claims against.
-/

/-! ## A184207.P11032556272916896586

`A218823(lt[1, A112508(n+1)])`
-/

namespace A184207.P11032556272916896586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A184207.P11032556272916896586

/-!
# A184208: 

The programs for A184208, there is no canonical definition to state claims against.
-/

/-! ## A184208.P1274962236071585871

`A184217((n+1)²+n²)`
-/

namespace A184208.P1274962236071585871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184217 ((n + 1) ^ 2 + n ^ 2)

end

end A184208.P1274962236071585871

/-!
# A184209: Number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock sum greater than 6.

The programs for A184209, there is no canonical definition to state claims against.
-/

/-! ## A184209.P8593759213556449762

`A184217(∑[n]+1)`
-/

namespace A184209.P8593759213556449762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184217 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184209.P8593759213556449762

/-! ## A184209.P9291360611694952047

`record[A010054(n)*A184217(n+1)]`
-/

namespace A184209.P9291360611694952047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184209.P9291360611694952047

/-! ## A184209.P1922237100582257126

`record[root(A184217(n+1), A128227(n))]`
-/

namespace A184209.P1922237100582257126
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184217 (n + 1) : ℝ) ^ (1 / (A128227 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184209.P1922237100582257126

/-! ## A184209.P8757592986352825209

`record[root(A184217(n+1), A144464(n))]`
-/

namespace A184209.P8757592986352825209
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184217 (n + 1) : ℝ) ^ (1 / (A144464 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184209.P8757592986352825209

/-! ## A184209.P13528662863137282071

`record[A184217(n+1)*A185916(n+1)]`
-/

namespace A184209.P13528662863137282071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184217 (n + 1) * A185916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184209.P13528662863137282071

/-!
# A184210: Number of (n+1)X3 0..3 arrays with every 2X2 subblock sum greater than 6.

The programs for A184210, there is no canonical definition to state claims against.
-/

/-! ## A184210.P15738191992356680330

`A184217(∑[n+1]+2)`
-/

namespace A184210.P15738191992356680330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184217 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184210.P15738191992356680330

/-! ## A184210.P10306575550616838867

`record[A010054(n)*A184217(n+2)]`
-/

namespace A184210.P10306575550616838867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184217 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184210.P10306575550616838867

/-! ## A184210.P5057706656704919407

`record[A184217(n+2)*A185916(n+1)]`
-/

namespace A184210.P5057706656704919407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184217 (n + 2) * A185916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184210.P5057706656704919407

/-! ## A184210.P13461086202491991279

`char[A057163(n)]*A184217(A000096(n)+3)`
-/

namespace A184210.P13461086202491991279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A184217 (A000096 n + 3).toNat

end

end A184210.P13461086202491991279

/-! ## A184210.P10932129254968965884

`record[A184217(Δ[A003453(n+5)])]`
-/

namespace A184210.P10932129254968965884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184217 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184210.P10932129254968965884

/-!
# A184211: Number of (n+1) X 4 0..3 arrays with every 2 X 2 subblock sum greater than 6.

The programs for A184211, there is no canonical definition to state claims against.
-/

/-! ## A184211.P11423153069140681883

`A184217(∑[n+2]+4)`
-/

namespace A184211.P11423153069140681883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184217 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184211.P11423153069140681883

/-! ## A184211.P7680689396502365318

`or(A000038(n), A184217(A167614(n+1)))`
-/

namespace A184211.P7680689396502365318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A184217 (A167614 (n + 1)).toNat)

end

end A184211.P7680689396502365318

/-! ## A184211.P8803879714968007175

`or(A100910(n), A184217(A167614(n+1)))`
-/

namespace A184211.P8803879714968007175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A100910 n) (A184217 (A167614 (n + 1)).toNat)

end

end A184211.P8803879714968007175

/-! ## A184211.P13100575400244781999

`lcm(A153881(n+1), A184217(A167614(n+1)))`
-/

namespace A184211.P13100575400244781999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A153881 (n + 1)) (A184217 (A167614 (n + 1)).toNat)

end

end A184211.P13100575400244781999

/-! ## A184211.P15722126270282644641

`or(A184217(A167614(n+1)), A294936(n+1))`
-/

namespace A184211.P15722126270282644641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A184217 (A167614 (n + 1)).toNat) (A294936 (n + 1))

end

end A184211.P15722126270282644641

/-!
# A184212: Number of (n+1)X5 0..3 arrays with every 2X2 subblock sum greater than 6.

The programs for A184212, there is no canonical definition to state claims against.
-/

/-! ## A184212.P1760401462589659653

`A184217(A141214(n)+7)`
-/

namespace A184212.P1760401462589659653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184217 (A141214 n + 7).toNat

end

end A184212.P1760401462589659653

/-! ## A184212.P13533453840927057553

`A184217(A052905(n)+9)`
-/

namespace A184212.P13533453840927057553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184217 (A052905 n + 9).toNat

end

end A184212.P13533453840927057553

/-! ## A184212.P15391033192864739410

`A184217(A055999(n)+10)`
-/

namespace A184212.P15391033192864739410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184217 (A055999 n + 10).toNat

end

end A184212.P15391033192864739410

/-! ## A184212.P5338047577298892004

`A184217(A027379(n+2))`
-/

namespace A184212.P5338047577298892004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184217 (A027379 (n + 2)).toNat

end

end A184212.P5338047577298892004

/-!
# A184218: a(n) = largest k such that A000217(n+1) = A000217(n) + (A000217(n) mod k), or 0 if no such k exists.

The programs for A184218, the canonical program `A184218.P10879986465669603609` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184218 has offset 1).

The definition of A184218 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184218.P10879986465669603609

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=9, a(5)=14, a(6)=20`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A184218

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P10879986465669603609.Spec : Prop :=
  ∀ n, P10879986465669603609.a n = A184218 (n + 1)

theorem P10879986465669603609.correct : P10879986465669603609.Spec := by
  intro n
  simp only [A184218, Nat.add_sub_cancel]

end A184218

/-! ## A184218.P2610244233758410473

`a(n-1)+n` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=9`
-/

namespace A184218.P2610244233758410473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 9] fun n a =>
  a (n - 1) + n

end

end A184218.P2610244233758410473

namespace A184218

/-- `a(n-1)+n` -/
def P2610244233758410473.Spec : Prop :=
  ∀ n, (P2610244233758410473.a n : ℤ) = A184218 (n + 1)

end A184218

/-! ## A184218.P1568530265565106332

`(∑[n]-1)%(∑[C(n, 2)]+1)`
-/

namespace A184218.P1568530265565106332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ)

end

end A184218.P1568530265565106332

namespace A184218

/-- `(∑[n]-1)%(∑[C(n, 2)]+1)` -/
def P1568530265565106332.Spec : Prop :=
  ∀ n, P1568530265565106332.a n = A184218 (n + 1)

end A184218

/-! ## A184218.P7100463685125522032

`∑[∑[n]]%(∑[∑[n]-n]+1)`
-/

namespace A184218.P7100463685125522032
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (∑ j ∈ Finset.range (n + 1), f3 j + 1)

end

end A184218.P7100463685125522032

namespace A184218

/-- `∑[∑[n]]%(∑[∑[n]-n]+1)` -/
def P7100463685125522032.Spec : Prop :=
  ∀ n, P7100463685125522032.a n = A184218 (n + 1)

end A184218

/-! ## A184218.P3867129661006275422

`gcd(C(n+3, 2*n), ∑[n])-1`
-/

namespace A184218.P3867129661006275422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (Nat.choose (n + 3) (2 * n)) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A184218.P3867129661006275422

namespace A184218

/-- `gcd(C(n+3, 2*n), ∑[n])-1` -/
def P3867129661006275422.Spec : Prop :=
  ∀ n, P3867129661006275422.a n = A184218 (n + 1)

end A184218

/-! ## A184218.P1006246714931508950

`∑[n]-∑[n]^floor(4/(n+1))`
-/

namespace A184218.P1006246714931508950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) ^ (⌊4 / (n + 1 : ℚ)⌋ : ℤ)

end

end A184218.P1006246714931508950

namespace A184218

/-- `∑[n]-∑[n]^floor(4/(n+1))` -/
def P1006246714931508950.Spec : Prop :=
  ∀ n, P1006246714931508950.a n = (A184218 (n + 1) : ℚ)

end A184218

/-! ## A184218.P15674819056092942932

`(∑[n]-1)*A130543(n)`
-/

namespace A184218.P15674819056092942932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A130543 n

end

end A184218.P15674819056092942932

namespace A184218

/-- `(∑[n]-1)*A130543(n)` -/
def P15674819056092942932.Spec : Prop :=
  ∀ n, P15674819056092942932.a n = A184218 (n + 1)

end A184218

/-! ## A184218.P18254381927997701610

`(C(A101296(n+1), n)-1)*(1-∑[n])`
-/

namespace A184218.P18254381927997701610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (A101296 (n + 1)).toNat n : ℤ) - 1) * (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A184218.P18254381927997701610

namespace A184218

/-- `(C(A101296(n+1), n)-1)*(1-∑[n])` -/
def P18254381927997701610.Spec : Prop :=
  ∀ n, P18254381927997701610.a n = A184218 (n + 1)

end A184218

/-! ## A184218.P17986206533419164822

`A130543(n)*A212342(n)`
-/

namespace A184218.P17986206533419164822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130543 n * A212342 n

end

end A184218.P17986206533419164822

namespace A184218

/-- `A130543(n)*A212342(n)` -/
def P17986206533419164822.Spec : Prop :=
  ∀ n, P17986206533419164822.a n = A184218 (n + 1)

end A184218

/-! ## A184218.P5080157291432306675

`lcm(A184219(n+1), A212342(n))`
-/

namespace A184218.P5080157291432306675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A184219 (n + 1)) (A212342 n)

end

end A184218.P5080157291432306675

namespace A184218

/-- `lcm(A184219(n+1), A212342(n))` -/
def P5080157291432306675.Spec : Prop :=
  ∀ n, (P5080157291432306675.a n : ℤ) = A184218 (n + 1)

end A184218

/-! ## A184218.P16424856390863313087

`(A000217(n)-1)*A057427(A002265(n))`
-/

namespace A184218.P16424856390863313087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n - 1) * A057427 (A002265 n).toNat

end

end A184218.P16424856390863313087

namespace A184218

/-- `(A000217(n)-1)*A057427(A002265(n))` -/
def P16424856390863313087.Spec : Prop :=
  ∀ n, P16424856390863313087.a n = A184218 (n + 1)

end A184218

/-! ## A184218.P10479056098838673203

`lcm(A130703(n+1), A201163(n))`
-/

namespace A184218.P10479056098838673203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130703 (n + 1)) (A201163 n)

end

end A184218.P10479056098838673203

namespace A184218

/-- `lcm(A130703(n+1), A201163(n))` -/
def P10479056098838673203.Spec : Prop :=
  ∀ n, (P10479056098838673203.a n : ℤ) = A184218 (n + 1)

end A184218

/-! ## A184218.P16970089119114583239

`A130703(n+1)*A184219(n+1)`
-/

namespace A184218.P16970089119114583239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130703 (n + 1) * A184219 (n + 1)

end

end A184218.P16970089119114583239

namespace A184218

/-- `A130703(n+1)*A184219(n+1)` -/
def P16970089119114583239.Spec : Prop :=
  ∀ n, P16970089119114583239.a n = A184218 (n + 1)

end A184218

/-! ## A184218.P15620410551180248654

`A028253(A212342(n))`
-/

namespace A184218.P15620410551180248654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028253 (A212342 n).toNat

end

end A184218.P15620410551180248654

namespace A184218

/-- `A028253(A212342(n))` -/
def P15620410551180248654.Spec : Prop :=
  ∀ n, P15620410551180248654.a n = A184218 (n + 1)

end A184218

/-! ## A184218.P6101769762317680680

`(A000124(n)-2)*A185118(A000124(n))`
-/

namespace A184218.P6101769762317680680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000124 n - 2) * A185118 (A000124 n).toNat

end

end A184218.P6101769762317680680

namespace A184218

/-- `(A000124(n)-2)*A185118(A000124(n))` -/
def P6101769762317680680.Spec : Prop :=
  ∀ n, P6101769762317680680.a n = A184218 (n + 1)

end A184218

/-!
# A184219: a(n) = A184218(n)/A130703(n) unless A130703(n) = 0 in which case a(n) = 0.

The programs for A184219, there is no canonical definition to state claims against.
-/

/-! ## A184219.P4157279956809240008

`A184218(n+1)%(1-A130703(n+1))`
-/

namespace A184219.P4157279956809240008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184218 (n + 1)) (1 - A130703 (n + 1))

end

end A184219.P4157279956809240008

/-! ## A184219.P13456743640632868330

`A184218(n+1)/A028310(A130703(n+1))`
-/

namespace A184219.P13456743640632868330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184218 (n + 1) : ℚ) / (A028310 (A130703 (n + 1)).toNat : ℚ)

end

end A184219.P13456743640632868330

/-! ## A184219.P18277451891301611366

`(∑[n]-1)*A130543(n)/A028310(A130703(n+1))`
-/

namespace A184219.P18277451891301611366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A130543 n : ℚ) / (A028310 (A130703 (n + 1)).toNat : ℚ)

end

end A184219.P18277451891301611366

/-!
# A184220: a(n) = largest k such that A000290(n+1) = A000290(n) + (A000290(n) mod k), or 0 if no such k exists.

The programs for A184220, the canonical program `A184220.P8376748042134141039` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184220 has offset 1).

The definition of A184220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184220.P8376748042134141039

`(1-and(1, C(3, n)))*(n²-2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A184220

/-- `(1-and(1, C(3, n)))*(n²-2)` -/
def P8376748042134141039.Spec : Prop :=
  ∀ n, P8376748042134141039.a n = A184220 (n + 1)

theorem P8376748042134141039.correct : P8376748042134141039.Spec := by
  intro n
  simp only [A184220, Nat.add_sub_cancel]

end A184220

/-! ## A184220.P13279849181888503361

`(n²-2)%(n^(4%(n+1)))`
-/

namespace A184220.P13279849181888503361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - 2) (n ^ (4 % (n + 1)) : ℤ)

end

end A184220.P13279849181888503361

namespace A184220

/-- `(n²-2)%(n^(4%(n+1)))` -/
def P13279849181888503361.Spec : Prop :=
  ∀ n, P13279849181888503361.a n = A184220 (n + 1)

end A184220

/-! ## A184220.P268737371918613615

`(n²-2)*A130543(n)`
-/

namespace A184220.P268737371918613615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - 2) * A130543 n

end

end A184220.P268737371918613615

namespace A184220

/-- `(n²-2)*A130543(n)` -/
def P268737371918613615.Spec : Prop :=
  ∀ n, P268737371918613615.a n = A184220 (n + 1)

end A184220

/-! ## A184220.P6977474346205693291

`lcm(2-n², A133150(n+1))`
-/

namespace A184220.P6977474346205693291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - (n ^ 2 : ℤ)) (A133150 (n + 1))

end

end A184220.P6977474346205693291

namespace A184220

/-- `lcm(2-n², A133150(n+1))` -/
def P6977474346205693291.Spec : Prop :=
  ∀ n, (P6977474346205693291.a n : ℤ) = A184220 (n + 1)

end A184220

/-! ## A184220.P917561785451993

`A133150(n+1)*A184221(n+1)`
-/

namespace A184220.P917561785451993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133150 (n + 1) * A184221 (n + 1)

end

end A184220.P917561785451993

namespace A184220

/-- `A133150(n+1)*A184221(n+1)` -/
def P917561785451993.Spec : Prop :=
  ∀ n, P917561785451993.a n = A184220 (n + 1)

end A184220

/-! ## A184220.P11808270270993695727

`abs(2-n²)*A057427(A002265(n))`
-/

namespace A184220.P11808270270993695727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (n ^ 2 : ℤ)| * A057427 (A002265 n).toNat

end

end A184220.P11808270270993695727

namespace A184220

/-- `abs(2-n²)*A057427(A002265(n))` -/
def P11808270270993695727.Spec : Prop :=
  ∀ n, P11808270270993695727.a n = A184220 (n + 1)

end A184220

/-! ## A184220.P15942148748722837257

`(n²-2)%(A000124(n)-A000330(n))`
-/

namespace A184220.P15942148748722837257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - 2) (A000124 n - A000330 n)

end

end A184220.P15942148748722837257

namespace A184220

/-- `(n²-2)%(A000124(n)-A000330(n))` -/
def P15942148748722837257.Spec : Prop :=
  ∀ n, P15942148748722837257.a n = A184220 (n + 1)

end A184220

/-! ## A184220.P17879004983291790780

`(n²-2)*A165471(A295643(n))`
-/

namespace A184220.P17879004983291790780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - 2) * A165471 (A295643 n).toNat

end

end A184220.P17879004983291790780

namespace A184220

/-- `(n²-2)*A165471(A295643(n))` -/
def P17879004983291790780.Spec : Prop :=
  ∀ n, P17879004983291790780.a n = A184220 (n + 1)

end A184220

/-! ## A184220.P5934305253284130031

`(n²-2)%A249725(A002061(n))`
-/

namespace A184220.P5934305253284130031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - 2) (A249725 (A002061 n).toNat)

end

end A184220.P5934305253284130031

namespace A184220

/-- `(n²-2)%A249725(A002061(n))` -/
def P5934305253284130031.Spec : Prop :=
  ∀ n, P5934305253284130031.a n = A184220 (n + 1)

end A184220

/-! ## A184220.P4450379084892812965

`A289207((n*A130543(n))²)`
-/

namespace A184220.P4450379084892812965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (((n : ℤ) * A130543 n) ^ 2).toNat

end

end A184220.P4450379084892812965

namespace A184220

/-- `A289207((n*A130543(n))²)` -/
def P4450379084892812965.Spec : Prop :=
  ∀ n, P4450379084892812965.a n = A184220 (n + 1)

end A184220

/-! ## A184220.P8181337456672079911

`A289207((n*A185114(n))²)`
-/

namespace A184220.P8181337456672079911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (((n : ℤ) * A185114 n) ^ 2).toNat

end

end A184220.P8181337456672079911

namespace A184220

/-- `A289207((n*A185114(n))²)` -/
def P8181337456672079911.Spec : Prop :=
  ∀ n, P8181337456672079911.a n = A184220 (n + 1)

end A184220

/-! ## A184220.P6912739828705110806

`A289207(n*n*A130543(n))`
-/

namespace A184220.P6912739828705110806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 ((n : ℤ) * ((n : ℤ) * A130543 n)).toNat

end

end A184220.P6912739828705110806

namespace A184220

/-- `A289207(n*n*A130543(n))` -/
def P6912739828705110806.Spec : Prop :=
  ∀ n, P6912739828705110806.a n = A184220 (n + 1)

end A184220

/-! ## A184220.P5297250325345121474

`A289207(n*n*A185114(n))`
-/

namespace A184220.P5297250325345121474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 ((n : ℤ) * ((n : ℤ) * A185114 n)).toNat

end

end A184220.P5297250325345121474

namespace A184220

/-- `A289207(n*n*A185114(n))` -/
def P5297250325345121474.Spec : Prop :=
  ∀ n, P5297250325345121474.a n = A184220 (n + 1)

end A184220

/-! ## A184220.P2708475142783575819

`A157928(A289207(n))*A289207(n²)`
-/

namespace A184220.P2708475142783575819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A289207 n).toNat * A289207 (n ^ 2)

end

end A184220.P2708475142783575819

namespace A184220

/-- `A157928(A289207(n))*A289207(n²)` -/
def P2708475142783575819.Spec : Prop :=
  ∀ n, P2708475142783575819.a n = A184220 (n + 1)

end A184220

/-!
# A184221: a(n) = A184220(n)/A133150(n) unless A133150(n) = 0 in which case a(n) = 0.

The programs for A184221, there is no canonical definition to state claims against.
-/

/-! ## A184221.P17778284748921383034

`A184220(n+1)%(1-A133150(n+1))`
-/

namespace A184221.P17778284748921383034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184220 (n + 1)) (1 - A133150 (n + 1))

end

end A184221.P17778284748921383034

/-! ## A184221.P16615012143507407643

`A184220(n+1)/A028310(A133150(n+1))`
-/

namespace A184221.P16615012143507407643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184220 (n + 1) : ℚ) / (A028310 (A133150 (n + 1)).toNat : ℚ)

end

end A184221.P16615012143507407643

/-! ## A184221.P8495847705820650838

`(n²-2)*A130543(n)/A028310(A133150(n+1))`
-/

namespace A184221.P8495847705820650838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n ^ 2 : ℤ) - 2) * A130543 n : ℚ) / (A028310 (A133150 (n + 1)).toNat : ℚ)

end

end A184221.P8495847705820650838

/-! ## A184221.P3530621701099636495

`(n²-2)*A165471(A295643(n))/A028310(A133150(n+1))`
-/

namespace A184221.P3530621701099636495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n ^ 2 : ℤ) - 2) * A165471 (A295643 n).toNat : ℚ) / (A028310 (A133150 (n + 1)).toNat : ℚ)

end

end A184221.P3530621701099636495

/-! ## A184221.P13496207953948313161

`(n²-2)%(A000124(n)-A000330(n))/A028310(A133150(n+1))`
-/

namespace A184221.P13496207953948313161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((n ^ 2 : ℤ) - 2) (A000124 n - A000330 n) : ℚ) / (A028310 (A133150 (n + 1)).toNat : ℚ)

end

end A184221.P13496207953948313161

/-! ## A184221.P9905064901621577788

`(n²-2)%A249725(A002061(n))/A028310(A133150(n+1))`
-/

namespace A184221.P9905064901621577788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((n ^ 2 : ℤ) - 2) (A249725 (A002061 n).toNat) : ℚ) / (A028310 (A133150 (n + 1)).toNat : ℚ)

end

end A184221.P9905064901621577788

/-! ## A184221.P17189688251111178961

`(n²-2)*A323022(A110622(n+1))/A028310(A133150(n+1))`
-/

namespace A184221.P17189688251111178961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n ^ 2 : ℤ) - 2) * A323022 (A110622 (n + 1)).toNat : ℚ) / (A028310 (A133150 (n + 1)).toNat : ℚ)

end

end A184221.P17189688251111178961

/-!
# A184222: Half the number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock diagonal sum differing from its antidiagonal sum by more than 3.

The programs for A184222, there is no canonical definition to state claims against.
-/

/-! ## A184222.P9992532488990663377

`A184231((n+1)²+n²)`
-/

namespace A184222.P9992532488990663377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 ((n + 1) ^ 2 + n ^ 2)

end

end A184222.P9992532488990663377

/-! ## A184222.P3522057967238887374

`lcm(A184231(A001844(n)), A260196(n))`
-/

namespace A184222.P3522057967238887374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A184231 (A001844 n).toNat) (A260196 n)

end

end A184222.P3522057967238887374

/-! ## A184222.P6364525304762546674

`A184231(A001844(n))+A034561(n+1)`
-/

namespace A184222.P6364525304762546674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (A001844 n).toNat + A034561 (n + 1)

end

end A184222.P6364525304762546674

/-! ## A184222.P2053224888174242699

`A334709(n+1)+A184231(A001844(n))`
-/

namespace A184222.P2053224888174242699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334709 (n + 1) + A184231 (A001844 n).toNat

end

end A184222.P2053224888174242699

/-! ## A184222.P6633429784097999063

`A184231(A001844(n))/A299321(n+1)`
-/

namespace A184222.P6633429784097999063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184231 (A001844 n).toNat : ℚ) / (A299321 (n + 1) : ℚ)

end

end A184222.P6633429784097999063

/-!
# A184223: Half the number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock diagonal sum differing from its antidiagonal sum by more than 3.

The programs for A184223, the canonical program `A184223.P12622722372742739083` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184223 has offset 1).

The definition of A184223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184223.P12622722372742739083

`3*a(n-1)+3*a(n-2)-6*a(n-3)` with `a(0)=15, a(1)=57, a(2)=180`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A184223

/-- `3*a(n-1)+3*a(n-2)-6*a(n-3)` -/
def P12622722372742739083.Spec : Prop :=
  ∀ n, P12622722372742739083.a n = A184223 (n + 1)

theorem P12622722372742739083.correct : P12622722372742739083.Spec := by
  intro n
  simp only [A184223, Nat.add_sub_cancel]

end A184223

/-! ## A184223.P7149063899101657267

`A184231(∑[n]+1)`
-/

namespace A184223.P7149063899101657267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184223.P7149063899101657267

namespace A184223

/-- `A184231(∑[n]+1)` -/
def P7149063899101657267.Spec : Prop :=
  ∀ n, P7149063899101657267.a n = A184223 (n + 1)

end A184223

/-! ## A184223.P10267765903438308851

`lcm(3, A184231(A000124(n)))`
-/

namespace A184223.P10267765903438308851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A184231 (A000124 n).toNat)

end

end A184223.P10267765903438308851

namespace A184223

/-- `lcm(3, A184231(A000124(n)))` -/
def P10267765903438308851.Spec : Prop :=
  ∀ n, (P10267765903438308851.a n : ℤ) = A184223 (n + 1)

end A184223

/-! ## A184223.P17616367565252388056

`record[A010054(n)*A184231(n+1)]`
-/

namespace A184223.P17616367565252388056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184223.P17616367565252388056

namespace A184223

/-- `record[A010054(n)*A184231(n+1)]` -/
def P17616367565252388056.Spec : Prop :=
  ∀ n, P17616367565252388056.a n = A184223 (n + 1)

end A184223

/-! ## A184223.P6282555016395214778

`record[root(A184231(n+1), A074909(n))]`
-/

namespace A184223.P6282555016395214778
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184231 (n + 1) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184223.P6282555016395214778

namespace A184223

/-- `record[root(A184231(n+1), A074909(n))]` -/
def P6282555016395214778.Spec : Prop :=
  ∀ n, P6282555016395214778.a n = (A184223 (n + 1) : ℝ)

end A184223

/-!
# A184224: Half the number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock diagonal sum differing from its antidiagonal sum by more than 3.

The programs for A184224, there is no canonical definition to state claims against.
-/

/-! ## A184224.P13782752469273180774

`A184231(∑[n+1]+2)`
-/

namespace A184224.P13782752469273180774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184224.P13782752469273180774

/-! ## A184224.P11664876022594382167

`record[A010054(n)*A184231(n+2)]`
-/

namespace A184224.P11664876022594382167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184231 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184224.P11664876022594382167

/-! ## A184224.P4799138401285317592

`record[root(A184231(n+2), A074909(n))]`
-/

namespace A184224.P4799138401285317592
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184231 (n + 2) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184224.P4799138401285317592

/-! ## A184224.P7762555249959557292

`record[gcd(A002262(n), A184231(n+2))]`
-/

namespace A184224.P7762555249959557292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A184231 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184224.P7762555249959557292

/-! ## A184224.P372900553335842110

`A184231(A000096(n)+3)+A178798(n)`
-/

namespace A184224.P372900553335842110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (A000096 n + 3).toNat + A178798 n

end

end A184224.P372900553335842110

/-!
# A184225: Half the number of (n+1)X4 0..3 arrays with every 2X2 subblock diagonal sum differing from its antidiagonal sum by more than 3.

The programs for A184225, there is no canonical definition to state claims against.
-/

/-! ## A184225.P18166400848078586493

`A184231(∑[n+2]+4)`
-/

namespace A184225.P18166400848078586493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184225.P18166400848078586493

/-! ## A184225.P12361556593695265852

`lcm(2, A184231(A167614(n+1)))`
-/

namespace A184225.P12361556593695265852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A184231 (A167614 (n + 1)).toNat)

end

end A184225.P12361556593695265852

/-! ## A184225.P12555436907127685139

`A264668(n)+A184231(A167614(n+1))`
-/

namespace A184225.P12555436907127685139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A184231 (A167614 (n + 1)).toNat

end

end A184225.P12555436907127685139

/-! ## A184225.P10480973692459725522

`A184231(A167614(n+1))*A304042(n)`
-/

namespace A184225.P10480973692459725522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (A167614 (n + 1)).toNat * A304042 n

end

end A184225.P10480973692459725522

/-! ## A184225.P5154075686284317358

`A184231(A167614(n+1))%A184226(n+1)`
-/

namespace A184225.P5154075686284317358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184231 (A167614 (n + 1)).toNat) (A184226 (n + 1))

end

end A184225.P5154075686284317358

/-!
# A184226: Half the number of (n+1)X5 0..3 arrays with every 2X2 subblock diagonal sum differing from its antidiagonal sum by more than 3.

The programs for A184226, there is no canonical definition to state claims against.
-/

/-! ## A184226.P11763257313574288249

`A184231(A374004(n+1))`
-/

namespace A184226.P11763257313574288249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (A374004 (n + 1)).toNat

end

end A184226.P11763257313574288249

/-! ## A184226.P1287684648419051387

`A184231(A141214(n)+7)`
-/

namespace A184226.P1287684648419051387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (A141214 n + 7).toNat

end

end A184226.P1287684648419051387

/-! ## A184226.P10936717551404324245

`A184231(A052905(n)+9)`
-/

namespace A184226.P10936717551404324245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (A052905 n + 9).toNat

end

end A184226.P10936717551404324245

/-! ## A184226.P3769661900719917405

`A184231(A055999(n)+10)`
-/

namespace A184226.P3769661900719917405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (A055999 n + 10).toNat

end

end A184226.P3769661900719917405

/-! ## A184226.P3737123037981879451

`A184231(A167614(n+2)+1)`
-/

namespace A184226.P3737123037981879451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (A167614 (n + 2) + 1).toNat

end

end A184226.P3737123037981879451

/-!
# A184227: Half the number of (n+1) X 6 0..3 arrays with every 2 X 2 subblock diagonal sum differing from its antidiagonal sum by more than 3.

The programs for A184227, there is no canonical definition to state claims against.
-/

/-! ## A184227.P7440701507912072951

`A184231(A374005(n+1))`
-/

namespace A184227.P7440701507912072951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (A374005 (n + 1)).toNat

end

end A184227.P7440701507912072951

/-! ## A184227.P7099962808156086451

`A184231(A155212(n)+13)`
-/

namespace A184227.P7099962808156086451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (A155212 n + 13).toNat

end

end A184227.P7099962808156086451

/-! ## A184227.P14731470274268642441

`A184231(A141214(n+1)+8)`
-/

namespace A184227.P14731470274268642441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (A141214 (n + 1) + 8).toNat

end

end A184227.P14731470274268642441

/-! ## A184227.P8890906042136168691

`A184231(eq[6, A131818(n+1)])`
-/

namespace A184227.P8890906042136168691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184227.P8890906042136168691

/-! ## A184227.P11333777321581428843

`A184231(∑[n+5]+6)`
-/

namespace A184227.P11333777321581428843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A184227.P11333777321581428843

/-!
# A184228: Half the number of (n+1)X7 0..3 arrays with every 2X2 subblock diagonal sum differing from its antidiagonal sum by more than 3.

The programs for A184228, there is no canonical definition to state claims against.
-/

/-! ## A184228.P3586138793679225772

`A184231(A374007(n+1))`
-/

namespace A184228.P3586138793679225772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (A374007 (n + 1)).toNat

end

end A184228.P3586138793679225772

/-! ## A184228.P11222087952882297265

`A184231(eq[7, A131818(n+1)])`
-/

namespace A184228.P11222087952882297265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184228.P11222087952882297265

/-! ## A184228.P3704577631881505763

`A184231(eq[3, A219347(n)])`
-/

namespace A184228.P3704577631881505763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184228.P3704577631881505763

/-! ## A184228.P4970323286254422570

`A184231(eq[5, A193592(n)])`
-/

namespace A184228.P4970323286254422570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184228.P4970323286254422570

/-! ## A184228.P10171713737612631757

`A184231(eq[8, A258709(n)])`
-/

namespace A184228.P10171713737612631757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184228.P10171713737612631757

/-!
# A184229: Half the number of (n+1)X8 0..3 arrays with every 2X2 subblock diagonal sum differing from its antidiagonal sum by more than 3.

The programs for A184229, there is no canonical definition to state claims against.
-/

/-! ## A184229.P10594725205724600754

`A184231(A374008(n+1))`
-/

namespace A184229.P10594725205724600754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (A374008 (n + 1)).toNat

end

end A184229.P10594725205724600754

/-! ## A184229.P16790264279039651379

`A184231(eq[8, A131818(n+1)])`
-/

namespace A184229.P16790264279039651379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184229.P16790264279039651379

/-! ## A184229.P15164328000377485749

`A184231(A055999(n+4))`
-/

namespace A184229.P15164328000377485749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (A055999 (n + 4)).toNat

end

end A184229.P15164328000377485749

/-! ## A184229.P6050861905880692008

`A184231(eq[4, A219347(n)])`
-/

namespace A184229.P6050861905880692008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184229.P6050861905880692008

/-!
# A184230: Half the number of (n+1)X9 0..3 arrays with every 2X2 subblock diagonal sum differing from its antidiagonal sum by more than 3.

The programs for A184230, there is no canonical definition to state claims against.
-/

/-! ## A184230.P17838756654832748357

`A184231(A374009(n+1))`
-/

namespace A184230.P17838756654832748357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (A374009 (n + 1)).toNat

end

end A184230.P17838756654832748357

/-! ## A184230.P16566858152438424404

`A184231(eq[9, A131818(n+1)])`
-/

namespace A184230.P16566858152438424404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184230.P16566858152438424404

/-! ## A184230.P9097552092161720482

`A184231(eq[5, A219347(n)])`
-/

namespace A184230.P9097552092161720482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184230.P9097552092161720482

/-! ## A184230.P8335616447479705346

`A184231(eq[7, A193592(n)])`
-/

namespace A184230.P8335616447479705346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184231 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184230.P8335616447479705346

/-!
# A184232: Number of strings of numbers x(i=1..n) in 0..n with sum i^2*x(i)^2 equal to n^4.

The programs for A184232, there is no canonical definition to state claims against.
-/

/-! ## A184232.P1507542557025077818

`A184240(∑[4*n]+1)`
-/

namespace A184232.P1507542557025077818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184232.P1507542557025077818

/-! ## A184232.P2351138468507012028

`A184240(A001844(n))^A178334(n)`
-/

namespace A184232.P2351138468507012028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184240 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A184232.P2351138468507012028

/-! ## A184232.P4900895949517686812

`A007318(∑[n])*A184240(A001844(n))`
-/

namespace A184232.P4900895949517686812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A184240 (A001844 n).toNat

end

end A184232.P4900895949517686812

/-! ## A184232.P9713063122688095791

`A184240(A001844(n))/A178334(n+1)`
-/

namespace A184232.P9713063122688095791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184240 (A001844 n).toNat : ℚ) / (A178334 (n + 1) : ℚ)

end

end A184232.P9713063122688095791

/-! ## A184232.P9669610684288315984

`A001222(A329309(n))*A184240(A001844(n))`
-/

namespace A184232.P9669610684288315984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A329309 n).toNat * A184240 (A001844 n).toNat

end

end A184232.P9669610684288315984

/-!
# A184233: Number of strings of numbers x(i=1..n) in 0..2 with sum i^2*x(i)^2 equal to n^2*4.

The programs for A184233, there is no canonical definition to state claims against.
-/

/-! ## A184233.P12406843421476867226

`A184240(∑[n+2])`
-/

namespace A184233.P12406843421476867226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184233.P12406843421476867226

/-! ## A184233.P1660063876898098931

`or(char[1], A184240(A000096(n+1)))`
-/

namespace A184233.P1660063876898098931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A184240 (A000096 (n + 1)).toNat)

end

end A184233.P1660063876898098931

/-! ## A184233.P9834790664779229611

`A184240(A000096(n+1))%A000108(n+2)`
-/

namespace A184233.P9834790664779229611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184240 (A000096 (n + 1)).toNat) (A000108 (n + 2))

end

end A184233.P9834790664779229611

/-! ## A184233.P10701285912245496156

`A184240(A000096(n+1))+char[A000045(n+9)]`
-/

namespace A184233.P10701285912245496156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 9)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A184233.P10701285912245496156

/-! ## A184233.P4846284307850593799

`A000108(C(n, 64)²)*A184240(A000096(n+1))`
-/

namespace A184233.P4846284307850593799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n 64 ^ 2) * A184240 (A000096 (n + 1)).toNat

end

end A184233.P4846284307850593799

/-!
# A184234: Number of strings of numbers x(i=1..n) in 0..3 with sum i^2*x(i)^2 equal to n^2*9.

The programs for A184234, there is no canonical definition to state claims against.
-/

/-! ## A184234.P8989273828690681823

`A184240(∑[n+3]+1)`
-/

namespace A184234.P8989273828690681823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184234.P8989273828690681823

/-! ## A184234.P15564855707554619872

`or(char[1], A184240(A034856(n+2)))`
-/

namespace A184234.P15564855707554619872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A184240 (A034856 (n + 2)).toNat)

end

end A184234.P15564855707554619872

/-! ## A184234.P18036251500039635622

`A184240(A034856(n+2))%A000108(n+2)`
-/

namespace A184234.P18036251500039635622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184240 (A034856 (n + 2)).toNat) (A000108 (n + 2))

end

end A184234.P18036251500039635622

/-! ## A184234.P12662302325967542240

`A007318(C(2, n))*A184240(A034856(n+2))`
-/

namespace A184234.P12662302325967542240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A184240 (A034856 (n + 2)).toNat

end

end A184234.P12662302325967542240

/-! ## A184234.P5455002596625616139

`A000108(C(2, n+2))*A184240(A034856(n+2))`
-/

namespace A184234.P5455002596625616139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A184240 (A034856 (n + 2)).toNat

end

end A184234.P5455002596625616139

/-!
# A184235: Number of strings of numbers x(i=1..n) in 0..4 with sum i^2*x(i)^2 equal to n^2*16.

The programs for A184235, there is no canonical definition to state claims against.
-/

/-! ## A184235.P16171778175432228264

`A184240(∑[n+4]+3)`
-/

namespace A184235.P16171778175432228264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A184235.P16171778175432228264

/-! ## A184235.P3190021057442791977

`or(char[2], A184240(A141214(n+1)))`
-/

namespace A184235.P3190021057442791977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A184240 (A141214 (n + 1)).toNat)

end

end A184235.P3190021057442791977

/-! ## A184235.P1531802877384672502

`A184240(A141214(n+1))^A178334(n)`
-/

namespace A184235.P1531802877384672502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184240 (A141214 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A184235.P1531802877384672502

/-! ## A184235.P12458498327225611186

`A184240(A141214(n+1))/A178334(n+1)`
-/

namespace A184235.P12458498327225611186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184240 (A141214 (n + 1)).toNat : ℚ) / (A178334 (n + 1) : ℚ)

end

end A184235.P12458498327225611186

/-! ## A184235.P6689867036672260224

`A184240(A141214(n+1))%A000108(n+2)`
-/

namespace A184235.P6689867036672260224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184240 (A141214 (n + 1)).toNat) (A000108 (n + 2))

end

end A184235.P6689867036672260224

/-!
# A184236: Number of strings of numbers x(i=1..n) in 0..5 with sum i^2*x(i)^2 equal to n^2*25.

The programs for A184236, there is no canonical definition to state claims against.
-/

/-! ## A184236.P3439755170195271312

`A184240(Δ[A264443(n)])`
-/

namespace A184236.P3439755170195271312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (f1 (n + 1) - f1 n).toNat

end

end A184236.P3439755170195271312

/-! ## A184236.P13099022112492442850

`A184240(A046691(n+3))`
-/

namespace A184236.P13099022112492442850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A046691 (n + 3)).toNat

end

end A184236.P13099022112492442850

/-! ## A184236.P12582605379862559267

`A184240(A056115(n)+11)`
-/

namespace A184236.P12582605379862559267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A056115 n + 11).toNat

end

end A184236.P12582605379862559267

/-! ## A184236.P14783800767532787986

`A184240(eq[3, A152157(n)])`
-/

namespace A184236.P14783800767532787986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184236.P14783800767532787986

/-! ## A184236.P13970851042275770432

`A184240(eq[4, A193592(n)])`
-/

namespace A184236.P13970851042275770432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184236.P13970851042275770432

/-!
# A184237: Number of strings of numbers x(i=1..n) in 0..6 with sum i^2*x(i)^2 equal to n^2*36.

The programs for A184237, there is no canonical definition to state claims against.
-/

/-! ## A184237.P7760686241229487559

`A184240(A052905(n+3))`
-/

namespace A184237.P7760686241229487559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A052905 (n + 3)).toNat

end

end A184237.P7760686241229487559

/-! ## A184237.P4938528856438328724

`A184240(A302537(n)+15)`
-/

namespace A184237.P4938528856438328724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A302537 n + 15).toNat

end

end A184237.P4938528856438328724

/-! ## A184237.P9187058255512387882

`A184240(A056119(n)+16)`
-/

namespace A184237.P9187058255512387882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A056119 n + 16).toNat

end

end A184237.P9187058255512387882

/-! ## A184237.P17688419511704154384

`A184240(eq[3, A219347(n)])`
-/

namespace A184237.P17688419511704154384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184237.P17688419511704154384

/-! ## A184237.P17599160079736810273

`A184240(eq[5, A193592(n)])`
-/

namespace A184237.P17599160079736810273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184237.P17599160079736810273

/-!
# A184238: Number of strings of numbers x(i=1..n) in 0..7 with sum i^2*x(i)^2 equal to n^2*49.

The programs for A184238, there is no canonical definition to state claims against.
-/

/-! ## A184238.P17317888210403755722

`A184240(eq[4, A219347(n)])`
-/

namespace A184238.P17317888210403755722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184238.P17317888210403755722

/-! ## A184238.P13177974197751383128

`A184240(eq[6, A193592(n)])`
-/

namespace A184238.P13177974197751383128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184238.P13177974197751383128

/-! ## A184238.P15763238394661449361

`A184240(eq[7, A152157(n)])`
-/

namespace A184238.P15763238394661449361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184238.P15763238394661449361

/-! ## A184238.P6017773183487461376

`A184240(A000096(n+6)-5)`
-/

namespace A184238.P6017773183487461376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A000096 (n + 6) - 5).toNat

end

end A184238.P6017773183487461376

/-! ## A184238.P726802429428003676

`A184240(A000124(n+7)-7)`
-/

namespace A184238.P726802429428003676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A000124 (n + 7) - 7).toNat

end

end A184238.P726802429428003676

/-!
# A184239: Number of strings of numbers x(i=1..n) in 0..8 with sum i^2*x(i)^2 equal to n^2*64.

The programs for A184239, there is no canonical definition to state claims against.
-/

/-! ## A184239.P1377752717505398898

`A184240(2*n+C(n+7, 2)+8)`
-/

namespace A184239.P1377752717505398898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (2 * n + (Nat.choose (n + 7) 2 + 8))

end

end A184239.P1377752717505398898

/-! ## A184239.P6235362231848514783

`A184240(eq[5, A219347(n)])`
-/

namespace A184239.P6235362231848514783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184239.P6235362231848514783

/-! ## A184239.P6141697824704843866

`A184240(eq[7, A193592(n)])`
-/

namespace A184239.P6141697824704843866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184239.P6141697824704843866

/-! ## A184239.P3102775441231339859

`A184240(A056115(n+3)+8)`
-/

namespace A184239.P3102775441231339859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A056115 (n + 3) + 8).toNat

end

end A184239.P3102775441231339859

/-! ## A184239.P3362445066298017958

`A184240(A034856(n+7)-5)`
-/

namespace A184239.P3362445066298017958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A034856 (n + 7) - 5).toNat

end

end A184239.P3362445066298017958

/-!
# A184241: Number of strings of numbers x(i=1..3) in 0..n with sum i^2*x(i)^2 equal to n^2*9.

The programs for A184241, there is no canonical definition to state claims against.
-/

/-! ## A184241.P7324020943654592492

`A184240(∑[n+2]+4)`
-/

namespace A184241.P7324020943654592492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184241.P7324020943654592492

/-! ## A184241.P12236114880202546498

`dr(A184240(A167614(n+1)))`
-/

namespace A184241.P12236114880202546498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A184240 (A167614 (n + 1)).toNat)

end

end A184241.P12236114880202546498

/-! ## A184241.P17645814619138855382

`A184240(A167614(n+1))^A178334(n)`
-/

namespace A184241.P17645814619138855382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184240 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A184241.P17645814619138855382

/-! ## A184241.P2857343332112358424

`A184240(A167614(n+1))%A000040(n+1)`
-/

namespace A184241.P2857343332112358424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184240 (A167614 (n + 1)).toNat) (A000040 (n + 1))

end

end A184241.P2857343332112358424

/-! ## A184241.P15157685614034741636

`A184240(A167614(n+1))*A184240(A184240(n+1))`
-/

namespace A184241.P15157685614034741636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A167614 (n + 1)).toNat * A184240 (A184240 (n + 1)).toNat

end

end A184241.P15157685614034741636

/-!
# A184242: Number of strings of numbers x(i=1..4) in 0..n with sum i^2*x(i)^2 equal to n^2*16.

The programs for A184242, there is no canonical definition to state claims against.
-/

/-! ## A184242.P16295101724319821634

`A184240(∑[n+3]+7)`
-/

namespace A184242.P16295101724319821634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A184242.P16295101724319821634

/-! ## A184242.P17762210496626872521

`A007318(C(2, n))*A184240(A141214(n)+7)`
-/

namespace A184242.P17762210496626872521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A184240 (A141214 n + 7).toNat

end

end A184242.P17762210496626872521

/-! ## A184242.P1903035220946735947

`A007318(C(2, n))*A184240(A052905(n)+9)`
-/

namespace A184242.P1903035220946735947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A184240 (A052905 n + 9).toNat

end

end A184242.P1903035220946735947

/-!
# A184243: Number of strings of numbers x(i=1..5) in 0..n with sum i^2*x(i)^2 equal to n^2*25.

The programs for A184243, there is no canonical definition to state claims against.
-/

/-! ## A184243.P2482663440153963987

`A184240(C(n+6, 2)-n)`
-/

namespace A184243.P2482663440153963987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (Nat.choose (n + 6) 2 - n)

end

end A184243.P2482663440153963987

/-! ## A184243.P9909275850930705350

`A184240(A167499(n+3))`
-/

namespace A184243.P9909275850930705350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A167499 (n + 3)).toNat

end

end A184243.P9909275850930705350

/-! ## A184243.P2244358475374155553

`A184240(A155212(n)+13)`
-/

namespace A184243.P2244358475374155553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A155212 n + 13).toNat

end

end A184243.P2244358475374155553

/-! ## A184243.P5349538688386539929

`A184240(A056000(n)+15)`
-/

namespace A184243.P5349538688386539929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A056000 n + 15).toNat

end

end A184243.P5349538688386539929

/-! ## A184243.P697431056622256799

`A184240(A167614(n+3)+2)`
-/

namespace A184243.P697431056622256799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A167614 (n + 3) + 2).toNat

end

end A184243.P697431056622256799

/-!
# A184244: Number of strings of numbers x(i=1..6) in 0..n with sum i^2*x(i)^2 equal to n^2*36.

The programs for A184244, there is no canonical definition to state claims against.
-/

/-! ## A184244.P15128156252451397918

`A184240(∑[n+5]+16)`
-/

namespace A184244.P15128156252451397918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A184244.P15128156252451397918

/-! ## A184244.P13409147187786150844

`A184240(A167499(n+4)+1)%A061323(n+1)`
-/

namespace A184244.P13409147187786150844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184240 (A167499 (n + 4) + 1).toNat) (A061323 (n + 1))

end

end A184244.P13409147187786150844

/-! ## A184244.P8903101779896030922

`A184240(A000217(n+5)+6)%A000032(n+3)`
-/

namespace A184244.P8903101779896030922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184240 (A000217 (n + 5) + 6).toNat) (A000032 (n + 3))

end

end A184244.P8903101779896030922

/-! ## A184244.P12377958667398475143

`A007318(C(2, n))*A184240(A000217(n+5)+6)`
-/

namespace A184244.P12377958667398475143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A184240 (A000217 (n + 5) + 6).toNat

end

end A184244.P12377958667398475143

/-! ## A184244.P14457971781973898215

`A184240(A000217(n+5)+6)/A007318(C(n, 2))`
-/

namespace A184244.P14457971781973898215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184240 (A000217 (n + 5) + 6).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A184244.P14457971781973898215

/-!
# A184245: Number of strings of numbers x(i=1..7) in 0..n with sum i^2*x(i)^2 equal to n^2*49.

The programs for A184245, there is no canonical definition to state claims against.
-/

/-! ## A184245.P12646232450107390936

`A184240(A302537(n)+27)`
-/

namespace A184245.P12646232450107390936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A302537 n + 27).toNat

end

end A184245.P12646232450107390936

/-! ## A184245.P16629305115624519414

`A184240(A056119(n)+28)`
-/

namespace A184245.P16629305115624519414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A056119 n + 28).toNat

end

end A184245.P16629305115624519414

/-! ## A184245.P7065268958489154370

`A184240(A000124(n+6)+6)`
-/

namespace A184245.P7065268958489154370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A000124 (n + 6) + 6).toNat

end

end A184245.P7065268958489154370

/-! ## A184245.P10649637804299224284

`A184240(A000096(n+5)+8)`
-/

namespace A184245.P10649637804299224284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A000096 (n + 5) + 8).toNat

end

end A184245.P10649637804299224284

/-! ## A184245.P1762802456134923359

`A184240(A000217(n+6)+7)`
-/

namespace A184245.P1762802456134923359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A000217 (n + 6) + 7).toNat

end

end A184245.P1762802456134923359

/-!
# A184246: Number of strings of numbers x(i=1..8) in 0..n with sum i^2*x(i)^2 equal to n^2*64.

The programs for A184246, there is no canonical definition to state claims against.
-/

/-! ## A184246.P11096210080810125116

`record[A184240(A008795(n)+8)]`
-/

namespace A184246.P11096210080810125116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A008795 n + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184246.P11096210080810125116

/-! ## A184246.P14012087065441432787

`A184240(A167614(n+6)+5)`
-/

namespace A184246.P14012087065441432787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A167614 (n + 6) + 5).toNat

end

end A184246.P14012087065441432787

/-! ## A184246.P2525106743680235603

`A184240(A000124(n+7)+7)`
-/

namespace A184246.P2525106743680235603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A000124 (n + 7) + 7).toNat

end

end A184246.P2525106743680235603

/-! ## A184246.P5841261187862841825

`A184240(A000096(n+6)+9)`
-/

namespace A184246.P5841261187862841825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A000096 (n + 6) + 9).toNat

end

end A184246.P5841261187862841825

/-! ## A184246.P11983829509426339249

`A184240(A000217(n+7)+8)`
-/

namespace A184246.P11983829509426339249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (A000217 (n + 7) + 8).toNat

end

end A184246.P11983829509426339249

/-!
# A184247: Primes, q, such that for three consecutive primes, p, q & r, with p

The programs for A184247, the canonical program `A184247.P435976798172402380` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184247 has offset 1).

The definition of A184247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184247.P4986820661384171567

`∩[A046869(n+1), A239879(n+1)]`
-/

namespace A184247.P4986820661384171567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184247.P4986820661384171567

namespace A184247

/-- `∩[A046869(n+1), A239879(n+1)]` -/
def P4986820661384171567.Spec : Prop :=
  ∀ n, (P4986820661384171567.a n : ℤ) = A184247 (n + 1)

end A184247

/-! ## A184247.P435976798172402380

`A000040(eq[1, A272863(n+1)]+2)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A184247

/-- `A000040(eq[1, A272863(n+1)]+2)` -/
def P435976798172402380.Spec : Prop :=
  ∀ n, P435976798172402380.a n = A184247 (n + 1)

theorem P435976798172402380.correct : P435976798172402380.Spec := by
  intro n
  simp only [A184247, Nat.add_sub_cancel]

end A184247

/-! ## A184247.P12462300621693898860

`p?[A272863(n+1)+A006093(n+2)]`
-/

namespace A184247.P12462300621693898860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272863 (n + 1) + A006093 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A184247.P12462300621693898860

namespace A184247

/-- `p?[A272863(n+1)+A006093(n+2)]` -/
def P12462300621693898860.Spec : Prop :=
  ∀ n, P12462300621693898860.a n = A184247 (n + 1)

end A184247

/-! ## A184247.P2134022973407949724

`p?[A045344(n+1)*A272863(n+1)]`
-/

namespace A184247.P2134022973407949724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1) * A272863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A184247.P2134022973407949724

namespace A184247

/-- `p?[A045344(n+1)*A272863(n+1)]` -/
def P2134022973407949724.Spec : Prop :=
  ∀ n, P2134022973407949724.a n = A184247 (n + 1)

end A184247

/-! ## A184247.P4918078981453581586

`p?[A065091(n+1)*A272863(n+1)]`
-/

namespace A184247.P4918078981453581586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A272863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A184247.P4918078981453581586

namespace A184247

/-- `p?[A065091(n+1)*A272863(n+1)]` -/
def P4918078981453581586.Spec : Prop :=
  ∀ n, P4918078981453581586.a n = A184247 (n + 1)

end A184247

/-! ## A184247.P90638041153021981

`p?[A000040(n+2)*A272863(n+1)]`
-/

namespace A184247.P90638041153021981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A272863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A184247.P90638041153021981

namespace A184247

/-- `p?[A000040(n+2)*A272863(n+1)]` -/
def P90638041153021981.Spec : Prop :=
  ∀ n, P90638041153021981.a n = A184247 (n + 1)

end A184247

/-!
# A184248: Primes, q, such that for three consecutive primes, p, q & r, with p

The programs for A184248, the canonical program `A184248.P3384310769192450285` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184248 has offset 1).

The definition of A184248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184248.P3384310769192450285

`p?[n+1-A166597(n+1)%A166597(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A184248

/-- `p?[n+1-A166597(n+1)%A166597(n)]` -/
def P3384310769192450285.Spec : Prop :=
  ∀ n, P3384310769192450285.a n = A184248 (n + 1)

theorem P3384310769192450285.correct : P3384310769192450285.Spec := by
  intro n
  simp only [A184248, Nat.add_sub_cancel]

end A184248

/-! ## A184248.P4917174221449288758

`A000040(eq[1, A274225(n+1)]+2)`
-/

namespace A184248.P4917174221449288758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A184248.P4917174221449288758

namespace A184248

/-- `A000040(eq[1, A274225(n+1)]+2)` -/
def P4917174221449288758.Spec : Prop :=
  ∀ n, P4917174221449288758.a n = A184248 (n + 1)

end A184248

/-! ## A184248.P5181435675253733759

`p?[A065091(n+1)*A274225(n+1)]`
-/

namespace A184248.P5181435675253733759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A274225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A184248.P5181435675253733759

namespace A184248

/-- `p?[A065091(n+1)*A274225(n+1)]` -/
def P5181435675253733759.Spec : Prop :=
  ∀ n, P5181435675253733759.a n = A184248 (n + 1)

end A184248

/-! ## A184248.P6980395959932549041

`p?[A000040(n+2)*A274225(n+1)]`
-/

namespace A184248.P6980395959932549041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A274225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A184248.P6980395959932549041

namespace A184248

/-- `p?[A000040(n+2)*A274225(n+1)]` -/
def P6980395959932549041.Spec : Prop :=
  ∀ n, P6980395959932549041.a n = A184248 (n + 1)

end A184248

/-! ## A184248.P2412470482938780891

`A000040(record[xor(n+1, 1-A274225(n+1))]+1)`
-/

namespace A184248.P2412470482938780891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (1 - A274225 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A184248.P2412470482938780891

namespace A184248

/-- `A000040(record[xor(n+1, 1-A274225(n+1))]+1)` -/
def P2412470482938780891.Spec : Prop :=
  ∀ n, P2412470482938780891.a n = A184248 (n + 1)

end A184248

/-!
# A184249: Number of strings of numbers x(i=1..n) in 0..n with sum i^3*x(i) equal to n^4.

The programs for A184249, there is no canonical definition to state claims against.
-/

/-! ## A184249.P9612795689856060350

`A184257(∑[4*n]+1)`
-/

namespace A184249.P9612795689856060350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184249.P9612795689856060350

/-! ## A184249.P1514756733053510749

`A326679(n)+A184257(A001844(n))`
-/

namespace A184249.P1514756733053510749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326679 n + A184257 (A001844 n).toNat

end

end A184249.P1514756733053510749

/-! ## A184249.P1782560542644490898

`gcd(A000038(n), A184257(A001844(n)))`
-/

namespace A184249.P1782560542644490898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A184257 (A001844 n).toNat)

end

end A184249.P1782560542644490898

/-! ## A184249.P1690588929207789918

`lcm(A033999(n), A184257(A001844(n)))`
-/

namespace A184249.P1690588929207789918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A184257 (A001844 n).toNat)

end

end A184249.P1690588929207789918

/-! ## A184249.P8366130959486630515

`A059196(n+1)*A184257(A001844(n))`
-/

namespace A184249.P8366130959486630515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059196 (n + 1) * A184257 (A001844 n).toNat

end

end A184249.P8366130959486630515

/-!
# A184250: Number of strings of numbers x(i=1..n) in 0..2 with sum i^3*x(i) equal to n^3*2.

The programs for A184250, there is no canonical definition to state claims against.
-/

/-! ## A184250.P18108695841800332460

`A184257(∑[n+2])`
-/

namespace A184250.P18108695841800332460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184250.P18108695841800332460

/-! ## A184250.P17702596717620355011

`or(char[1], A184257(A000096(n+1)))`
-/

namespace A184250.P17702596717620355011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A184257 (A000096 (n + 1)).toNat)

end

end A184250.P17702596717620355011

/-! ## A184250.P15269730950501072951

`or(char[1], A184257(A055998(n)+2))`
-/

namespace A184250.P15269730950501072951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A184257 (A055998 n + 2).toNat)

end

end A184250.P15269730950501072951

/-! ## A184250.P18389910519052259903

`A007318(C(2, n))*A184257(A000096(n+1))`
-/

namespace A184250.P18389910519052259903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A184257 (A000096 (n + 1)).toNat

end

end A184250.P18389910519052259903

/-! ## A184250.P242864510883217677

`A007318(C(2, n))*A184257(A055998(n)+2)`
-/

namespace A184250.P242864510883217677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A184257 (A055998 n + 2).toNat

end

end A184250.P242864510883217677

/-!
# A184251: Number of strings of numbers x(i=1..n) in 0..3 with sum i^3*x(i) equal to n^3*3.

The programs for A184251, there is no canonical definition to state claims against.
-/

/-! ## A184251.P10580705689702231478

`A184257(∑[n+3]+1)`
-/

namespace A184251.P10580705689702231478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184251.P10580705689702231478

/-! ## A184251.P2889807350092783477

`A184257(A034856(n+2))%A000108(n+2)`
-/

namespace A184251.P2889807350092783477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184257 (A034856 (n + 2)).toNat) (A000108 (n + 2))

end

end A184251.P2889807350092783477

/-! ## A184251.P7394362163174451224

`A007318(C(n, 2))*A184257(A034856(n+2))`
-/

namespace A184251.P7394362163174451224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A184257 (A034856 (n + 2)).toNat

end

end A184251.P7394362163174451224

/-! ## A184251.P10621614984146060977

`A000041(C(2, n+2))*A184257(A034856(n+2))`
-/

namespace A184251.P10621614984146060977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A184257 (A034856 (n + 2)).toNat

end

end A184251.P10621614984146060977

/-! ## A184251.P4070114819993733903

`A184257(A034856(n+2))*A184257(A184257(n+2))`
-/

namespace A184251.P4070114819993733903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A034856 (n + 2)).toNat * A184257 (A184257 (n + 2)).toNat

end

end A184251.P4070114819993733903

/-!
# A184252: Number of strings of numbers x(i=1..n) in 0..4 with sum i^3*x(i) equal to n^3*4.

The programs for A184252, there is no canonical definition to state claims against.
-/

/-! ## A184252.P1054737408566680161

`A184257(∑[n+4]+3)`
-/

namespace A184252.P1054737408566680161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A184252.P1054737408566680161

/-! ## A184252.P8111808606464915607

`or(char[1], A184257(A055998(n+2)))`
-/

namespace A184252.P8111808606464915607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A184257 (A055998 (n + 2)).toNat)

end

end A184252.P8111808606464915607

/-! ## A184252.P11505460410464557026

`A007318(C(2, n))*A184257(A055998(n+2))`
-/

namespace A184252.P11505460410464557026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A184257 (A055998 (n + 2)).toNat

end

end A184252.P11505460410464557026

/-! ## A184252.P11294950169462793092

`A000041(C(2, n+2))*A184257(A055998(n+2))`
-/

namespace A184252.P11294950169462793092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A184257 (A055998 (n + 2)).toNat

end

end A184252.P11294950169462793092

/-! ## A184252.P9030072171648624523

`A000108(C(2, n+2))*A184257(A055998(n+2))`
-/

namespace A184252.P9030072171648624523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A184257 (A055998 (n + 2)).toNat

end

end A184252.P9030072171648624523

/-!
# A184253: Number of strings of numbers x(i=1..n) in 0..5 with sum i^3*x(i) equal to n^3*5.

The programs for A184253, there is no canonical definition to state claims against.
-/

/-! ## A184253.P17577593076230290477

`A184257(A046691(n+3))`
-/

namespace A184253.P17577593076230290477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A046691 (n + 3)).toNat

end

end A184253.P17577593076230290477

/-! ## A184253.P5606096717529565379

`A184257(eq[4, A193592(n)])`
-/

namespace A184253.P5606096717529565379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184253.P5606096717529565379

/-! ## A184253.P3059216268512084141

`A184257(A052905(n+2)+1)`
-/

namespace A184253.P3059216268512084141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A052905 (n + 2) + 1).toNat

end

end A184253.P3059216268512084141

/-! ## A184253.P11178902628966048483

`A184257(A000124(n+4)+n)`
-/

namespace A184253.P11178902628966048483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A000124 (n + 4) + (n : ℤ)).toNat

end

end A184253.P11178902628966048483

/-! ## A184253.P7374267760784994790

`A184257(A055999(n+1)+n+7)`
-/

namespace A184253.P7374267760784994790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A055999 (n + 1) + (n + 7 : ℤ)).toNat

end

end A184253.P7374267760784994790

/-!
# A184254: Number of strings of numbers x(i=1..n) in 0..6 with sum i^3*x(i) equal to n^3*6.

The programs for A184254, there is no canonical definition to state claims against.
-/

/-! ## A184254.P16530094522984091685

`A184257(A052905(n+3))`
-/

namespace A184254.P16530094522984091685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A052905 (n + 3)).toNat

end

end A184254.P16530094522984091685

/-! ## A184254.P15669453364884950652

`A184257(A056119(n)+16)`
-/

namespace A184254.P15669453364884950652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A056119 n + 16).toNat

end

end A184254.P15669453364884950652

/-! ## A184254.P4765388490299696850

`A184257(eq[3, A219347(n)])`
-/

namespace A184254.P4765388490299696850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184254.P4765388490299696850

/-! ## A184254.P9937449963383916353

`A184257(eq[5, A152157(n)])`
-/

namespace A184254.P9937449963383916353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184254.P9937449963383916353

/-! ## A184254.P7844196978271783820

`A184257(eq[5, A193592(n)])`
-/

namespace A184254.P7844196978271783820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184254.P7844196978271783820

/-!
# A184255: Number of strings of numbers x(i=1..n) in 0..7 with sum i^3*x(i) equal to n^3*7.

The programs for A184255, there is no canonical definition to state claims against.
-/

/-! ## A184255.P12414475585132235659

`A184257(Δ[(n+8)²]+∑[n+5])`
-/

namespace A184255.P12414475585132235659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 8) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

end

end A184255.P12414475585132235659

/-! ## A184255.P12203739458833085978

`A184257(A000096(n+6)-5)%A293144(n)`
-/

namespace A184255.P12203739458833085978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184257 (A000096 (n + 6) - 5).toNat) (A293144 n)

end

end A184255.P12203739458833085978

/-! ## A184255.P11288682199140164801

`A276797(A063520(n+1)+A008485(n))`
-/

namespace A184255.P11288682199140164801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (A063520 (n + 1) + A008485 n).toNat

end

end A184255.P11288682199140164801

/-!
# A184256: Number of strings of numbers x(i=1..n) in 0..8 with sum i^3*x(i) equal to n^3*8.

The programs for A184256, there is no canonical definition to state claims against.
-/

/-! ## A184256.P495125583805344444

`A184257(eq[5, A219347(n)])`
-/

namespace A184256.P495125583805344444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184256.P495125583805344444

/-! ## A184256.P3296700905455766092

`A184257(eq[7, A193592(n)])`
-/

namespace A184256.P3296700905455766092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184256.P3296700905455766092

/-! ## A184256.P16206228146278228804

`record[A184257(A056000(n)+3)]`
-/

namespace A184256.P16206228146278228804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A056000 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184256.P16206228146278228804

/-! ## A184256.P5623870241284418120

`record[A184257(A141214(n)+n)]`
-/

namespace A184256.P5623870241284418120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A141214 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184256.P5623870241284418120

/-! ## A184256.P12951266557853536112

`A184257(A000217(n+8)-7)`
-/

namespace A184256.P12951266557853536112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A000217 (n + 8) - 7).toNat

end

end A184256.P12951266557853536112

/-!
# A184257: T(n,k)=Number of strings of numbers x(i=1..n) in 0..k with sum i^3*x(i) equal to n^3*k.

The programs for A184257, there is no canonical definition to state claims against.
-/

/-! ## A184257.P5997358206923430201

`A167965(A020935(n+2))`
-/

namespace A184257.P5997358206923430201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167965 (A020935 (n + 2)).toNat

end

end A184257.P5997358206923430201

/-! ## A184257.P12168492470067935308

`A296133(A210561(n+1)+1)`
-/

namespace A184257.P12168492470067935308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296133 (A210561 (n + 1) + 1).toNat

end

end A184257.P12168492470067935308

/-! ## A184257.P6429361211997194069

`gcd(A117546(A333824(n+1)), A340858(n+5))`
-/

namespace A184257.P6429361211997194069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117546 (A333824 (n + 1)).toNat) (A340858 (n + 5))

end

end A184257.P6429361211997194069

/-!
# A184258: Number of strings of numbers x(i=1..3) in 0..n with sum i^3*x(i) equal to 27*n.

The programs for A184258, there is no canonical definition to state claims against.
-/

/-! ## A184258.P13354278607087240473

`A184257(∑[n+2]+4)`
-/

namespace A184258.P13354278607087240473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184258.P13354278607087240473

/-! ## A184258.P5181924420766279731

`∑{d}[A184257(A046691(n)+7), A000010(#)]`
-/

namespace A184258.P5181924420766279731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A046691 n + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A184258.P5181924420766279731

/-! ## A184258.P15268246199982930911

`A033999(n)²*A184257(A167614(n+1))`
-/

namespace A184258.P15268246199982930911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A184257 (A167614 (n + 1)).toNat

end

end A184258.P15268246199982930911

/-! ## A184258.P3579892367670580992

`A184257(A167614(n+1))*A184257(A184257(n+1))`
-/

namespace A184258.P3579892367670580992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A167614 (n + 1)).toNat * A184257 (A184257 (n + 1)).toNat

end

end A184258.P3579892367670580992

/-! ## A184258.P17017721932466636109

`A184257(A167614(n+1))/A184257(A184257(n+1)²)`
-/

namespace A184258.P17017721932466636109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184257 (A167614 (n + 1)).toNat : ℚ) / (A184257 (A184257 (n + 1) ^ 2).toNat : ℚ)

end

end A184258.P17017721932466636109

/-!
# A184259: Number of strings of numbers x(i=1..4) in 0..n with sum i^3*x(i) equal to 64*n.

The programs for A184259, there is no canonical definition to state claims against.
-/

/-! ## A184259.P18422261282342628884

`A184257(∑[n+3]+7)`
-/

namespace A184259.P18422261282342628884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A184259.P18422261282342628884

/-! ## A184259.P6371611765789637722

`or(char[3], A184257(A052905(n)+9))`
-/

namespace A184259.P6371611765789637722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A184257 (A052905 n + 9).toNat)

end

end A184259.P6371611765789637722

/-! ## A184259.P1554801932126653752

`∑{d}[A184257(A052905(n)+9), A000010(#)]`
-/

namespace A184259.P1554801932126653752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A052905 n + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A184259.P1554801932126653752

/-! ## A184259.P1321837439708658977

`∏{d}[A184257(A052905(n)+9), A014963(#)]`
-/

namespace A184259.P1321837439708658977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A052905 n + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A184259.P1321837439708658977

/-!
# A184260: Number of strings of numbers x(i=1..5) in 0..n with sum i^3*x(i) equal to 125*n.

The programs for A184260, there is no canonical definition to state claims against.
-/

/-! ## A184260.P12793215131544427323

`A184257(A155212(n)+13)`
-/

namespace A184260.P12793215131544427323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A155212 n + 13).toNat

end

end A184260.P12793215131544427323

/-! ## A184260.P9823301654501270026

`A184257(A056000(n)+15)`
-/

namespace A184260.P9823301654501270026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A056000 n + 15).toNat

end

end A184260.P9823301654501270026

/-! ## A184260.P3064172536603915293

`A184257(∑[A020705(n)]+11)`
-/

namespace A184260.P3064172536603915293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A184260.P3064172536603915293

/-! ## A184260.P3765878510647767194

`A184257(A000124(n+4)+4)`
-/

namespace A184260.P3765878510647767194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A000124 (n + 4) + 4).toNat

end

end A184260.P3765878510647767194

/-! ## A184260.P916636458243336190

`A184257(A134869(n+4)+4)`
-/

namespace A184260.P916636458243336190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A134869 (n + 4) + 4).toNat

end

end A184260.P916636458243336190

/-!
# A184261: Number of strings of numbers x(i=1..6) in 0..n with sum i^3*x(i) equal to 216*n.

The programs for A184261, there is no canonical definition to state claims against.
-/

/-! ## A184261.P15937292703507769740

`A184257(∑[n+5]+16)`
-/

namespace A184261.P15937292703507769740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A184261.P15937292703507769740

/-! ## A184261.P3535952988688498475

`or(char[1], A184257(A000217(n+5)+6))`
-/

namespace A184261.P3535952988688498475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A184257 (A000217 (n + 5) + 6).toNat)

end

end A184261.P3535952988688498475

/-! ## A184261.P15985494096843461061

`xor(1, xor(1, A184257(A000096(n+4)+7)))`
-/

namespace A184261.P15985494096843461061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A184257 (A000096 (n + 4) + 7).toNat))

end

end A184261.P15985494096843461061

/-! ## A184261.P10407423500731155760

`∑{d}[A184257(A000124(n+5)+5), A000010(#)]`
-/

namespace A184261.P10407423500731155760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A000124 (n + 5) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A184261.P10407423500731155760

/-!
# A184262: Number of strings of numbers x(i=1..7) in 0..n with sum i^3*x(i) equal to 343*n.

The programs for A184262, there is no canonical definition to state claims against.
-/

/-! ## A184262.P9431307499576410808

`A184257(A056119(n)+28)`
-/

namespace A184262.P9431307499576410808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A056119 n + 28).toNat

end

end A184262.P9431307499576410808

/-! ## A184262.P1355859280211768251

`A184257(A167614(n+5)+4)`
-/

namespace A184262.P1355859280211768251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A167614 (n + 5) + 4).toNat

end

end A184262.P1355859280211768251

/-! ## A184262.P16672294286315218861

`A184257(A000124(n+6)+6)`
-/

namespace A184262.P16672294286315218861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A000124 (n + 6) + 6).toNat

end

end A184262.P16672294286315218861

/-! ## A184262.P14921863635300678485

`A184257(A000217(n+6)+7)`
-/

namespace A184262.P14921863635300678485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A000217 (n + 6) + 7).toNat

end

end A184262.P14921863635300678485

/-! ## A184262.P13437447077212997064

`A184257(A027379(n+4)+10)`
-/

namespace A184262.P13437447077212997064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A027379 (n + 4) + 10).toNat

end

end A184262.P13437447077212997064

/-!
# A184263: Number of strings of numbers x(i=1..8) in 0..n with sum i^3*x(i) equal to 512*n.

The programs for A184263, there is no canonical definition to state claims against.
-/

/-! ## A184263.P5586455630237711429

`A184257(A167614(n+6)+5)`
-/

namespace A184263.P5586455630237711429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A167614 (n + 6) + 5).toNat

end

end A184263.P5586455630237711429

/-! ## A184263.P1773704379280206298

`A184257(A000124(n+7)+7)`
-/

namespace A184263.P1773704379280206298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A000124 (n + 7) + 7).toNat

end

end A184263.P1773704379280206298

/-! ## A184263.P9036026533591902668

`A184257(A000096(n+6)+9)`
-/

namespace A184263.P9036026533591902668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A000096 (n + 6) + 9).toNat

end

end A184263.P9036026533591902668

/-! ## A184263.P1338556547821850680

`A184257(A000217(n+7)+8)`
-/

namespace A184263.P1338556547821850680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A000217 (n + 7) + 8).toNat

end

end A184263.P1338556547821850680

/-! ## A184263.P10653988360697700201

`A184257(A027379(n+5)+11)`
-/

namespace A184263.P10653988360697700201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A027379 (n + 5) + 11).toNat

end

end A184263.P10653988360697700201

/-!
# A184264: Number of distinct n X 2 toroidal binary arrays.

The programs for A184264, there is no canonical definition to state claims against.
-/

/-! ## A184264.P7463427908865605218

`A074763(2*(n+1))+A000031(n+1)`
-/

namespace A184264.P7463427908865605218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074763 (2 * (n + 1)) + A000031 (n + 1)

end

end A184264.P7463427908865605218

/-! ## A184264.P12240625346319925460

`A000031(n+1)+A001868(n+1)-A000031(2*(n+1))`
-/

namespace A184264.P12240625346319925460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 1) + (A001868 (n + 1) - A000031 (2 * (n + 1)))

end

end A184264.P12240625346319925460

/-! ## A184264.P9681340710770138104

`A184271(∑[n+1]+2)`
-/

namespace A184264.P9681340710770138104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184264.P9681340710770138104

/-! ## A184264.P1770789807139574019

`record[A010054(n)*A184271(n+2)]`
-/

namespace A184264.P1770789807139574019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184271 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184264.P1770789807139574019

/-! ## A184264.P18074106458625282611

`record[root(A184271(n+2), A059268(n))]`
-/

namespace A184264.P18074106458625282611
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184271 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184264.P18074106458625282611

/-!
# A184265: Number of distinct n X 3 toroidal binary arrays.

The programs for A184265, there is no canonical definition to state claims against.
-/

/-! ## A184265.P14598777414487303909

`A184271(∑[n+2]+4)`
-/

namespace A184265.P14598777414487303909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184265.P14598777414487303909

/-! ## A184265.P9944615255712518

`lcm(2, A184271(A167614(n+1)))`
-/

namespace A184265.P9944615255712518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A184271 (A167614 (n + 1)).toNat)

end

end A184265.P9944615255712518

/-! ## A184265.P13776678343986718604

`A184271(A167614(n+1))%A013825(n)`
-/

namespace A184265.P13776678343986718604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184271 (A167614 (n + 1)).toNat) (A013825 n)

end

end A184265.P13776678343986718604

/-! ## A184265.P10220067677202090693

`and(A184271(A167614(n+1)), A260196(n+1))`
-/

namespace A184265.P10220067677202090693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A184271 (A167614 (n + 1)).toNat) (A260196 (n + 1))

end

end A184265.P10220067677202090693

/-! ## A184265.P9277249376797672073

`or(A000038(n+4), A184271(A167614(n+1)))`
-/

namespace A184265.P9277249376797672073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 (n + 4)) (A184271 (A167614 (n + 1)).toNat)

end

end A184265.P9277249376797672073

/-!
# A184266: Number of distinct n X 4 toroidal binary arrays.

The programs for A184266, there is no canonical definition to state claims against.
-/

/-! ## A184266.P3700908189616469858

`A184271(A052905(n)+9)`
-/

namespace A184266.P3700908189616469858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (A052905 n + 9).toNat

end

end A184266.P3700908189616469858

/-! ## A184266.P4322204319525412884

`A184271(A055999(n)+10)`
-/

namespace A184266.P4322204319525412884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (A055999 n + 10).toNat

end

end A184266.P4322204319525412884

/-! ## A184266.P1909959970578279872

`A184271(A167614(n+2)+1)`
-/

namespace A184266.P1909959970578279872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (A167614 (n + 2) + 1).toNat

end

end A184266.P1909959970578279872

/-! ## A184266.P6777154784645624906

`A184271(Δ[A264443(n)-n²])`
-/

namespace A184266.P6777154784645624906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (f1 (n + 1) - f1 n).toNat

end

end A184266.P6777154784645624906

/-! ## A184266.P16325737115790396893

`A184271(Δ[A023545(n+1)-n²])`
-/

namespace A184266.P16325737115790396893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (f1 (n + 1) - f1 n).toNat

end

end A184266.P16325737115790396893

/-!
# A184267: Number of distinct n X 5 toroidal binary arrays.

The programs for A184267, there is no canonical definition to state claims against.
-/

/-! ## A184267.P11999762502234082550

`A184271(A155212(n)+13)`
-/

namespace A184267.P11999762502234082550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (A155212 n + 13).toNat

end

end A184267.P11999762502234082550

/-! ## A184267.P17560033472940244089

`A184271(eq[6, A131818(n+1)])`
-/

namespace A184267.P17560033472940244089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184267.P17560033472940244089

/-! ## A184267.P18139891302112668388

`A184271(Δ[A264443(n)])`
-/

namespace A184267.P18139891302112668388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (f1 (n + 1) - f1 n).toNat

end

end A184267.P18139891302112668388

/-! ## A184267.P3115306353546849825

`A184271(A374005(n+1))`
-/

namespace A184267.P3115306353546849825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (A374005 (n + 1)).toNat

end

end A184267.P3115306353546849825

/-! ## A184267.P6511405050530472041

`A184271(A046691(n+3))`
-/

namespace A184267.P6511405050530472041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (A046691 (n + 3)).toNat

end

end A184267.P6511405050530472041

/-!
# A184268: Number of distinct n X 6 toroidal binary arrays.

The programs for A184268, there is no canonical definition to state claims against.
-/

/-! ## A184268.P13626856054356421287

`A184271(A167499(n+4)+1)`
-/

namespace A184268.P13626856054356421287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (A167499 (n + 4) + 1).toNat

end

end A184268.P13626856054356421287

/-! ## A184268.P8756177534199677496

`A184271(eq[7, A131818(n+1)])`
-/

namespace A184268.P8756177534199677496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184268.P8756177534199677496

/-! ## A184268.P2163268867999589415

`A184271(Δ[A023545(n+1)]+10)`
-/

namespace A184268.P2163268867999589415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (f1 (n + 1) - f1 n + 10).toNat

end

end A184268.P2163268867999589415

/-! ## A184268.P159359100420192555

`A184271(A374007(n+1))`
-/

namespace A184268.P159359100420192555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (A374007 (n + 1)).toNat

end

end A184268.P159359100420192555

/-! ## A184268.P11682194351060728291

`A184271(A052905(n+3))`
-/

namespace A184268.P11682194351060728291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (A052905 (n + 3)).toNat

end

end A184268.P11682194351060728291

/-!
# A184269: Number of distinct n X 7 toroidal binary arrays.

The programs for A184269, there is no canonical definition to state claims against.
-/

/-! ## A184269.P9956799517964357689

`A184271(eq[8, A131818(n+1)])`
-/

namespace A184269.P9956799517964357689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184269.P9956799517964357689

/-! ## A184269.P6042542509438160013

`A184271(A374008(n+1))`
-/

namespace A184269.P6042542509438160013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (A374008 (n + 1)).toNat

end

end A184269.P6042542509438160013

/-! ## A184269.P5326137899853138350

`A184271(A055999(n+4))`
-/

namespace A184269.P5326137899853138350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (A055999 (n + 4)).toNat

end

end A184269.P5326137899853138350

/-! ## A184269.P13237008031536396087

`A184271(eq[4, A219347(n)])`
-/

namespace A184269.P13237008031536396087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184269.P13237008031536396087

/-! ## A184269.P9597097887915453785

`A184271(eq[6, A193592(n)])`
-/

namespace A184269.P9597097887915453785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184269.P9597097887915453785

/-!
# A184270: Number of distinct n X 8 toroidal binary arrays.

The programs for A184270, there is no canonical definition to state claims against.
-/

/-! ## A184270.P9396236347411323503

`A184271(eq[9, A131818(n+1)])`
-/

namespace A184270.P9396236347411323503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184270.P9396236347411323503

/-! ## A184270.P12606659813840912345

`A184271(A000124(n+8)-(n+1))`
-/

namespace A184270.P12606659813840912345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (A000124 (n + 8) - (n + 1 : ℤ)).toNat

end

end A184270.P12606659813840912345

/-! ## A184270.P4309939181312034592

`A184271(A374009(n+1))`
-/

namespace A184270.P4309939181312034592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (A374009 (n + 1)).toNat

end

end A184270.P4309939181312034592

/-! ## A184270.P15398235196630836138

`A184271(eq[5, A219347(n)])`
-/

namespace A184270.P15398235196630836138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184270.P15398235196630836138

/-! ## A184270.P6962893568723003717

`A184271(eq[7, A193592(n)])`
-/

namespace A184270.P6962893568723003717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184270.P6962893568723003717

/-!
# A184271: Table read by antidiagonals: T(n,k) = number of distinct n X k toroidal binary arrays (n >= 1, k >= 1).

The programs for A184271, there is no canonical definition to state claims against.
-/

/-! ## A184271.P8709378867142812163

`A368305(n+1)+A089013(A073090(n))`
-/

namespace A184271.P8709378867142812163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368305 (n + 1) + A089013 (A073090 n).toNat

end

end A184271.P8709378867142812163

/-! ## A184271.P14043353084881466362

`A122260(A222188(n+1)%A113412(n))`
-/

namespace A184271.P14043353084881466362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122260 (Int.tmod (A222188 (n + 1)) (A113412 n)).toNat

end

end A184271.P14043353084881466362

/-! ## A184271.P4629558351245997835

`A368305(n+1)+A318950(A001597(n+1))`
-/

namespace A184271.P4629558351245997835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368305 (n + 1) + A318950 (A001597 (n + 1)).toNat

end

end A184271.P4629558351245997835

/-! ## A184271.P9964196077595679751

`A342441(A196696(n+1))+A336005(n+1)`
-/

namespace A184271.P9964196077595679751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342441 (A196696 (n + 1)).toNat + A336005 (n + 1)

end

end A184271.P9964196077595679751

/-!
# A184272: Number of distinct n X n toroidal 0..3 arrays.

The programs for A184272, there is no canonical definition to state claims against.
-/

/-! ## A184272.P893339096353089290

`A184277((n+1)²+n²)`
-/

namespace A184272.P893339096353089290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184277 ((n + 1) ^ 2 + n ^ 2)

end

end A184272.P893339096353089290

/-! ## A184272.P3384881787910319087

`record[gcd(A114327(n), A184277(n+1))]`
-/

namespace A184272.P3384881787910319087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A184277 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184272.P3384881787910319087

/-!
# A184273: Number of distinct n X 2 toroidal 0..3 arrays.

The programs for A184273, there is no canonical definition to state claims against.
-/

/-! ## A184273.P11327095402930721173

`A001868(n+1)-A343466(2*(n+1))`
-/

namespace A184273.P11327095402930721173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 (n + 1) - A343466 (2 * (n + 1))

end

end A184273.P11327095402930721173

/-! ## A184273.P9918626412663107975

`A184277(∑[n+1]+2)`
-/

namespace A184273.P9918626412663107975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184277 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184273.P9918626412663107975

/-! ## A184273.P17085905414144099847

`record[A010054(n)*A184277(n+2)]`
-/

namespace A184273.P17085905414144099847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184277 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184273.P17085905414144099847

/-! ## A184273.P6935176415812360176

`record[root(A184277(n+2), A328807(n))]`
-/

namespace A184273.P6935176415812360176
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184277 (n + 2) : ℝ) ^ (1 / (A328807 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184273.P6935176415812360176

/-! ## A184273.P6868656903697420037

`record[A184277(A198453(n+1))]`
-/

namespace A184273.P6868656903697420037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184277 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184273.P6868656903697420037

/-!
# A184274: Number of distinct n X 3 toroidal 0..3 arrays.

The programs for A184274, there is no canonical definition to state claims against.
-/

/-! ## A184274.P13274523612858352438

`A184277(∑[n+2]+4)`
-/

namespace A184274.P13274523612858352438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184277 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184274.P13274523612858352438

/-! ## A184274.P16060796474815383991

`lcm(2, A184277(A167614(n+1)))`
-/

namespace A184274.P16060796474815383991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A184277 (A167614 (n + 1)).toNat)

end

end A184274.P16060796474815383991

/-! ## A184274.P5182968992872979526

`A184277(A167614(n+1))+A000007(n+1)`
-/

namespace A184274.P5182968992872979526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184277 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A184274.P5182968992872979526

/-! ## A184274.P8280475345494236962

`A184277(A167614(n+1))%A184275(n+1)`
-/

namespace A184274.P8280475345494236962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184277 (A167614 (n + 1)).toNat) (A184275 (n + 1))

end

end A184274.P8280475345494236962

/-! ## A184274.P3401610318102304757

`A184277(A167614(n+1))+A117980(2*n+1)`
-/

namespace A184274.P3401610318102304757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184277 (A167614 (n + 1)).toNat + A117980 (2 * n + 1)

end

end A184274.P3401610318102304757

/-!
# A184275: Number of distinct n X 4 toroidal 0..3 arrays.

The programs for A184275, there is no canonical definition to state claims against.
-/

/-! ## A184275.P14803841104585983788

`A184277(A141214(n)+7)`
-/

namespace A184275.P14803841104585983788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184277 (A141214 n + 7).toNat

end

end A184275.P14803841104585983788

/-! ## A184275.P6982401634023685108

`A184277(A052905(n)+9)`
-/

namespace A184275.P6982401634023685108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184277 (A052905 n + 9).toNat

end

end A184275.P6982401634023685108

/-! ## A184275.P6947317792385595993

`A184277(A055999(n)+10)`
-/

namespace A184275.P6947317792385595993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184277 (A055999 n + 10).toNat

end

end A184275.P6947317792385595993

/-! ## A184275.P4775634019670420984

`A184277(A167614(n+2)+1)`
-/

namespace A184275.P4775634019670420984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184277 (A167614 (n + 2) + 1).toNat

end

end A184275.P4775634019670420984

/-! ## A184275.P5594677225285701811

`A184277(Δ[A264443(n)-n²])`
-/

namespace A184275.P5594677225285701811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184277 (f1 (n + 1) - f1 n).toNat

end

end A184275.P5594677225285701811

/-!
# A184276: Number of distinct n X 5 toroidal 0..3 arrays.

The programs for A184276, there is no canonical definition to state claims against.
-/

/-! ## A184276.P14924784179962576112

`A184277(Δ[A264443(n)])`
-/

namespace A184276.P14924784179962576112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184277 (f1 (n + 1) - f1 n).toNat

end

end A184276.P14924784179962576112

/-! ## A184276.P6276660357556728313

`A184277(A374005(n+1))`
-/

namespace A184276.P6276660357556728313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184277 (A374005 (n + 1)).toNat

end

end A184276.P6276660357556728313

/-! ## A184276.P7371757665847790867

`A184277(Δ[A023545(n+1)])`
-/

namespace A184276.P7371757665847790867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184277 (f1 (n + 1) - f1 n).toNat

end

end A184276.P7371757665847790867

/-! ## A184276.P6055104119941461871

`A184277(A264443(n+1)-A264443(n))`
-/

namespace A184276.P6055104119941461871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184277 (A264443 (n + 1) - A264443 n).toNat

end

end A184276.P6055104119941461871

/-! ## A184276.P17770935551487203048

`A184277(A023545(n+2)-A023545(n+1))`
-/

namespace A184276.P17770935551487203048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184277 (A023545 (n + 2) - A023545 (n + 1)).toNat

end

end A184276.P17770935551487203048

/-!
# A184278: Number of distinct n X n toroidal 0..2 arrays.

The programs for A184278, there is no canonical definition to state claims against.
-/

/-! ## A184278.P1095034402337572541

`A184284((n+1)²+n²)`
-/

namespace A184278.P1095034402337572541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184284 ((n + 1) ^ 2 + n ^ 2)

end

end A184278.P1095034402337572541

/-! ## A184278.P16806948089318576923

`record[A003982(n)*A184284(n+1)]`
-/

namespace A184278.P16806948089318576923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A184284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184278.P16806948089318576923

/-! ## A184278.P14217891656552841393

`record[gcd(A114327(n), A184284(n+1))]`
-/

namespace A184278.P14217891656552841393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A184284 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184278.P14217891656552841393

/-!
# A184279: Number of distinct n X 2 toroidal 0..2 arrays.

The programs for A184279, there is no canonical definition to state claims against.
-/

/-! ## A184279.P5437502062637858372

`A001867(n+1)-A343465(2*(n+1))`
-/

namespace A184279.P5437502062637858372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001867 (n + 1) - A343465 (2 * (n + 1))

end

end A184279.P5437502062637858372

/-! ## A184279.P12069684824298357066

`A184284(∑[n+1]+2)`
-/

namespace A184279.P12069684824298357066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184284 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184279.P12069684824298357066

/-! ## A184279.P16937649754689827196

`record[A010054(n)*A184284(n+2)]`
-/

namespace A184279.P16937649754689827196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184284 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184279.P16937649754689827196

/-! ## A184279.P1567962560747328090

`record[root(A184284(n+2), A059268(n))]`
-/

namespace A184279.P1567962560747328090
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184284 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184279.P1567962560747328090

/-! ## A184279.P14891978064137705448

`record[A184284(Δ[A003453(n+5)])]`
-/

namespace A184279.P14891978064137705448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184284 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184279.P14891978064137705448

/-!
# A184280: Number of distinct n X 3 toroidal 0..2 arrays.

The programs for A184280, there is no canonical definition to state claims against.
-/

/-! ## A184280.P16883741244212833569

`A184284(∑[n+2]+4)`
-/

namespace A184280.P16883741244212833569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184284 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184280.P16883741244212833569

/-! ## A184280.P1292121373556965013

`A185284(n)+A184284(A167614(n+1))`
-/

namespace A184280.P1292121373556965013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A184284 (A167614 (n + 1)).toNat

end

end A184280.P1292121373556965013

/-! ## A184280.P1253809181650030613

`or(A000007(n), A184284(A167614(n+1)))`
-/

namespace A184280.P1253809181650030613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A184284 (A167614 (n + 1)).toNat)

end

end A184280.P1253809181650030613

/-! ## A184280.P13668413018678261188

`or(A000038(n), A184284(A167614(n+1)))`
-/

namespace A184280.P13668413018678261188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A184284 (A167614 (n + 1)).toNat)

end

end A184280.P13668413018678261188

/-! ## A184280.P14100440230585923534

`A184284(A167614(n+1))%A184274(n+1)`
-/

namespace A184280.P14100440230585923534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184284 (A167614 (n + 1)).toNat) (A184274 (n + 1))

end

end A184280.P14100440230585923534

/-!
# A184281: Number of distinct n X 4 toroidal 0..2 arrays.

The programs for A184281, there is no canonical definition to state claims against.
-/

/-! ## A184281.P11766116427812898095

`A184284(A374004(n+1))`
-/

namespace A184281.P11766116427812898095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184284 (A374004 (n + 1)).toNat

end

end A184281.P11766116427812898095

/-! ## A184281.P7920849693900323242

`A184284(A141214(n)+7)`
-/

namespace A184281.P7920849693900323242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184284 (A141214 n + 7).toNat

end

end A184281.P7920849693900323242

/-! ## A184281.P2680275917252925474

`A184284(A052905(n)+9)`
-/

namespace A184281.P2680275917252925474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184284 (A052905 n + 9).toNat

end

end A184281.P2680275917252925474

/-! ## A184281.P3383200408792120856

`A184284(A055999(n)+10)`
-/

namespace A184281.P3383200408792120856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184284 (A055999 n + 10).toNat

end

end A184281.P3383200408792120856

/-! ## A184281.P4514652469813859475

`A184284(A167614(n+2)+1)`
-/

namespace A184281.P4514652469813859475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184284 (A167614 (n + 2) + 1).toNat

end

end A184281.P4514652469813859475

/-!
# A184282: Number of distinct n X 5 toroidal 0..2 arrays.

The programs for A184282, there is no canonical definition to state claims against.
-/

/-! ## A184282.P7430579118171991448

`A184284(A374005(n+1))`
-/

namespace A184282.P7430579118171991448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184284 (A374005 (n + 1)).toNat

end

end A184282.P7430579118171991448

/-! ## A184282.P1170902368891691340

`A184284(A077169(n+5))`
-/

namespace A184282.P1170902368891691340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184284 (A077169 (n + 5)).toNat

end

end A184282.P1170902368891691340

/-! ## A184282.P13309406199933364404

`A184284(A155212(n)+13)`
-/

namespace A184282.P13309406199933364404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184284 (A155212 n + 13).toNat

end

end A184282.P13309406199933364404

/-! ## A184282.P12469304347771806512

`A184284(A056000(n)+15)`
-/

namespace A184282.P12469304347771806512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184284 (A056000 n + 15).toNat

end

end A184282.P12469304347771806512

/-! ## A184282.P3181726011639833281

`A184284(eq[6, A131818(n+1)])`
-/

namespace A184282.P3181726011639833281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184284 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184282.P3181726011639833281

/-!
# A184283: Number of distinct n X 6 toroidal 0..2 arrays.

The programs for A184283, there is no canonical definition to state claims against.
-/

/-! ## A184283.P7911502063686517822

`A184284(A374007(n+1))`
-/

namespace A184283.P7911502063686517822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184284 (A374007 (n + 1)).toNat

end

end A184283.P7911502063686517822

/-! ## A184283.P946685829258226057

`A184284(A052905(n+3))`
-/

namespace A184283.P946685829258226057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184284 (A052905 (n + 3)).toNat

end

end A184283.P946685829258226057

/-! ## A184283.P4989022576827745464

`A184284(Δ[A264443(n+1)]-1)`
-/

namespace A184283.P4989022576827745464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184284 (f1 (n + 1) - f1 n - 1).toNat

end

end A184283.P4989022576827745464

/-!
# A184285: Number of distinct n X 2 toroidal 0..4 arrays.

The programs for A184285, there is no canonical definition to state claims against.
-/

/-! ## A184285.P5264560915749182712

`A001869(n+1)-A343467(2*(n+1))`
-/

namespace A184285.P5264560915749182712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001869 (n + 1) - A343467 (2 * (n + 1))

end

end A184285.P5264560915749182712

/-! ## A184285.P11780015892776939877

`A001869(n+1)+abs(A343467(2*n+2))`
-/

namespace A184285.P11780015892776939877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001869 (n + 1) + |A343467 (2 * n + 2)|

end

end A184285.P11780015892776939877

/-! ## A184285.P10897081325341438440

`A184288(∑[n+1]+2)`
-/

namespace A184285.P10897081325341438440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184288 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184285.P10897081325341438440

/-! ## A184285.P11962045120931772256

`record[A010054(n)*A184288(n+2)]`
-/

namespace A184285.P11962045120931772256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184288 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184285.P11962045120931772256

/-! ## A184285.P4314272044478527144

`record[A184288(Δ[A003453(n+5)])]`
-/

namespace A184285.P4314272044478527144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184288 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184285.P4314272044478527144

/-!
# A184286: Number of distinct n X 3 toroidal 0..4 arrays.

The programs for A184286, there is no canonical definition to state claims against.
-/

/-! ## A184286.P9507964448987070757

`A184288(∑[n+2]+4)`
-/

namespace A184286.P9507964448987070757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184288 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184286.P9507964448987070757

/-! ## A184286.P18191680803685431404

`record[A184288(A008795(n)+3)]`
-/

namespace A184286.P18191680803685431404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184288 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184286.P18191680803685431404

/-! ## A184286.P9641070556602302171

`or(1, A184288(A167614(n+1)))`
-/

namespace A184286.P9641070556602302171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A184288 (A167614 (n + 1)).toNat)

end

end A184286.P9641070556602302171

/-! ## A184286.P11236656840882781564

`A184288(A167614(n+1))%A184282(n+1)`
-/

namespace A184286.P11236656840882781564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184288 (A167614 (n + 1)).toNat) (A184282 (n + 1))

end

end A184286.P11236656840882781564

/-! ## A184286.P5486325872165552005

`xor(A000038(n+4), A184288(A167614(n+1)))`
-/

namespace A184286.P5486325872165552005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 (n + 4)) (A184288 (A167614 (n + 1)).toNat)

end

end A184286.P5486325872165552005

/-!
# A184287: Number of distinct n X 4 toroidal 0..4 arrays.

The programs for A184287, there is no canonical definition to state claims against.
-/

/-! ## A184287.P13048144760613709553

`A184288(A141214(n)+7)`
-/

namespace A184287.P13048144760613709553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184288 (A141214 n + 7).toNat

end

end A184287.P13048144760613709553

/-! ## A184287.P1513462027512101195

`A184288(A167614(n+2)+1)`
-/

namespace A184287.P1513462027512101195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184288 (A167614 (n + 2) + 1).toNat

end

end A184287.P1513462027512101195

/-! ## A184287.P10792071651109966253

`A184288(eq[3, A002262(n)]+1)`
-/

namespace A184287.P10792071651109966253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184288 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A184287.P10792071651109966253

/-! ## A184287.P12683908781294250346

`A184288(A155212(n)+5)`
-/

namespace A184287.P12683908781294250346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184288 (A155212 n + 5).toNat

end

end A184287.P12683908781294250346

/-!
# A184288: Table read by antidiagonals: T(n,k) = number of distinct n X k toroidal 0..4 arrays.

The programs for A184288, there is no canonical definition to state claims against.
-/

/-! ## A184288.P17174779341860870155

`5*A102471(A240347(n+1))`
-/

namespace A184288.P17174779341860870155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A102471 (A240347 (n + 1)).toNat

end

end A184288.P17174779341860870155

/-! ## A184288.P14137865491904806002

`A158284(or(A011940(n), A208796(n+1)))`
-/

namespace A184288.P14137865491904806002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158284 (Int.lor (A011940 n) (A208796 (n + 1))).toNat

end

end A184288.P14137865491904806002

/-! ## A184288.P14329967363687170471

`A158284(A320645(n+1)+A208796(n+1))`
-/

namespace A184288.P14329967363687170471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158284 (A320645 (n + 1) + A208796 (n + 1)).toNat

end

end A184288.P14329967363687170471

/-!
# A184289: Number of distinct n X 2 toroidal 0..5 arrays.

The programs for A184289, there is no canonical definition to state claims against.
-/

/-! ## A184289.P16577409619373412836

`A184291(∑[n+1]+2)`
-/

namespace A184289.P16577409619373412836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184291 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184289.P16577409619373412836

/-! ## A184289.P8144477265906409677

`record[A010054(n)*A184291(n+2)]`
-/

namespace A184289.P8144477265906409677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184291 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184289.P8144477265906409677

/-! ## A184289.P14591103291833313223

`record[root(A184291(n+2), A059268(n))]`
-/

namespace A184289.P14591103291833313223
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184291 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184289.P14591103291833313223

/-! ## A184289.P6722788455211285140

`A184291(A000096(n)+3)%A184290(n+1)`
-/

namespace A184289.P6722788455211285140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184291 (A000096 n + 3).toNat) (A184290 (n + 1))

end

end A184289.P6722788455211285140

/-! ## A184289.P16614017010554919719

`and(A184291(A000096(n)+3), A260196(n+1))`
-/

namespace A184289.P16614017010554919719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A184291 (A000096 n + 3).toNat) (A260196 (n + 1))

end

end A184289.P16614017010554919719

/-!
# A184290: Number of distinct n X 3 toroidal 0..5 arrays.

The programs for A184290, there is no canonical definition to state claims against.
-/

/-! ## A184290.P862693099186080985

`A184291(∑[n+2]+4)`
-/

namespace A184290.P862693099186080985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184291 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184290.P862693099186080985

/-! ## A184290.P6097145060476557969

`lcm(2, A184291(A167614(n+1)))`
-/

namespace A184290.P6097145060476557969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A184291 (A167614 (n + 1)).toNat)

end

end A184290.P6097145060476557969

/-! ## A184290.P17880564802983566041

`A184291(A167614(n+1))*A184303(n+1)`
-/

namespace A184290.P17880564802983566041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184291 (A167614 (n + 1)).toNat * A184303 (n + 1)

end

end A184290.P17880564802983566041

/-! ## A184290.P574024875204053376

`and(A184291(A167614(n+1)), A260196(n+1))`
-/

namespace A184290.P574024875204053376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A184291 (A167614 (n + 1)).toNat) (A260196 (n + 1))

end

end A184290.P574024875204053376

/-! ## A184290.P17504620430847073550

`A184291(A167614(n+1))%A184289(2*(n+1))`
-/

namespace A184290.P17504620430847073550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184291 (A167614 (n + 1)).toNat) (A184289 (2 * (n + 1)))

end

end A184290.P17504620430847073550

/-!
# A184292: Number of distinct n X 2 toroidal 0..7 arrays.

The programs for A184292, there is no canonical definition to state claims against.
-/

/-! ## A184292.P14908351780777695797

`A184294(∑[n+1]+2)`
-/

namespace A184292.P14908351780777695797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184294 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184292.P14908351780777695797

/-! ## A184292.P17331282217315994780

`record[A010054(n)*A184294(n+2)]`
-/

namespace A184292.P17331282217315994780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184294 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184292.P17331282217315994780

/-! ## A184292.P4374410686336716105

`record[root(A184294(n+2), A002260(n+1))]`
-/

namespace A184292.P4374410686336716105
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184294 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184292.P4374410686336716105

/-!
# A184293: Number of distinct n X 3 toroidal 0..7 arrays.

The programs for A184293, there is no canonical definition to state claims against.
-/

/-! ## A184293.P10228431292620796246

`A184294(∑[n+2]+4)`
-/

namespace A184293.P10228431292620796246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184294 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184293.P10228431292620796246

/-!
# A184295: Number of strings of numbers x(i=1..n) in 0..n with sum i^3*x(i)^2 equal to n^5.

The programs for A184295, there is no canonical definition to state claims against.
-/

/-! ## A184295.P12857454480282644052

`A184303(∑[4*n]+1)`
-/

namespace A184295.P12857454480282644052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184295.P12857454480282644052

/-! ## A184295.P8149999173610096837

`A184303(A001844(n))+char[12]`
-/

namespace A184295.P8149999173610096837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A184295.P8149999173610096837

/-! ## A184295.P17687607882918452274

`A185245(n)+A184303(A001844(n))`
-/

namespace A184295.P17687607882918452274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185245 n + A184303 (A001844 n).toNat

end

end A184295.P17687607882918452274

/-! ## A184295.P8475422169882325952

`A299905(n)+A184303(A001844(n))`
-/

namespace A184295.P8475422169882325952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299905 n + A184303 (A001844 n).toNat

end

end A184295.P8475422169882325952

/-! ## A184295.P2910629010799775903

`A184303(A001844(n))*A242784(n)`
-/

namespace A184295.P2910629010799775903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A001844 n).toNat * A242784 n

end

end A184295.P2910629010799775903

/-!
# A184296: Number of strings of numbers x(i=1..n) in 0..2 with sum i^3*x(i)^2 equal to n^3*4.

The programs for A184296, there is no canonical definition to state claims against.
-/

/-! ## A184296.P11336467694181162449

`A184303(∑[n+2])`
-/

namespace A184296.P11336467694181162449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184296.P11336467694181162449

/-! ## A184296.P15937205244352021771

`A184303(A000096(n+1))+char[23]`
-/

namespace A184296.P15937205244352021771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A184296.P15937205244352021771

/-! ## A184296.P1139828463721170904

`A185284(n)+A184303(A000096(n+1))`
-/

namespace A184296.P1139828463721170904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A184303 (A000096 (n + 1)).toNat

end

end A184296.P1139828463721170904

/-! ## A184296.P10555249665487282203

`A184303(A000096(n+1))*A272901(n+1)`
-/

namespace A184296.P10555249665487282203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A000096 (n + 1)).toNat * A272901 (n + 1)

end

end A184296.P10555249665487282203

/-! ## A184296.P1724980806434879054

`A152271(2*n)*A184303(A117142(2*n+2))`
-/

namespace A184296.P1724980806434879054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (2 * n) * A184303 (A117142 (2 * n + 2)).toNat

end

end A184296.P1724980806434879054

/-!
# A184297: Number of strings of numbers x(i=1..n) in 0..3 with sum i^3*x(i)^2 equal to n^3*9.

The programs for A184297, there is no canonical definition to state claims against.
-/

/-! ## A184297.P11475824195261362352

`A184303(∑[n+3]+1)`
-/

namespace A184297.P11475824195261362352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184297.P11475824195261362352

/-! ## A184297.P13960020091371175455

`A184303(A034856(n+2))%A003500(n)`
-/

namespace A184297.P13960020091371175455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184303 (A034856 (n + 2)).toNat) (A003500 n)

end

end A184297.P13960020091371175455

/-! ## A184297.P9608760874466880255

`gcd(A184303(A034856(n+2)), A240349(n))`
-/

namespace A184297.P9608760874466880255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A184303 (A034856 (n + 2)).toNat) (A240349 n)

end

end A184297.P9608760874466880255

/-! ## A184297.P10286770865856420503

`A184303(Δ[A008778(n)])^(A000040(n+1)%2)`
-/

namespace A184297.P10286770865856420503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184303 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A184297.P10286770865856420503

/-! ## A184297.P16099838973445578369

`A184303(A034856(n+2))*A184303(A184303(n+2))`
-/

namespace A184297.P16099838973445578369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A034856 (n + 2)).toNat * A184303 (A184303 (n + 2)).toNat

end

end A184297.P16099838973445578369

/-!
# A184298: Number of strings of numbers x(i=1..n) in 0..4 with sum i^3*x(i)^2 equal to n^3*16.

The programs for A184298, there is no canonical definition to state claims against.
-/

/-! ## A184298.P2435571648428224848

`A184303(∑[n+4]+3)`
-/

namespace A184298.P2435571648428224848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A184298.P2435571648428224848

/-! ## A184298.P6369756569205363468

`or(char[1], A184303(A056000(n)+7))`
-/

namespace A184298.P6369756569205363468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A184303 (A056000 n + 7).toNat)

end

end A184298.P6369756569205363468

/-! ## A184298.P17642557279478350234

`A184303(A055998(n+2))*A272901(n+1)`
-/

namespace A184298.P17642557279478350234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A055998 (n + 2)).toNat * A272901 (n + 1)

end

end A184298.P17642557279478350234

/-! ## A184298.P14770865193845146867

`A184303(A056000(n)+7)%A000108(n+2)`
-/

namespace A184298.P14770865193845146867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184303 (A056000 n + 7).toNat) (A000108 (n + 2))

end

end A184298.P14770865193845146867

/-! ## A184298.P978045390937203197

`A007318(C(3, n))+A184303(A056000(n)+7)-1`
-/

namespace A184298.P978045390937203197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) + (A184303 (A056000 n + 7).toNat - 1)

end

end A184298.P978045390937203197

/-!
# A184299: Number of strings of numbers x(i=1..n) in 0..5 with sum i^3*x(i)^2 equal to n^3*25.

The programs for A184299, there is no canonical definition to state claims against.
-/

/-! ## A184299.P16690905283048416093

`A184303(∑[n+5]+6)`
-/

namespace A184299.P16690905283048416093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A184299.P16690905283048416093

/-! ## A184299.P2171549940675471310

`A184303(A046691(n+3))%A000108(n+2)`
-/

namespace A184299.P2171549940675471310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184303 (A046691 (n + 3)).toNat) (A000108 (n + 2))

end

end A184299.P2171549940675471310

/-! ## A184299.P13162622541223712544

`A007318(C(2, n))*A184303(A046691(n+3))`
-/

namespace A184299.P13162622541223712544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A184303 (A046691 (n + 3)).toNat

end

end A184299.P13162622541223712544

/-! ## A184299.P1689868588380520600

`A184303(A046691(n+3))^A000041(C(2, n))`
-/

namespace A184299.P1689868588380520600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184303 (A046691 (n + 3)).toNat : ℚ) ^ (A000041 (Nat.choose 2 n) : ℤ)

end

end A184299.P1689868588380520600

