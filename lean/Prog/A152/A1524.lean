import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A152400: Triangle T, read by rows, where column k of T = column 0 of matrix power T^(k+1) for k>0, with column 0 of T = unsigned column 0 of T^-1 (shifted).

The programs for A152400, there is no canonical definition to state claims against.
-/

/-! ## A152400.P10486034519938380996

`A152405(n)+A014707(A022171(n))`
-/

namespace A152400.P10486034519938380996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152405 n + A014707 (A022171 n).toNat

end

end A152400.P10486034519938380996

/-! ## A152400.P7011694005740767782

`A152405(n)+A025465(A023105(n))`
-/

namespace A152400.P7011694005740767782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152405 n + A025465 (A023105 n).toNat

end

end A152400.P7011694005740767782

/-! ## A152400.P18378282941205246332

`A152405(n)+A055641(A022112(n))`
-/

namespace A152400.P18378282941205246332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152405 n + A055641 (A022112 n).toNat

end

end A152400.P18378282941205246332

/-! ## A152400.P4643623384195818081

`A152405(n)+A055641(A022169(n))`
-/

namespace A152400.P4643623384195818081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152405 n + A055641 (A022169 n).toNat

end

end A152400.P4643623384195818081

/-! ## A152400.P3040489441642407433

`A152405(n)+A016389(A086645(n))`
-/

namespace A152400.P3040489441642407433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152405 n + A016389 (A086645 n).toNat

end

end A152400.P3040489441642407433

/-!
# A152401: Column 1 of triangle A152400; also, column 1 of square array A152405.

The programs for A152401, there is no canonical definition to state claims against.
-/

/-! ## A152401.P11222475230073935793

`record[A152400(comp[∑[n]])]`
-/

namespace A152401.P11222475230073935793
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152400 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152401.P11222475230073935793

/-! ## A152401.P18148051990424167682

`record[A152405(comp[∑[n]])]`
-/

namespace A152401.P18148051990424167682
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152405 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152401.P18148051990424167682

/-! ## A152401.P7902874874802543499

`A152400(∑[n+1]+1)`
-/

namespace A152401.P7902874874802543499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152400 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A152401.P7902874874802543499

/-! ## A152401.P511627328053609911

`A152405(∑[n+1]+1)`
-/

namespace A152401.P511627328053609911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152405 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A152401.P511627328053609911

/-! ## A152401.P91958711104353460

`record[A103631(n)*A152400(n)]`
-/

namespace A152401.P91958711104353460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 n * A152400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152401.P91958711104353460

/-!
# A152402: Column 2 of triangle A152400.

The programs for A152402, there is no canonical definition to state claims against.
-/

/-! ## A152402.P14907361588478870039

`record[A152400(∑[n]+2)]`
-/

namespace A152402.P14907361588478870039
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152400 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152402.P14907361588478870039

/-! ## A152402.P6064362003370172210

`A152400(∑[n+2]+3)`
-/

namespace A152402.P6064362003370172210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152400 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A152402.P6064362003370172210

/-! ## A152402.P5790781064258585261

`record[A010054(n)*A152400(n+2)]`
-/

namespace A152402.P5790781064258585261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A152400 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152402.P5790781064258585261

/-! ## A152402.P17563626222067427713

`record[gcd(A002262(n), A152400(n+2))]`
-/

namespace A152402.P17563626222067427713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A152400 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152402.P17563626222067427713

/-!
# A152403: Column 3 of triangle A152400.

The programs for A152403, there is no canonical definition to state claims against.
-/

/-! ## A152403.P5526008374028976276

`A152400(A167614(n+2))`
-/

namespace A152403.P5526008374028976276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152400 (A167614 (n + 2)).toNat

end

end A152403.P5526008374028976276

/-! ## A152403.P3516710521068561063

`A152400(A141214(n)+6)`
-/

namespace A152403.P3516710521068561063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152400 (A141214 n + 6).toNat

end

end A152403.P3516710521068561063

/-! ## A152403.P5234759225701612772

`A152400(A052905(n)+8)`
-/

namespace A152403.P5234759225701612772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152400 (A052905 n + 8).toNat

end

end A152403.P5234759225701612772

/-!
# A152404: Column 1 of matrix square of triangle A152400; also, column 3 of square array A152405.

The programs for A152404, there is no canonical definition to state claims against.
-/

/-! ## A152404.P3241639304349969914

`A152405(∑[n+3]+6)`
-/

namespace A152404.P3241639304349969914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152405 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A152404.P3241639304349969914

/-!
# A152405: Square array, read by antidiagonals, where row n+1 is generated from row n by first removing terms in row n at positions {m*(m+1)/2, m>=0} and then taking partial sums, starting with all 1's in row 0.

The programs for A152405, there is no canonical definition to state claims against.
-/

/-! ## A152405.P14445129475120515423

`A152400(n)+A016389(A022166(n))`
-/

namespace A152405.P14445129475120515423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152400 n + A016389 (A022166 n).toNat

end

end A152405.P14445129475120515423

/-! ## A152405.P555834020486558933

`A178798(A008459(n))+A152400(n)`
-/

namespace A152405.P555834020486558933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A008459 n).toNat + A152400 n

end

end A152405.P555834020486558933

/-! ## A152405.P1460327131835554339

`A152400(n)+A016389(A176561(n))`
-/

namespace A152405.P1460327131835554339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152400 n + A016389 (A176561 n).toNat

end

end A152405.P1460327131835554339

/-! ## A152405.P13936275401070946342

`A152400(n)-A014707(A022171(n))`
-/

namespace A152405.P13936275401070946342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152400 n - A014707 (A022171 n).toNat

end

end A152405.P13936275401070946342

/-! ## A152405.P13088675531147697974

`A152400(n)-A025465(A023105(n))`
-/

namespace A152405.P13088675531147697974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152400 n - A025465 (A023105 n).toNat

end

end A152405.P13088675531147697974

/-!
# A152406: Triangle T, read by rows, where column k of T = column 0 of matrix power T^(k+1) for k>0, with column 0 of T = column 1 of T^2 (shifted).

The programs for A152406, there is no canonical definition to state claims against.
-/

/-! ## A152406.P6947238166514789423

`A105623(n)-A358724(A135880(n))`
-/

namespace A152406.P6947238166514789423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105623 n - A358724 (A135880 n).toNat

end

end A152406.P6947238166514789423

/-! ## A152406.P13163888972326021307

`A105623(n)-A076142(A005773(n))`
-/

namespace A152406.P13163888972326021307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105623 n - A076142 (A005773 n).toNat

end

end A152406.P13163888972326021307

/-! ## A152406.P11570926541394610370

`A105623(n)-A025442(A087051(n))`
-/

namespace A152406.P11570926541394610370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105623 n - A025442 (A087051 n).toNat

end

end A152406.P11570926541394610370

/-! ## A152406.P11243654098173987806

`A105623(n)-A035171(A223432(n+1))`
-/

namespace A152406.P11243654098173987806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105623 n - A035171 (A223432 (n + 1)).toNat

end

end A152406.P11243654098173987806

/-! ## A152406.P13731311986595250652

`A105623(n)-A035171(A233523(n+1))`
-/

namespace A152406.P13731311986595250652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105623 n - A035171 (A233523 (n + 1)).toNat

end

end A152406.P13731311986595250652

/-!
# A152407: Column 0 of triangle A152406; also, column 1 of matrix square of A152406.

The programs for A152407, there is no canonical definition to state claims against.
-/

/-! ## A152407.P2410230763495554202

`A152406(∑[n])`
-/

namespace A152407.P2410230763495554202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152406 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152407.P2410230763495554202

/-! ## A152407.P9392828454885195008

`and(-1, A152406(A000217(n)))`
-/

namespace A152407.P9392828454885195008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A152406 (A000217 n).toNat)

end

end A152407.P9392828454885195008

/-! ## A152407.P13165392885583030758

`A152406(A161680(n+1))+char[12]`
-/

namespace A152407.P13165392885583030758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152406 (A161680 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A152407.P13165392885583030758

/-! ## A152407.P3056290300571599127

`A326595(n)+A152406(n*(n+1)/2)`
-/

namespace A152407.P3056290300571599127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326595 n + A152406 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A152407.P3056290300571599127

/-! ## A152407.P11760043408639597820

`A152406(n*(n+1)/2)+A036988(2*n+1)`
-/

namespace A152407.P11760043408639597820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152406 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat + A036988 (2 * n + 1)

end

end A152407.P11760043408639597820

/-!
# A152408: Column 1 of triangle A152406; also, column 0 of matrix square of A152406.

The programs for A152408, there is no canonical definition to state claims against.
-/

/-! ## A152408.P1270854472376109449

`record[A152406(comp[∑[n]])]`
-/

namespace A152408.P1270854472376109449
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152406 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152408.P1270854472376109449

/-! ## A152408.P7280076067128368329

`A152406(∑[n+1]+1)`
-/

namespace A152408.P7280076067128368329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152406 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A152408.P7280076067128368329

/-! ## A152408.P12627297919232448220

`record[A072233(n)*A152406(n)]`
-/

namespace A152408.P12627297919232448220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n * A152406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152408.P12627297919232448220

/-! ## A152408.P7705539437185637830

`record[A152406(n)^A067586(n)]`
-/

namespace A152408.P7705539437185637830
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152406 n : ℚ) ^ (A067586 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152408.P7705539437185637830

/-! ## A152408.P13467900148718448931

`record[gcd(A050870(n), A152406(n))]`
-/

namespace A152408.P13467900148718448931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050870 n) (A152406 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152408.P13467900148718448931

/-!
# A152409: Column 2 of triangle A152406; also, column 0 of matrix cube of A152406.

The programs for A152409, there is no canonical definition to state claims against.
-/

/-! ## A152409.P8465466142855279780

`A152406(∑[n+2]+3)`
-/

namespace A152409.P8465466142855279780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152406 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A152409.P8465466142855279780

/-! ## A152409.P9087380853457665839

`A152406(A167614(n+1)-1)%A237959(n+1)`
-/

namespace A152409.P9087380853457665839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152406 (A167614 (n + 1) - 1).toNat) (A237959 (n + 1))

end

end A152409.P9087380853457665839

/-!
# A152410: Column 3 of triangle A152406; also, column 0 of matrix 4th power of A152406.

The programs for A152410, there is no canonical definition to state claims against.
-/

/-! ## A152410.P15576699650962334855

`A152406(eq[3, n-C(∑[char[∑[n]]], 2)])`
-/

namespace A152410.P15576699650962334855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152406 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A152410.P15576699650962334855

/-! ## A152410.P6923498778613429809

`A152406(A167614(n+2))`
-/

namespace A152410.P6923498778613429809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152406 (A167614 (n + 2)).toNat

end

end A152410.P6923498778613429809

/-! ## A152410.P1121885128937987368

`A152406(A141214(n)+6)`
-/

namespace A152410.P1121885128937987368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152406 (A141214 n + 6).toNat

end

end A152410.P1121885128937987368

/-!
# A152411: Nonnegative integers representable as m^2 - n^4 for positive integers m,n.

The programs for A152411, there is no canonical definition to state claims against.
-/

/-! ## A152411.P16142678266365222595

`A340784(n+1)-A034693(A002805(n+1))`
-/

namespace A152411.P16142678266365222595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340784 (n + 1) - A034693 (A002805 (n + 1)).toNat

end

end A152411.P16142678266365222595

/-! ## A152411.P6618618420518823510

`A340784(n+1)-A066099(A075212(n+1))`
-/

namespace A152411.P6618618420518823510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340784 (n + 1) - A066099 (A075212 (n + 1)).toNat

end

end A152411.P6618618420518823510

/-! ## A152411.P2441355141129906279

`A340784(n+1)-A340102(A344415(n+1))`
-/

namespace A152411.P2441355141129906279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340784 (n + 1) - A340102 (A344415 (n + 1)).toNat

end

end A152411.P2441355141129906279

/-! ## A152411.P4851010127052145911

`A340784(n+1)-A031219(A022181(n+2))`
-/

namespace A152411.P4851010127052145911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340784 (n + 1) - A031219 (A022181 (n + 2)).toNat

end

end A152411.P4851010127052145911

/-! ## A152411.P2989191657864063068

`eq[1, A129514(n+1)]-A232991(A000108(n))`
-/

namespace A152411.P2989191657864063068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A232991 (A000108 n).toNat

end

end A152411.P2989191657864063068

/-!
# A152412: Nonnegative numbers of the form s^2-m^5, m>=1.

The programs for A152412, there is no canonical definition to state claims against.
-/

/-! ## A152412.P7925299955155923028

`comp[A177859(n+1)]`
-/

namespace A152412.P7925299955155923028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A152412.P7925299955155923028

/-! ## A152412.P1988781366799348337

`eq[char[A177859(n+1)], A151933(n+1)]`
-/

namespace A152412.P1988781366799348337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177859 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A152412.P1988781366799348337

/-! ## A152412.P1542499719475900973

`eq[char[A177859(n+1)], A151878(2*n+1)]`
-/

namespace A152412.P1542499719475900973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177859 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A152412.P1542499719475900973

/-!
# A152415: a(n) = A166709(n) + 1.

The programs for A152415, there is no canonical definition to state claims against.
-/

/-! ## A152415.P814604819979117028

`A166709(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152415.P814604819979117028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166709 (n + 1) + 1

end

end A152415.P814604819979117028

/-! ## A152415.P14423666693323396042

`A020725(A166709(n+1))`
-/

namespace A152415.P14423666693323396042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A166709 (n + 1)).toNat

end

end A152415.P14423666693323396042

/-! ## A152415.P15028714007273511456

`Δ[eq[2, A152430(n+1)]]+1`
-/

namespace A152415.P15028714007273511456
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152430 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A152415.P15028714007273511456

/-! ## A152415.P3678277633423288051

`A020725(Δ[eq[2, A152430(n+1)]])`
-/

namespace A152415.P3678277633423288051
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152430 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A152415.P3678277633423288051

/-! ## A152415.P15069113996720553621

`xor(A287556(A362644(n+3)), A302486(2*n+1))`
-/

namespace A152415.P15069113996720553621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A287556 (A362644 (n + 3)).toNat) (A302486 (2 * n + 1))

end

end A152415.P15069113996720553621

/-!
# A152416: Decimal expansion of 2 - Pi^2/6.

The programs for A152416, there is no canonical definition to state claims against.
-/

/-! ## A152416.P2384293267679327342

`9-A013661(n+1)`
-/

namespace A152416.P2384293267679327342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A013661 (n + 1 + 1)

end

end A152416.P2384293267679327342

/-! ## A152416.P14121474179602706685

`a(n-1)-Δ[A013661(n)]` with `a(0)=3`
-/

namespace A152416.P14121474179602706685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A152416.P14121474179602706685

/-!
# A152417: a(n) = (5^n - 1)/(2^(3 - (n mod 2))).

The programs for A152417, the canonical program `A152417.P13986350356121717189` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152417 has offset 0).

The definition of A152417 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152417.P13986350356121717189

`26*a(n-2)-25*a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=31`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152417

/-- `26*a(n-2)-25*a(n-4)` -/
def P13986350356121717189.Spec : Prop :=
  ∀ n, P13986350356121717189.a n = A152417 n

theorem P13986350356121717189.correct : P13986350356121717189.Spec := by
  intro n
  simp only [A152417]

end A152417

/-! ## A152417.P15507766914753172167

`(5^n-1)/2^(3-n%2)`
-/

namespace A152417.P15507766914753172167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ n : ℤ) - 1 : ℚ) / (2 : ℚ) ^ (3 - ((n % 2 : ℕ) : ℤ) : ℤ)

end

end A152417.P15507766914753172167

namespace A152417

/-- `(5^n-1)/2^(3-n%2)` -/
def P15507766914753172167.Spec : Prop :=
  ∀ n, P15507766914753172167.a n = (A152417 n : ℚ)

end A152417

/-! ## A152417.P7603135778141459382

`floor(5^n/4)/gcd(2, n)`
-/

namespace A152417.P7603135778141459382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(5 ^ n : ℚ) / 4⌋ : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A152417.P7603135778141459382

namespace A152417

/-- `floor(5^n/4)/gcd(2, n)` -/
def P7603135778141459382.Spec : Prop :=
  ∀ n, P7603135778141459382.a n = (A152417 n : ℚ)

end A152417

/-! ## A152417.P17175790993737356324

`floor(5^n/4)/(∑[(-1)^n]+1)`
-/

namespace A152417.P17175790993737356324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(5 ^ n : ℚ) / 4⌋ : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ)

end

end A152417.P17175790993737356324

namespace A152417

/-- `floor(5^n/4)/(∑[(-1)^n]+1)` -/
def P17175790993737356324.Spec : Prop :=
  ∀ n, P17175790993737356324.a n = (A152417 n : ℚ)

end A152417

/-! ## A152417.P15503113661672133384

`abs(A003463(n)/A280193(n))`
-/

namespace A152417.P15503113661672133384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A003463 n : ℚ) / (A280193 n : ℚ)|

end

end A152417.P15503113661672133384

namespace A152417

/-- `abs(A003463(n)/A280193(n))` -/
def P15503113661672133384.Spec : Prop :=
  ∀ n, P15503113661672133384.a n = (A152417 n : ℚ)

end A152417

/-! ## A152417.P9550529900895402624

`A000034(n)/2*A003463(n)`
-/

namespace A152417.P9550529900895402624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A003463 n : ℚ)

end

end A152417.P9550529900895402624

namespace A152417

/-- `A000034(n)/2*A003463(n)` -/
def P9550529900895402624.Spec : Prop :=
  ∀ n, P9550529900895402624.a n = (A152417 n : ℚ)

end A152417

/-! ## A152417.P1189241573343219642

`A121177(n+1)/4*A176895(2*n)`
-/

namespace A152417.P1189241573343219642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121177 (n + 1) : ℚ) / 4 * (A176895 (2 * n) : ℚ)

end

end A152417.P1189241573343219642

namespace A152417

/-- `A121177(n+1)/4*A176895(2*n)` -/
def P1189241573343219642.Spec : Prop :=
  ∀ n, P1189241573343219642.a n = (A152417 n : ℚ)

end A152417

/-!
# A152418: A sevens sequence: a(n) = (7^n - 1)/(2^(4 - 3*(n mod 2))).

The programs for A152418, the canonical program `A152418.P7795374843270061562` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152418 has offset 0).

The definition of A152418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152418.P1855499424077690792

`(7^n-1)/2^(4-3*n%2)`
-/

namespace A152418.P1855499424077690792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ n : ℤ) - 1 : ℚ) / (2 : ℚ) ^ (4 - ((3 * (n % 2) : ℕ) : ℤ) : ℤ)

end

end A152418.P1855499424077690792

namespace A152418

/-- `(7^n-1)/2^(4-3*n%2)` -/
def P1855499424077690792.Spec : Prop :=
  ∀ n, P1855499424077690792.a n = (A152418 n : ℚ)

end A152418

/-! ## A152418.P7795374843270061562

`50*a(n-2)-49*a(n-4)` with `a(0)=0, a(1)=3, a(2)=3, a(3)=171`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152418

/-- `50*a(n-2)-49*a(n-4)` -/
def P7795374843270061562.Spec : Prop :=
  ∀ n, P7795374843270061562.a n = A152418 n

theorem P7795374843270061562.correct : P7795374843270061562.Spec := by
  intro n
  simp only [A152418]

end A152418

/-! ## A152418.P3211853690418612306

`(7^n-1)/2^(2-n%2)²`
-/

namespace A152418.P3211853690418612306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ n : ℤ) - 1 : ℚ) / (2 : ℚ) ^ ((2 - ((n % 2 : ℕ) : ℤ)) ^ 2 : ℤ)

end

end A152418.P3211853690418612306

namespace A152418

/-- `(7^n-1)/2^(2-n%2)²` -/
def P3211853690418612306.Spec : Prop :=
  ∀ n, P3211853690418612306.a n = (A152418 n : ℚ)

end A152418

/-! ## A152418.P7278925108104199230

`lcm(8, A120741(n))/8`
-/

namespace A152418.P7278925108104199230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 8 (A120741 n) : ℚ) / 8

end

end A152418.P7278925108104199230

namespace A152418

/-- `lcm(8, A120741(n))/8` -/
def P7278925108104199230.Spec : Prop :=
  ∀ n, P7278925108104199230.a n = (A152418 n : ℚ)

end A152418

/-! ## A152418.P1363885877276105740

`A024075(n)/A040063(n)`
-/

namespace A152418.P1363885877276105740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024075 n : ℚ) / (A040063 n : ℚ)

end

end A152418.P1363885877276105740

namespace A152418

/-- `A024075(n)/A040063(n)` -/
def P1363885877276105740.Spec : Prop :=
  ∀ n, P1363885877276105740.a n = (A152418 n : ℚ)

end A152418

/-! ## A152418.P1632903194028504840

`floor(A000420(n)/A040063(n))`
-/

namespace A152418.P1632903194028504840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000420 n : ℚ) / (A040063 n : ℚ)⌋

end

end A152418.P1632903194028504840

namespace A152418

/-- `floor(A000420(n)/A040063(n))` -/
def P1632903194028504840.Spec : Prop :=
  ∀ n, P1632903194028504840.a n = A152418 n

end A152418

/-!
# A152419: Decimal expansion of 3-Pi^2/6-zeta(3).

The programs for A152419, there is no canonical definition to state claims against.
-/

/-! ## A152419.P9448747999398010651

`9-A347213(n+1)`
-/

namespace A152419.P9448747999398010651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A347213 (n + 1 + 1)

end

end A152419.P9448747999398010651

/-! ## A152419.P2745455365723360930

`a(n-1)-Δ[A347213(n)]` with `a(0)=1`
-/

namespace A152419.P2745455365723360930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A152419.P2745455365723360930

/-!
# A152420: Irregular triangle read by rows: T(n,k) = n*(n-2) - (k-n)*(k-n-2), with 0 <= k <= 2*n.

The programs for A152420, the canonical program `A152420.P2270128080283716414` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152420 has offset 0).

The definition of A152420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152420.P2270128080283716414

`(1-A080883(n))*(3-A071797(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A152420

/-- `(1-A080883(n))*(3-A071797(n+1))` -/
def P2270128080283716414.Spec : Prop :=
  ∀ n, P2270128080283716414.a n = A152420 n

theorem P2270128080283716414.correct : P2270128080283716414.Spec := by
  intro n
  simp only [A152420]

end A152420

/-! ## A152420.P7296041561311254275

`(A053186(n)-2)*A068527(n+1)`
-/

namespace A152420.P7296041561311254275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053186 n - 2) * A068527 (n + 1)

end

end A152420.P7296041561311254275

namespace A152420

/-- `(A053186(n)-2)*A068527(n+1)` -/
def P7296041561311254275.Spec : Prop :=
  ∀ n, P7296041561311254275.a n = A152420 n

end A152420

/-!
# A152421: a(n) = binomial(A000290(n), A006218(n)).

The programs for A152421, the canonical program `A152421.P9969378652125199696` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152421 has offset 1).

The definition of A152421 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152421.P9969378652125199696

`C(A000290(n+1), A006218(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A152421

/-- `C(A000290(n+1), A006218(n+1))` -/
def P9969378652125199696.Spec : Prop :=
  ∀ n, (P9969378652125199696.a n : ℤ) = A152421 (n + 1)

theorem P9969378652125199696.correct : P9969378652125199696.Spec := by
  intro n
  simp only [A152421, Nat.add_sub_cancel]

end A152421

/-! ## A152421.P436824958565467114

`C((n+1)², ∑[∏{e}[n+1, #+1]])`
-/

namespace A152421.P436824958565467114
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152421.P436824958565467114

namespace A152421

/-- `C((n+1)², ∑[∏{e}[n+1, #+1]])` -/
def P436824958565467114.Spec : Prop :=
  ∀ n, (P436824958565467114.a n : ℤ) = A152421 (n + 1)

end A152421

/-! ## A152421.P7503381285668866018

`C((n+1)², ∑[∑{d}[n+1, gcd(n, #)]])`
-/

namespace A152421.P7503381285668866018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152421.P7503381285668866018

namespace A152421

/-- `C((n+1)², ∑[∑{d}[n+1, gcd(n, #)]])` -/
def P7503381285668866018.Spec : Prop :=
  ∀ n, (P7503381285668866018.a n : ℤ) = A152421 (n + 1)

end A152421

/-! ## A152421.P12117722763072004082

`C((n+1)², ∑[∑{d}[n+1, ceil(1/#)]])`
-/

namespace A152421.P12117722763072004082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈1 / (d : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152421.P12117722763072004082

namespace A152421

/-- `C((n+1)², ∑[∑{d}[n+1, ceil(1/#)]])` -/
def P12117722763072004082.Spec : Prop :=
  ∀ n, (P12117722763072004082.a n : ℤ) = A152421 (n + 1)

end A152421

/-! ## A152421.P17047274287751602582

`C((n+1)², ∑[-∑{d}[n+1, or(#, -1)]])`
-/

namespace A152421.P17047274287751602582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f2 n), Int.lor (d : ℤ) (-1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152421.P17047274287751602582

namespace A152421

/-- `C((n+1)², ∑[-∑{d}[n+1, or(#, -1)]])` -/
def P17047274287751602582.Spec : Prop :=
  ∀ n, (P17047274287751602582.a n : ℤ) = A152421 (n + 1)

end A152421

/-!
# A152422: Decimal expansion of (sqrt(3)-1)/2.

The programs for A152422, there is no canonical definition to state claims against.
-/

/-! ## A152422.P4359314602558837206

`A332133(n+1)`
-/

namespace A152422.P4359314602558837206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332133 (n + 1 + 1)

end

end A152422.P4359314602558837206

/-! ## A152422.P3759564279091627506

`A010527(n)%A040024(2*n)`
-/

namespace A152422.P3759564279091627506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010527 n) (A040024 (2 * n))

end

end A152422.P3759564279091627506

/-! ## A152422.P15227186898585485534

`A010527(n)-and(5, A040024(n))`
-/

namespace A152422.P15227186898585485534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010527 n - Int.land 5 (A040024 n)

end

end A152422.P15227186898585485534

/-! ## A152422.P5631075766440664948

`A332133(n)-Δ[-A332133(n)]`
-/

namespace A152422.P5631075766440664948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A332133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332133 (n + 1) - (f1 (n + 1) - f1 n)

end

end A152422.P5631075766440664948

/-! ## A152422.P6406004543900886317

`A010527(n)-A152623(n+1)`
-/

namespace A152422.P6406004543900886317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010527 n - A152623 (n + 1 + 1)

end

end A152422.P6406004543900886317

/-!
# A152423: A variation of the Josephus problem, removing every other person, starting with person 1; a(n) is the last person remaining.

The programs for A152423, the canonical program `A152423.P14552775344353527223` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152423 has offset 1).

The definition of A152423 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152423.P14552775344353527223

`2*(n+1)-2^ceil(log2(n+1))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152423

/-- `2*(n+1)-2^ceil(log2(n+1))` -/
def P14552775344353527223.Spec : Prop :=
  ∀ n, P14552775344353527223.a n = (A152423 (n + 1) : ℚ)

end A152423

/-! ## A152423.P7489747132126024165

`∑[2-∏{p}[n, n*val(#, 2)]]`
-/

namespace A152423.P7489747132126024165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((∏ p ∈ Nat.primeFactors (f2 n), n * SequenceMachineLib.valuation p 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152423.P7489747132126024165

namespace A152423

/-- `∑[2-∏{p}[n, n*val(#, 2)]]` -/
def P7489747132126024165.Spec : Prop :=
  ∀ n, P7489747132126024165.a n = A152423 (n + 1)

end A152423

/-! ## A152423.P2154161743232806024

`∑[2-∏{p}[n, n*C(2, #)]]`
-/

namespace A152423.P2154161743232806024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((∏ p ∈ Nat.primeFactors (f2 n), n * Nat.choose 2 p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152423.P2154161743232806024

namespace A152423

/-- `∑[2-∏{p}[n, n*C(2, #)]]` -/
def P2154161743232806024.Spec : Prop :=
  ∀ n, P2154161743232806024.a n = A152423 (n + 1)

end A152423

/-! ## A152423.P13926611250914220423

`-xor(-2, and(2*n, a(n-1)))` with `a(0)=1`
-/

namespace A152423.P13926611250914220423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -Int.xor (-2) (Int.land (2 * n : ℤ) (a (n - 1)))

end

end A152423.P13926611250914220423

namespace A152423

/-- `-xor(-2, and(2*n, a(n-1)))` -/
def P13926611250914220423.Spec : Prop :=
  ∀ n, P13926611250914220423.a n = A152423 (n + 1)

end A152423

/-! ## A152423.P12864659288739910777

`abs(Δ[n²]%(2^ceil(log2(n+1)))+1)`
-/

namespace A152423.P12864659288739910777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))) + 1|

end

end A152423.P12864659288739910777

namespace A152423

/-- `abs(Δ[n²]%(2^ceil(log2(n+1)))+1)` -/
def P12864659288739910777.Spec : Prop :=
  ∀ n, P12864659288739910777.a n = A152423 (n + 1)

end A152423

/-! ## A152423.P14774254285651849165

`(Δ[n²]-2^ceil(log2(n+1))+1)%(n+2)`
-/

namespace A152423.P14774254285651849165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) - (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) + 1)) (n + 2 : ℤ)

end

end A152423.P14774254285651849165

namespace A152423

/-- `(Δ[n²]-2^ceil(log2(n+1))+1)%(n+2)` -/
def P14774254285651849165.Spec : Prop :=
  ∀ n, P14774254285651849165.a n = A152423 (n + 1)

end A152423

/-! ## A152423.P11162452596764863061

`∑[n+1-A153151(n)]`
-/

namespace A152423.P11162452596764863061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A153151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152423.P11162452596764863061

namespace A152423

/-- `∑[n+1-A153151(n)]` -/
def P11162452596764863061.Spec : Prop :=
  ∀ n, P11162452596764863061.a n = A152423 (n + 1)

end A152423

/-! ## A152423.P5244561935391764787

`A015906(A006257(n))`
-/

namespace A152423.P5244561935391764787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (A006257 n).toNat

end

end A152423.P5244561935391764787

namespace A152423

/-- `A015906(A006257(n))` -/
def P5244561935391764787.Spec : Prop :=
  ∀ n, P5244561935391764787.a n = A152423 (n + 1)

end A152423

/-! ## A152423.P4177085092688498953

`A281589(A345401(n))`
-/

namespace A152423.P4177085092688498953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (A345401 n).toNat

end

end A152423.P4177085092688498953

namespace A152423

/-- `A281589(A345401(n))` -/
def P4177085092688498953.Spec : Prop :=
  ∀ n, P4177085092688498953.a n = A152423 (n + 1)

end A152423

/-! ## A152423.P13924432324073281681

`A110963(A256251(n)+1)`
-/

namespace A152423.P13924432324073281681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (A256251 n + 1).toNat

end

end A152423.P13924432324073281681

namespace A152423

/-- `A110963(A256251(n)+1)` -/
def P13924432324073281681.Spec : Prop :=
  ∀ n, P13924432324073281681.a n = A152423 (n + 1)

end A152423

/-! ## A152423.P7772454237592987658

`∑[2-A048298(A028310(n))]`
-/

namespace A152423.P7772454237592987658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A048298 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152423.P7772454237592987658

namespace A152423

/-- `∑[2-A048298(A028310(n))]` -/
def P7772454237592987658.Spec : Prop :=
  ∀ n, P7772454237592987658.a n = A152423 (n + 1)

end A152423

/-! ## A152423.P15829431224866575250

`A008619(2*A006257(n))`
-/

namespace A152423.P15829431224866575250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A006257 n).toNat

end

end A152423.P15829431224866575250

namespace A152423

/-- `A008619(2*A006257(n))` -/
def P15829431224866575250.Spec : Prop :=
  ∀ n, P15829431224866575250.a n = A152423 (n + 1)

end A152423

/-! ## A152423.P13031328687216198309

`A028242(2*A006257(n))`
-/

namespace A152423.P13031328687216198309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A006257 n).toNat

end

end A152423.P13031328687216198309

namespace A152423

/-- `A028242(2*A006257(n))` -/
def P13031328687216198309.Spec : Prop :=
  ∀ n, P13031328687216198309.a n = A152423 (n + 1)

end A152423

/-! ## A152423.P11989369990289432690

`A220466(A006257(2*n+1))`
-/

namespace A152423.P11989369990289432690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220466 (A006257 (2 * n + 1)).toNat

end

end A152423.P11989369990289432690

namespace A152423

/-- `A220466(A006257(2*n+1))` -/
def P11989369990289432690.Spec : Prop :=
  ∀ n, P11989369990289432690.a n = A152423 (n + 1)

end A152423

/-! ## A152423.P13243220486538468203

`A225381(A006257(n+1+n))`
-/

namespace A152423.P13243220486538468203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225381 (A006257 (n + 1 + n)).toNat

end

end A152423.P13243220486538468203

namespace A152423

/-- `A225381(A006257(n+1+n))` -/
def P13243220486538468203.Spec : Prop :=
  ∀ n, P13243220486538468203.a n = A152423 (n + 1)

end A152423

/-! ## A152423.P13382113144325951804

`A062050(Δ[n²])`
-/

namespace A152423.P13382113144325951804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A152423.P13382113144325951804

namespace A152423

/-- `A062050(Δ[n²])` -/
def P13382113144325951804.Spec : Prop :=
  ∀ n, P13382113144325951804.a n = A152423 (n + 1)

end A152423

/-! ## A152423.P13518019481037940510

`A060802(A053642(2*n+1))`
-/

namespace A152423.P13518019481037940510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060802 (A053642 (2 * n + 1)).toNat

end

end A152423.P13518019481037940510

namespace A152423

/-- `A060802(A053642(2*n+1))` -/
def P13518019481037940510.Spec : Prop :=
  ∀ n, P13518019481037940510.a n = A152423 (n + 1)

end A152423

/-! ## A152423.P14593152152296083308

`filter[A062050(2*n+1), A135528(#)]`
-/

namespace A152423.P14593152152296083308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A152423.P14593152152296083308

namespace A152423

/-- `filter[A062050(2*n+1), A135528(#)]` -/
def P14593152152296083308.Spec : Prop :=
  ∀ n, P14593152152296083308.a n = A152423 (n + 1)

end A152423

/-! ## A152423.P8940051810325220464

`filter[A062050(2*n+1), A266591(#)]`
-/

namespace A152423.P8940051810325220464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A152423.P8940051810325220464

namespace A152423

/-- `filter[A062050(2*n+1), A266591(#)]` -/
def P8940051810325220464.Spec : Prop :=
  ∀ n, P8940051810325220464.a n = A152423 (n + 1)

end A152423

/-! ## A152423.P5900669023135168737

`filter[A062050(2*n+1), A267773(#)]`
-/

namespace A152423.P5900669023135168737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267773 (f1 j).toNat = 1) n)

end

end A152423.P5900669023135168737

namespace A152423

/-- `filter[A062050(2*n+1), A267773(#)]` -/
def P5900669023135168737.Spec : Prop :=
  ∀ n, P5900669023135168737.a n = A152423 (n + 1)

end A152423

/-!
# A152426: Primes that have both prime digits (2,3,5,7) and nonprime digits (0,1,4,6,8,9).

The programs for A152426, there is no canonical definition to state claims against.
-/

/-! ## A152426.P5840530585230817895

`∩[A179336(n+1), A215927(n+1)]`
-/

namespace A152426.P5840530585230817895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152426.P5840530585230817895

/-! ## A152426.P991057944507088800

`∩[A118950(n+1), A215927(n+1)]`
-/

namespace A152426.P991057944507088800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152426.P991057944507088800

/-! ## A152426.P17789615895735878850

`∩[A179336(n+1), A365471(n+1)]`
-/

namespace A152426.P17789615895735878850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152426.P17789615895735878850

/-! ## A152426.P9054468952612244927

`A175386(A152427(n+1))`
-/

namespace A152426.P9054468952612244927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175386 (A152427 (n + 1)).toNat

end

end A152426.P9054468952612244927

/-! ## A152426.P14027031455680112794

`∩[A090417(n+1), A152427(n+1)]`
-/

namespace A152426.P14027031455680112794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152426.P14027031455680112794

/-!
# A152428: Number of binary digits in (2^n)!.

The programs for A152428, there is no canonical definition to state claims against.
-/

/-! ## A152428.P8707182499462854154

`A072831(2^n)`
-/

namespace A152428.P8707182499462854154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072831 (2 ^ n)

end

end A152428.P8707182499462854154

/-! ## A152428.P7718972847262843586

`A067850(2^n)+1`
-/

namespace A152428.P7718972847262843586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067850 (2 ^ n) + 1

end

end A152428.P7718972847262843586

/-! ## A152428.P1128186270745110542

`A003070(2^n)+C(n, n²)`
-/

namespace A152428.P1128186270745110542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003070 (2 ^ n) + (Nat.choose n (n ^ 2) : ℤ)

end

end A152428.P1128186270745110542

/-! ## A152428.P4368985348228660575

`2^n+A055529(2^n)-1`
-/

namespace A152428.P4368985348228660575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (A055529 (2 ^ n) - 1)

end

end A152428.P4368985348228660575

/-! ## A152428.P12621805632969744289

`record[A072831(A055248(n))]`
-/

namespace A152428.P12621805632969744289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072831 (A055248 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152428.P12621805632969744289

/-!
# A152429: a(n) = (11^n + 5^n)/2.

The programs for A152429, the canonical program `A152429.P4622419810174685208` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152429 has offset 0).

The definition of A152429 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11^n+5^n)/2` (program `A152429.P13101760315417293186`, by `A152429.P13101760315417293186.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152429.P13101760315417293186

`(11^n+5^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152429.P13101760315417293186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 ^ n + 5 ^ n : ℚ) / 2

end

end A152429.P13101760315417293186

namespace A152429

/-- `(11^n+5^n)/2` -/
def P13101760315417293186.Spec : Prop :=
  ∀ n, P13101760315417293186.a n = (A152429 n : ℚ)

theorem P13101760315417293186.correct : P13101760315417293186.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A152429, Nat.add_sub_cancel, A152429.P13101760315417293186.a, A152429.P4622419810174685208.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A152429, Nat.add_sub_cancel, A152429.P13101760315417293186.a, A152429.P4622419810174685208.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A152429

/-! ## A152429.P4622419810174685208

`16*a(n-1)-55*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152429

/-- `16*a(n-1)-55*a(n-2)` -/
def P4622419810174685208.Spec : Prop :=
  ∀ n, P4622419810174685208.a n = A152429 n

theorem P4622419810174685208.correct : P4622419810174685208.Spec := by
  intro n
  simp only [A152429]

end A152429

/-! ## A152429.P13735627017480238271

`ceil(A155638(n)/2)`
-/

namespace A152429.P13735627017480238271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155638 n : ℚ) / 2⌉

end

end A152429.P13735627017480238271

namespace A152429

/-- `ceil(A155638(n)/2)` -/
def P13735627017480238271.Spec : Prop :=
  ∀ n, P13735627017480238271.a n = A152429 n

end A152429

/-! ## A152429.P6017027002255168939

`A152106(n)-A081200(n)`
-/

namespace A152429.P6017027002255168939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152106 n - A081200 n

end

end A152429.P6017027002255168939

namespace A152429

/-- `A152106(n)-A081200(n)` -/
def P6017027002255168939.Spec : Prop :=
  ∀ n, P6017027002255168939.a n = A152429 n

end A152429

/-! ## A152429.P2454556251580248318

`A121177(n+1)+A034659(n)`
-/

namespace A152429.P2454556251580248318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121177 (n + 1) + A034659 n

end

end A152429.P2454556251580248318

namespace A152429

/-- `A121177(n+1)+A034659(n)` -/
def P2454556251580248318.Spec : Prop :=
  ∀ n, P2454556251580248318.a n = A152429 n

end A152429

/-! ## A152429.P11026679935314658568

`ceil((A155665(n)-A191468(n))/2)`
-/

namespace A152429.P11026679935314658568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155665 n - A191468 n : ℚ) / 2⌉

end

end A152429.P11026679935314658568

namespace A152429

/-- `ceil((A155665(n)-A191468(n))/2)` -/
def P11026679935314658568.Spec : Prop :=
  ∀ n, P11026679935314658568.a n = A152429 n

end A152429

/-! ## A152429.P4384390490820876160

`A081188(n)+A081192(n)-A081190(n)`
-/

namespace A152429.P4384390490820876160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081188 n + (A081192 n - A081190 n)

end

end A152429.P4384390490820876160

namespace A152429

/-- `A081188(n)+A081192(n)-A081190(n)` -/
def P4384390490820876160.Spec : Prop :=
  ∀ n, P4384390490820876160.a n = A152429 n

end A152429

/-!
# A152430: Irregular triangle read by rows, giving actual sums arising in A166709.

The programs for A152430, there is no canonical definition to state claims against.
-/

/-! ## A152430.P17706852479360942004

`A090973(8^A262678(n))`
-/

namespace A152430.P17706852479360942004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090973 (SequenceMachineLib.roundAway ((8 : ℚ) ^ (A262678 n : ℤ))).toNat

end

end A152430.P17706852479360942004

/-! ## A152430.P14046422022539270135

`A257993(A323391(2*(n+1)))+A190429(A071797(n+1))`
-/

namespace A152430.P14046422022539270135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A323391 (2 * (n + 1))).toNat + A190429 (A071797 (n + 1)).toNat

end

end A152430.P14046422022539270135

/-!
# A152431: Eigentriangle, row sums = A000110, the Bell numbers.

The programs for A152431, there is no canonical definition to state claims against.
-/

/-! ## A152431.P16413650187946400657

`A192438(A143965(n))`
-/

namespace A152431.P16413650187946400657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192438 (A143965 n).toNat

end

end A152431.P16413650187946400657

/-! ## A152431.P14221393034451203745

`A187829(A143965(n))%A139582(n)`
-/

namespace A152431.P14221393034451203745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187829 (A143965 n).toNat) (A139582 n)

end

end A152431.P14221393034451203745

/-!
# A152433: Triangle read by rows, A000012^(-1) * A152431.

The programs for A152433, there is no canonical definition to state claims against.
-/

/-! ## A152433.P16601390613209280492

`A329362(A277004(n))^A074295(n+5)`
-/

namespace A152433.P16601390613209280492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329362 (A277004 n).toNat : ℚ) ^ (A074295 (n + 5) : ℤ)

end

end A152433.P16601390613209280492

/-!
# A152434: Triangle read by rows, A051731 * (A003238 * 0^(n-k)).

The programs for A152434, there is no canonical definition to state claims against.
-/

/-! ## A152434.P16780117432648931184

`A143810(A015930(n)+n)`
-/

namespace A152434.P16780117432648931184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143810 (A015930 n + (n : ℤ)).toNat

end

end A152434.P16780117432648931184

/-! ## A152434.P2370844295561257989

`A143810(∑[1-char[A163300(3*n+2)²]])`
-/

namespace A152434.P2370844295561257989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (3 * n + 2) ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143810 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152434.P2370844295561257989

/-! ## A152434.P11427308416006855659

`A143810(∑[A098725(A253641(n))])`
-/

namespace A152434.P11427308416006855659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 (A253641 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143810 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152434.P11427308416006855659

/-! ## A152434.P2030040419007167737

`C(A143810(n+1), A143532(n)!)`
-/

namespace A152434.P2030040419007167737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A143810 (n + 1)).toNat (Nat.factorial (A143532 n).toNat)

end

end A152434.P2030040419007167737

/-!
# A152435: a(n) = (11^n - 1)/(5*2^(3 - 2*(n mod 2))).

The programs for A152435, the canonical program `A152435.P4237484060888688777` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152435 has offset 0).

The definition of A152435 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152435.P4237484060888688777

`(11^n-1)/(5*(3*(-1)^n+5))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152435

/-- `(11^n-1)/(5*(3*(-1)^n+5))` -/
def P4237484060888688777.Spec : Prop :=
  ∀ n, P4237484060888688777.a n = (A152435 n : ℚ)

end A152435

/-! ## A152435.P9043994780178854722

`floor(∑[A001020(n)]/A040465(n))`
-/

namespace A152435.P9043994780178854722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A040465 n : ℚ)⌋

end

end A152435.P9043994780178854722

namespace A152435

/-- `floor(∑[A001020(n)]/A040465(n))` -/
def P9043994780178854722.Spec : Prop :=
  ∀ n, P9043994780178854722.a n = A152435 n

end A152435

/-!
# A152436: a(n) = (13^n - 1)/(3*2^(3 - (n mod 2))).

The programs for A152436, the canonical program `A152436.P6501730669138673355` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152436 has offset 0).

The definition of A152436 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152436.P6501730669138673355

`170*a(n-2)-169*a(n-4)` with `a(0)=0, a(1)=1, a(2)=7, a(3)=183`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152436

/-- `170*a(n-2)-169*a(n-4)` -/
def P6501730669138673355.Spec : Prop :=
  ∀ n, P6501730669138673355.a n = A152436 n

theorem P6501730669138673355.correct : P6501730669138673355.Spec := by
  intro n
  simp only [A152436]

end A152436

/-! ## A152436.P16468248180135347674

`(13^n-1)*(3-(-1)^n)/48`
-/

namespace A152436.P16468248180135347674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((13 ^ n : ℤ) - 1) * (3 - (-1) ^ n) : ℚ) / 48

end

end A152436.P16468248180135347674

namespace A152436

/-- `(13^n-1)*(3-(-1)^n)/48` -/
def P16468248180135347674.Spec : Prop :=
  ∀ n, P16468248180135347674.a n = (A152436 n : ℚ)

theorem P16468248180135347674.correct : P16468248180135347674.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A152436, Nat.add_sub_cancel, A152436.P16468248180135347674.a, A152436.P6501730669138673355.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A152436, Nat.add_sub_cancel, A152436.P16468248180135347674.a, A152436.P6501730669138673355.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A152436

/-!
# A152437: (17^n - 1)/(2^(5 - (n % 2))).

The programs for A152437, the canonical program `A152437.P8709001470442739968` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152437 has offset 0).

The definition of A152437 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152437.P8709001470442739968

`290*a(n-2)-289*a(n-4)` with `a(0)=0, a(1)=1, a(2)=9, a(3)=307`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152437

/-- `290*a(n-2)-289*a(n-4)` -/
def P8709001470442739968.Spec : Prop :=
  ∀ n, P8709001470442739968.a n = A152437 n

theorem P8709001470442739968.correct : P8709001470442739968.Spec := by
  intro n
  simp only [A152437]

end A152437

/-! ## A152437.P7386225107064653845

`(17^n-1)/2^(5-n%2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152437.P7386225107064653845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((17 ^ n : ℤ) - 1 : ℚ) / (2 : ℚ) ^ (5 - ((n % 2 : ℕ) : ℤ) : ℤ)

end

end A152437.P7386225107064653845

namespace A152437

/-- `(17^n-1)/2^(5-n%2)` -/
def P7386225107064653845.Spec : Prop :=
  ∀ n, P7386225107064653845.a n = (A152437 n : ℚ)

end A152437

/-!
# A152438: a(n) = (19^n - 1)/(9*2^(3 - 2*(n mod 2))).

The programs for A152438, the canonical program `A152438.P17494060453172055652` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152438 has offset 0).

The definition of A152438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152438.P17494060453172055652

`(19^n-1)/(9*2^(3-2*n%2))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152438

/-- `(19^n-1)/(9*2^(3-2*n%2))` -/
def P17494060453172055652.Spec : Prop :=
  ∀ n, P17494060453172055652.a n = (A152438 n : ℚ)

end A152438

/-! ## A152438.P7658763499470949854

`A218722(n)/gcd(2, n)²`
-/

namespace A152438.P7658763499470949854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218722 n : ℚ) / (Nat.gcd 2 n ^ 2 : ℚ)

end

end A152438.P7658763499470949854

namespace A152438

/-- `A218722(n)/gcd(2, n)²` -/
def P7658763499470949854.Spec : Prop :=
  ∀ n, P7658763499470949854.a n = (A152438 n : ℚ)

end A152438

/-! ## A152438.P3339386664812793885

`A218722(n)/A040001(n)²`
-/

namespace A152438.P3339386664812793885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218722 n : ℚ) / (A040001 n ^ 2 : ℚ)

end

end A152438.P3339386664812793885

namespace A152438

/-- `A218722(n)/A040001(n)²` -/
def P3339386664812793885.Spec : Prop :=
  ∀ n, P3339386664812793885.a n = (A152438 n : ℚ)

end A152438

/-! ## A152438.P15204395644444415651

`A218722(n)/gcd(4, A084639(n))`
-/

namespace A152438.P15204395644444415651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218722 n : ℚ) / (Int.gcd 4 (A084639 n) : ℚ)

end

end A152438.P15204395644444415651

namespace A152438

/-- `A218722(n)/gcd(4, A084639(n))` -/
def P15204395644444415651.Spec : Prop :=
  ∀ n, P15204395644444415651.a n = (A152438 n : ℚ)

end A152438

/-! ## A152438.P7700999408747296640

`A218722(n)/A168361(n+1)²`
-/

namespace A152438.P7700999408747296640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218722 n : ℚ) / (A168361 (n + 1) ^ 2 : ℚ)

end

end A152438.P7700999408747296640

namespace A152438

/-- `A218722(n)/A168361(n+1)²` -/
def P7700999408747296640.Spec : Prop :=
  ∀ n, P7700999408747296640.a n = (A152438 n : ℚ)

end A152438

/-!
# A152440: Riordan matrix (1/(1-x-x^2),x/(1-x-x^2)^2).

The programs for A152440, there is no canonical definition to state claims against.
-/

/-! ## A152440.P6443943392731794024

`A037027(A245300(n)+A002262(n))`
-/

namespace A152440.P6443943392731794024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A245300 n + A002262 n).toNat

end

end A152440.P6443943392731794024

/-! ## A152440.P2342325992785692757

`A038137(A245300(n)+A114327(n))`
-/

namespace A152440.P2342325992785692757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (A245300 n + A114327 n).toNat

end

end A152440.P2342325992785692757

/-! ## A152440.P12699741167836889575

`A037027(A002260(n+1)+A245300(n)-1)`
-/

namespace A152440.P12699741167836889575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A002260 (n + 1) + (A245300 n - 1)).toNat

end

end A152440.P12699741167836889575

/-!
# A152442: n is included if the largest divisor of n that is coprime to d(n) is a composite, where d(n) is the number of divisors of n.

The programs for A152442, the canonical program `A152442.P14276229364845082290` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152442 has offset 1).

The definition of A152442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152442.P14276229364845082290

`lt[2, A000005(A137926(n+1))]+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A152442

/-- `lt[2, A000005(A137926(n+1))]+1` -/
def P14276229364845082290.Spec : Prop :=
  ∀ n, (P14276229364845082290.a n : ℤ) = A152442 (n + 1)

theorem P14276229364845082290.correct : P14276229364845082290.Spec := by
  intro n
  simp only [A152442, Nat.add_sub_cancel]

end A152442

/-! ## A152442.P247892185072771816

`lt[2, A128830(n+1)]+1`
-/

namespace A152442.P247892185072771816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128830 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A152442.P247892185072771816

namespace A152442

/-- `lt[2, A128830(n+1)]+1` -/
def P247892185072771816.Spec : Prop :=
  ∀ n, (P247892185072771816.a n : ℤ) = A152442 (n + 1)

end A152442

/-! ## A152442.P7927911638582093558

`lt[2, A128830(or(n, C(2, n)²))]`
-/

namespace A152442.P7927911638582093558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128830 (Nat.lor n (Nat.choose 2 n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A152442.P7927911638582093558

namespace A152442

/-- `lt[2, A128830(or(n, C(2, n)²))]` -/
def P7927911638582093558.Spec : Prop :=
  ∀ n, (P7927911638582093558.a n : ℤ) = A152442 (n + 1)

end A152442

/-! ## A152442.P8634469722025599783

`lt[2, A128830(A028310(n))]`
-/

namespace A152442.P8634469722025599783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128830 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A152442.P8634469722025599783

namespace A152442

/-- `lt[2, A128830(A028310(n))]` -/
def P8634469722025599783.Spec : Prop :=
  ∀ n, (P8634469722025599783.a n : ℤ) = A152442 (n + 1)

end A152442

/-! ## A152442.P13523131520629839874

`A020725(lt[2, A128830(n+1)])`
-/

namespace A152442.P13523131520629839874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A152442.P13523131520629839874

namespace A152442

/-- `A020725(lt[2, A128830(n+1)])` -/
def P13523131520629839874.Spec : Prop :=
  ∀ n, P13523131520629839874.a n = A152442 (n + 1)

end A152442

/-! ## A152442.P5620793001887558527

`lt[2, A128830(A000007(n)+n)]`
-/

namespace A152442.P5620793001887558527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128830 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A152442.P5620793001887558527

namespace A152442

/-- `lt[2, A128830(A000007(n)+n)]` -/
def P5620793001887558527.Spec : Prop :=
  ∀ n, (P5620793001887558527.a n : ℤ) = A152442 (n + 1)

end A152442

/-! ## A152442.P14338636999978919974

`lt[2, A001222(A137926(n+1)²)]+1`
-/

namespace A152442.P14338636999978919974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A137926 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A152442.P14338636999978919974

namespace A152442

/-- `lt[2, A001222(A137926(n+1)²)]+1` -/
def P14338636999978919974.Spec : Prop :=
  ∀ n, (P14338636999978919974.a n : ℤ) = A152442 (n + 1)

end A152442

/-!
# A152443: a(n) = the largest proper divisor of n that is coprime to d(n), where d(n) = the number of divisors of n.

The programs for A152443, there is no canonical definition to state claims against.
-/

/-! ## A152443.P7460899940468502975

`gcd(A083054(A291311(n)), A291327(n+2))`
-/

namespace A152443.P7460899940468502975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083054 (A291311 n).toNat) (A291327 (n + 2))

end

end A152443.P7460899940468502975

/-! ## A152443.P15051390969171675780

`gcd(A020725(A081363(n+1)), A210552(n+1))`
-/

namespace A152443.P15051390969171675780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020725 (A081363 (n + 1)).toNat) (A210552 (n + 1))

end

end A152443.P15051390969171675780

/-! ## A152443.P13138548319914709439

`gcd(A220466(A081363(n+1)), A220466(n+1))`
-/

namespace A152443.P13138548319914709439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A220466 (A081363 (n + 1)).toNat) (A220466 (n + 1))

end

end A152443.P13138548319914709439

/-! ## A152443.P7419795344075481561

`gcd(n+2, A128741(A128738(n)))`
-/

namespace A152443.P7419795344075481561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A128741 (A128738 n).toNat)

end

end A152443.P7419795344075481561

/-! ## A152443.P4226326765417078874

`A242112(n)^A056170(A206422(n+1))`
-/

namespace A152443.P4226326765417078874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242112 n : ℚ) ^ (A056170 (A206422 (n + 1)).toNat : ℤ)

end

end A152443.P4226326765417078874

/-!
# A152444: n is included if the largest proper divisor of n that is coprime to d(n) is a composite, where d(n) is the total number of divisors of n.

The programs for A152444, there is no canonical definition to state claims against.
-/

/-! ## A152444.P1398859890994128756

`∩[A033942(n+1), A152442(n+1)]`
-/

namespace A152444.P1398859890994128756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152444.P1398859890994128756

/-! ## A152444.P9108310610501584524

`∩[A100959(n+1), A152442(n+1)]`
-/

namespace A152444.P9108310610501584524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152444.P9108310610501584524

/-! ## A152444.P16588814698703357567

`∩[A111087(n+1), A152442(n+1)]`
-/

namespace A152444.P16588814698703357567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152444.P16588814698703357567

/-! ## A152444.P8819142800513363853

`∩[lt[2, A128830(n+1)]+1, A033942(n+1)]`
-/

namespace A152444.P8819142800513363853
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128830 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A152444.P8819142800513363853

/-! ## A152444.P10223176997335454003

`∩[lt[2, A128830(n+1)]+1, A111087(n+3)]`
-/

namespace A152444.P10223176997335454003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128830 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A152444.P10223176997335454003

/-!
# A152445: a(0) = a(1) = 1. For n >= 2, a(n) = the smallest prime >= a(n-1)*a(n-2).

The programs for A152445, there is no canonical definition to state claims against.
-/

/-! ## A152445.P9694124679304048013

`A151800(a(n-2)*a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A152445.P9694124679304048013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2] fun n a =>
  A151800 (a (n - 2) * a (n - 1)).toNat

end

end A152445.P9694124679304048013

/-! ## A152445.P12013786685937554232

`A151800(a(n-1)/a(n-2)^(-1)-1)` with `a(0)=1, a(1)=1`
-/

namespace A152445.P12013786685937554232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A151800 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) ^ (-1 : ℤ) - 1)).toNat

end

end A152445.P12013786685937554232

/-! ## A152445.P11040950917798556832

`A151800(a(n-2)/(2/a(n-1)-1/a(n-1))-1)` with `a(0)=1, a(1)=1`
-/

namespace A152445.P11040950917798556832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A151800 (SequenceMachineLib.roundAway ((a (n - 2) : ℚ) / (2 / (a (n - 1) : ℚ) - 1 / (a (n - 1) : ℚ)) - 1)).toNat

end

end A152445.P11040950917798556832

/-! ## A152445.P9498277741084095003

`A007918(a(n-1)*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A152445.P9498277741084095003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A007918 (a (n - 1) * a (n - 2)).toNat

end

end A152445.P9498277741084095003

/-!
# A152446: a(0) = 1. a(1) = 2. For n >= 2, a(n) = the largest prime <= a(n-1)*a(n-2).

The programs for A152446, there is no canonical definition to state claims against.
-/

/-! ## A152446.P10799555132001408006

`A000040(A000720(a(n-1)*a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A152446.P10799555132001408006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000040 (A000720 (a (n - 1) * a (n - 2)).toNat).toNat

end

end A152446.P10799555132001408006

/-! ## A152446.P16447377538847302147

`A000040(A000720(a(n-1)/a(n-2)^(-1)-1))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A152446.P16447377538847302147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  A000040 (A000720 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) ^ (-1 : ℤ) - 1)).toNat).toNat

end

end A152446.P16447377538847302147

/-! ## A152446.P11198313034058147897

`A007917(a(n-1)*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A152446.P11198313034058147897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A007917 (a (n - 1) * a (n - 2)).toNat

end

end A152446.P11198313034058147897

/-! ## A152446.P10520907488475243835

`A136548(a(n-1)*a(n-2))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A152446.P10520907488475243835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  A136548 (a (n - 1) * a (n - 2)).toNat

end

end A152446.P10520907488475243835

/-!
# A152448: a(0)=a(1)=1, a(2)=6, a(3)=11; a(n+4) = 10*a(n+2) - a(n).

The programs for A152448, the canonical program `A152448.P2458436825907061139` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152448 has offset 0).

The definition of A152448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152448.P7792415610791990515

`2*A080872(n)-A152450(n)`
-/

namespace A152448.P7792415610791990515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080872 n - A152450 n

end

end A152448.P7792415610791990515

namespace A152448

/-- `2*A080872(n)-A152450(n)` -/
def P7792415610791990515.Spec : Prop :=
  ∀ n, P7792415610791990515.a n = A152448 n

end A152448

/-! ## A152448.P2458436825907061139

`A122652(A004526(n))+A080873(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A152448

/-- `A122652(A004526(n))+A080873(n)` -/
def P2458436825907061139.Spec : Prop :=
  ∀ n, P2458436825907061139.a n = A152448 n

theorem P2458436825907061139.correct : P2458436825907061139.Spec := by
  intro n
  simp only [A152448]

end A152448

/-! ## A152448.P11957543088145490608

`A074061(n)%(A080873(n)+A077410(n))`
-/

namespace A152448.P11957543088145490608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074061 n) (A080873 n + A077410 n)

end

end A152448.P11957543088145490608

namespace A152448

/-- `A074061(n)%(A080873(n)+A077410(n))` -/
def P11957543088145490608.Spec : Prop :=
  ∀ n, P11957543088145490608.a n = A152448 n

end A152448

/-! ## A152448.P6425508721610847645

`A080873(n)+A142239(n)%A080872(n)`
-/

namespace A152448.P6425508721610847645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080873 n + Int.tmod (A142239 n) (A080872 n)

end

end A152448.P6425508721610847645

namespace A152448

/-- `A080873(n)+A142239(n)%A080872(n)` -/
def P6425508721610847645.Spec : Prop :=
  ∀ n, P6425508721610847645.a n = A152448 n

end A152448

/-! ## A152448.P5883528968618007620

`A080873(n)+Δ[A233450(n+1)]%A080872(n)`
-/

namespace A152448.P5883528968618007620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080873 n + Int.tmod (f1 (n + 1) - f1 n) (A080872 n)

end

end A152448.P5883528968618007620

namespace A152448

/-- `A080873(n)+Δ[A233450(n+1)]%A080872(n)` -/
def P5883528968618007620.Spec : Prop :=
  ∀ n, P5883528968618007620.a n = A152448 n

end A152448

/-!
# A152449: Primes of the form 2^j - 2^k + 1, where j > k >= 0.

The programs for A152449, there is no canonical definition to state claims against.
-/

/-! ## A152449.P15707012222446013110

`∩[A100724(n+1), A171987(n+1)]`
-/

namespace A152449.P15707012222446013110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152449.P15707012222446013110

/-! ## A152449.P17668409136846200076

`p?[A171987(n+1)]`
-/

namespace A152449.P17668409136846200076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152449.P17668409136846200076

/-! ## A152449.P10023987453781073199

`p?[A089633(n)+2]`
-/

namespace A152449.P10023987453781073199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152449.P10023987453781073199

/-! ## A152449.P1112030014053703037

`p?[record[A078446(n+1)]]`
-/

namespace A152449.P1112030014053703037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078446 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152449.P1112030014053703037

/-! ## A152449.P5105783755351515002

`p?[A023758(n+1)+1]`
-/

namespace A152449.P5105783755351515002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152449.P5105783755351515002

/-!
# A152450: a(0)=a(1)=1, a(2)=4, a(3)=7, a(n+4) = 10*a(n+2) - a(n).

The programs for A152450, the canonical program `A152450.P13297754985805905103` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152450 has offset 0).

The definition of A152450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152450.P13297754985805905103

`10*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152450

/-- `10*a(n-2)-a(n-4)` -/
def P13297754985805905103.Spec : Prop :=
  ∀ n, P13297754985805905103.a n = A152450 n

theorem P13297754985805905103.correct : P13297754985805905103.Spec := by
  intro n
  simp only [A152450]

end A152450

/-! ## A152450.P12145443716751846812

`2*A080872(n)-A152448(n)`
-/

namespace A152450.P12145443716751846812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080872 n - A152448 n

end

end A152450.P12145443716751846812

namespace A152450

/-- `2*A080872(n)-A152448(n)` -/
def P12145443716751846812.Spec : Prop :=
  ∀ n, P12145443716751846812.a n = A152450 n

end A152450

/-! ## A152450.P386857208902248496

`A080873(n)+A001078(A142150(n))`
-/

namespace A152450.P386857208902248496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080873 n + A001078 (A142150 n).toNat

end

end A152450.P386857208902248496

namespace A152450

/-- `A080873(n)+A001078(A142150(n))` -/
def P386857208902248496.Spec : Prop :=
  ∀ n, P386857208902248496.a n = A152450 n

end A152450

/-! ## A152450.P15656121128478394074

`A080872(abs(1-n))+A080872(n)-A080873(n)`
-/

namespace A152450.P15656121128478394074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 |1 - (n : ℤ)|.toNat + (A080872 n - A080873 n)

end

end A152450.P15656121128478394074

namespace A152450

/-- `A080872(abs(1-n))+A080872(n)-A080873(n)` -/
def P15656121128478394074.Spec : Prop :=
  ∀ n, P15656121128478394074.a n = A152450 n

end A152450

/-! ## A152450.P4563270973893964778

`A080872(n)-A142239(n)%A129445(n+1)`
-/

namespace A152450.P4563270973893964778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 n - Int.tmod (A142239 n) (A129445 (n + 1))

end

end A152450.P4563270973893964778

namespace A152450

/-- `A080872(n)-A142239(n)%A129445(n+1)` -/
def P4563270973893964778.Spec : Prop :=
  ∀ n, P4563270973893964778.a n = A152450 n

end A152450

/-!
# A152451: From every interval (2^(m-1), 2^m), we remove primes p for which 2^m-p is a prime; the sequence gives the remaining odd primes.

The programs for A152451, there is no canonical definition to state claims against.
-/

/-! ## A152451.P14516514337546407020

`p?[n*A110560(A035327(n))]`
-/

namespace A152451.P14516514337546407020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A110560 (A035327 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152451.P14516514337546407020

/-! ## A152451.P14083155036429680542

`p?[n*A049076(A035327(n)+1)]`
-/

namespace A152451.P14083155036429680542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A049076 (A035327 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152451.P14083155036429680542

/-! ## A152451.P13996696136365249593

`p?[n*A110560(A080079(n+1))]`
-/

namespace A152451.P13996696136365249593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A110560 (A080079 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152451.P13996696136365249593

/-! ## A152451.P3744876040740862066

`p?[A292438(A035327(n))+A237420(n)]`
-/

namespace A152451.P3744876040740862066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (A035327 n).toNat + A237420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152451.P3744876040740862066

/-! ## A152451.P709190316029712861

`p?[A079097(n)*A292438(A035327(n))]`
-/

namespace A152451.P709190316029712861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 n * A292438 (A035327 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152451.P709190316029712861

/-! ## A152451.P12758777227076720962

`p?[A131738(n*A292438(A035327(n)))]`
-/

namespace A152451.P12758777227076720962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 ((n : ℤ) * A292438 (A035327 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152451.P12758777227076720962

/-! ## A152451.P7221332022461010008

`p?[A131738(n)+A061397(A080079(n+1))]`
-/

namespace A152451.P7221332022461010008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n + A061397 (A080079 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152451.P7221332022461010008

/-! ## A152451.P7657145179195813119

`p?[A079097(n)*A292438(A080079(n+1))]`
-/

namespace A152451.P7657145179195813119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 n * A292438 (A080079 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152451.P7657145179195813119

/-! ## A152451.P11153101976075129171

`p?[A093178(n)-A010051(A003817(n)+1-n)]`
-/

namespace A152451.P11153101976075129171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n - A010051 (A003817 n + (1 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152451.P11153101976075129171

/-! ## A152451.P5039587366487071458

`p?[A061397(n+1)+A061397(A080079(n+1))²]`
-/

namespace A152451.P5039587366487071458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1) + A061397 (A080079 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152451.P5039587366487071458

/-!
# A152452: Records in A152235.

The programs for A152452, there is no canonical definition to state claims against.
-/

/-! ## A152452.P6339800985334005099

`record[A007913(A053212(n+1))]`
-/

namespace A152452.P6339800985334005099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A053212 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152452.P6339800985334005099

/-! ## A152452.P815771088620547559

`A007947(record[A007947(A053212(n+1))])`
-/

namespace A152452.P815771088620547559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A053212 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A152452.P815771088620547559

/-! ## A152452.P16849628507040823126

`record[A007947(A146288(n+1))]`
-/

namespace A152452.P16849628507040823126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A146288 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152452.P16849628507040823126

/-! ## A152452.P16447684672883997624

`A055231(record[A055231(A053212(n+1))])`
-/

namespace A152452.P16447684672883997624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A053212 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A152452.P16447684672883997624

/-! ## A152452.P11162913794155798684

`record[A007947(A175503(n+1))]`
-/

namespace A152452.P11162913794155798684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A175503 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152452.P11162913794155798684

/-!
# A152453: Where records occur in A152235.

The programs for A152453, there is no canonical definition to state claims against.
-/

/-! ## A152453.P8009938369721463738

`A005179(A152452(n+1))`
-/

namespace A152453.P8009938369721463738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A152452 (n + 1)).toNat

end

end A152453.P8009938369721463738

/-! ## A152453.P14401041421556259217

`filter[A343014(n+1), A323509(#)]`
-/

namespace A152453.P14401041421556259217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323509 (f1 j).toNat = 1) n)

end

end A152453.P14401041421556259217

/-! ## A152453.P9402713879747194904

`∩[A309096(n+1), A343014(n+1)]`
-/

namespace A152453.P9402713879747194904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152453.P9402713879747194904

/-! ## A152453.P1451008334121415980

`record[gcd(A190456(n+1), A330972(n+1))]`
-/

namespace A152453.P1451008334121415980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A190456 (n + 1)) (A330972 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152453.P1451008334121415980

/-!
# A152455: a(n) = minimal integer m such that there exists an m X m integer matrix of order n.

The programs for A152455, the canonical program `A152455.P5904217643679634782` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152455 has offset 1).

The definition of A152455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152455.P12131816394769586976

`A080737(n+1)+char[1]`
-/

namespace A152455.P12131816394769586976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080737 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A152455.P12131816394769586976

namespace A152455

/-- `A080737(n+1)+char[1]` -/
def P12131816394769586976.Spec : Prop :=
  ∀ n, P12131816394769586976.a n = A152455 (n + 1)

end A152455

/-! ## A152455.P7300518780610037689

`and(char[1]-2, A067240(n+1))`
-/

namespace A152455.P7300518780610037689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 2) (A067240 (n + 1))

end

end A152455.P7300518780610037689

namespace A152455

/-- `and(char[1]-2, A067240(n+1))` -/
def P7300518780610037689.Spec : Prop :=
  ∀ n, P7300518780610037689.a n = A152455 (n + 1)

end A152455

/-! ## A152455.P5904217643679634782

`xor(A063524(n), A080737(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A152455

/-- `xor(A063524(n), A080737(n+1))` -/
def P5904217643679634782.Spec : Prop :=
  ∀ n, P5904217643679634782.a n = A152455 (n + 1)

theorem P5904217643679634782.correct : P5904217643679634782.Spec := by
  intro n
  simp only [A152455, Nat.add_sub_cancel]

end A152455

/-! ## A152455.P7227562356045523833

`gcd(A061006(n+1), A080737(n+1))`
-/

namespace A152455.P7227562356045523833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061006 (n + 1)) (A080737 (n + 1))

end

end A152455.P7227562356045523833

namespace A152455

/-- `gcd(A061006(n+1), A080737(n+1))` -/
def P7227562356045523833.Spec : Prop :=
  ∀ n, (P7227562356045523833.a n : ℤ) = A152455 (n + 1)

end A152455

/-! ## A152455.P11752298801170427485

`and(A028310(A080737(n+1)), A057428(n))`
-/

namespace A152455.P11752298801170427485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028310 (A080737 (n + 1)).toNat) (A057428 n)

end

end A152455.P11752298801170427485

namespace A152455

/-- `and(A028310(A080737(n+1)), A057428(n))` -/
def P11752298801170427485.Spec : Prop :=
  ∀ n, P11752298801170427485.a n = A152455 (n + 1)

end A152455

/-! ## A152455.P12939947212178456075

`or(A010054(A000040(n+1)), A080737(n+1))`
-/

namespace A152455.P12939947212178456075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A000040 (n + 1)).toNat) (A080737 (n + 1))

end

end A152455.P12939947212178456075

namespace A152455

/-- `or(A010054(A000040(n+1)), A080737(n+1))` -/
def P12939947212178456075.Spec : Prop :=
  ∀ n, P12939947212178456075.a n = A152455 (n + 1)

end A152455

/-! ## A152455.P17001540483164341520

`or(A079978(A221858(n+1)), A080737(n+1))`
-/

namespace A152455.P17001540483164341520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079978 (A221858 (n + 1)).toNat) (A080737 (n + 1))

end

end A152455.P17001540483164341520

namespace A152455

/-- `or(A079978(A221858(n+1)), A080737(n+1))` -/
def P17001540483164341520.Spec : Prop :=
  ∀ n, P17001540483164341520.a n = A152455 (n + 1)

end A152455

/-! ## A152455.P18203085473929607625

`char[1]+and(A056453(n+1), A067240(n+1))`
-/

namespace A152455.P18203085473929607625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + Int.land (A056453 (n + 1)) (A067240 (n + 1))

end

end A152455.P18203085473929607625

namespace A152455

/-- `char[1]+and(A056453(n+1), A067240(n+1))` -/
def P18203085473929607625.Spec : Prop :=
  ∀ n, P18203085473929607625.a n = A152455 (n + 1)

end A152455

/-! ## A152455.P3078904855427628283

`and(A067240(n+1), A296965(n))`
-/

namespace A152455.P3078904855427628283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A067240 (n + 1)) (A296965 n)

end

end A152455.P3078904855427628283

namespace A152455

/-- `and(A067240(n+1), A296965(n))` -/
def P3078904855427628283.Spec : Prop :=
  ∀ n, P3078904855427628283.a n = A152455 (n + 1)

end A152455

/-! ## A152455.P6275684342957248380

`gcd(A080737(n+1), A119944(n))`
-/

namespace A152455.P6275684342957248380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080737 (n + 1)) (A119944 n)

end

end A152455.P6275684342957248380

namespace A152455

/-- `gcd(A080737(n+1), A119944(n))` -/
def P6275684342957248380.Spec : Prop :=
  ∀ n, (P6275684342957248380.a n : ℤ) = A152455 (n + 1)

end A152455

/-! ## A152455.P4358945908913346940

`A067240(n+1)-and(A087522(n)², A067240(n+1))`
-/

namespace A152455.P4358945908913346940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067240 (n + 1) - Int.land (A087522 n ^ 2) (A067240 (n + 1))

end

end A152455.P4358945908913346940

namespace A152455

/-- `A067240(n+1)-and(A087522(n)², A067240(n+1))` -/
def P4358945908913346940.Spec : Prop :=
  ∀ n, P4358945908913346940.a n = A152455 (n + 1)

end A152455

/-!
# A152456: a(n)=1*(n+2)!-2*(n+1)!-3*n!.

The programs for A152456, the canonical program `A152456.P12420800879529723471` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152456 has offset 0).

The definition of A152456 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)!-2*(n+1)!-3*n!` (program `A152456.P12420800879529723471`, by `A152456.P12420800879529723471.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152456.P12420800879529723471

`(n+2)!-2*(n+1)!-3*n!`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152456

/-- `(n+2)!-2*(n+1)!-3*n!` -/
def P12420800879529723471.Spec : Prop :=
  ∀ n, P12420800879529723471.a n = A152456 n

theorem P12420800879529723471.correct : P12420800879529723471.Spec := by
  intro n
  simp only [A152456]

end A152456

/-! ## A152456.P12226186546949096620

`1*(n+2)!-2*(n+1)!-3*n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152456.P12226186546949096620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 * Nat.factorial (n + 2) : ℤ) - (2 * Nat.factorial (n + 1) : ℤ) - (3 * Nat.factorial n : ℤ)

end

end A152456.P12226186546949096620

namespace A152456

/-- `1*(n+2)!-2*(n+1)!-3*n!` -/
def P12226186546949096620.Spec : Prop :=
  ∀ n, P12226186546949096620.a n = A152456 n

theorem P12226186546949096620.correct : P12226186546949096620.Spec := by
  intro n
  simp only [A152456, Nat.add_sub_cancel, A152456.P12226186546949096620.a, A152456.P12420800879529723471.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152456

/-! ## A152456.P8248120917883304701

`(∑[2*n]-3)*n!`
-/

namespace A152456.P8248120917883304701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3) * (Nat.factorial n : ℤ)

end

end A152456.P8248120917883304701

namespace A152456

/-- `(∑[2*n]-3)*n!` -/
def P8248120917883304701.Spec : Prop :=
  ∀ n, P8248120917883304701.a n = A152456 n

end A152456

/-! ## A152456.P3066252979864022515

`(n-3/(n+1))*∏[n+1]`
-/

namespace A152456.P3066252979864022515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) - 3 / (n + 1 : ℚ)) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A152456.P3066252979864022515

namespace A152456

/-- `(n-3/(n+1))*∏[n+1]` -/
def P3066252979864022515.Spec : Prop :=
  ∀ n, P3066252979864022515.a n = (A152456 n : ℚ)

end A152456

/-! ## A152456.P18282130256218690609

`lcm((n+1)!, Δ[n!])-A052560(n)`
-/

namespace A152456.P18282130256218690609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (Nat.factorial (n + 1) : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ) - A052560 n

end

end A152456.P18282130256218690609

namespace A152456

/-- `lcm((n+1)!, Δ[n!])-A052560(n)` -/
def P18282130256218690609.Spec : Prop :=
  ∀ n, P18282130256218690609.a n = A152456 n

end A152456

/-! ## A152456.P13192208005420024165

`A062119(n+1)-A052560(n)`
-/

namespace A152456.P13192208005420024165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062119 (n + 1) - A052560 n

end

end A152456.P13192208005420024165

namespace A152456

/-- `A062119(n+1)-A052560(n)` -/
def P13192208005420024165.Spec : Prop :=
  ∀ n, P13192208005420024165.a n = A152456 n

end A152456

/-! ## A152456.P17452119458933009975

`A001564(n)-4*A000142(n)`
-/

namespace A152456.P17452119458933009975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001564 n - 4 * A000142 n

end

end A152456.P17452119458933009975

namespace A152456

/-- `A001564(n)-4*A000142(n)` -/
def P17452119458933009975.Spec : Prop :=
  ∀ n, P17452119458933009975.a n = A152456 n

end A152456

/-! ## A152456.P16354575429945492860

`A052609(n+1)-A374649(n+2)`
-/

namespace A152456.P16354575429945492860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052609 (n + 1) - A374649 (n + 2)

end

end A152456.P16354575429945492860

namespace A152456

/-- `A052609(n+1)-A374649(n+2)` -/
def P16354575429945492860.Spec : Prop :=
  ∀ n, P16354575429945492860.a n = A152456 n

end A152456

/-! ## A152456.P4901716441923648860

`A213167(n+2)-2*A001048(n+1)`
-/

namespace A152456.P4901716441923648860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213167 (n + 2) - 2 * A001048 (n + 1)

end

end A152456.P4901716441923648860

namespace A152456

/-- `A213167(n+2)-2*A001048(n+1)` -/
def P4901716441923648860.Spec : Prop :=
  ∀ n, P4901716441923648860.a n = A152456 n

end A152456

/-! ## A152456.P3080705727012036156

`A001563(n+1)-(A052560(n)+A000142(n+1))`
-/

namespace A152456.P3080705727012036156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 (n + 1) - (A052560 n + A000142 (n + 1))

end

end A152456.P3080705727012036156

namespace A152456

/-- `A001563(n+1)-(A052560(n)+A000142(n+1))` -/
def P3080705727012036156.Spec : Prop :=
  ∀ n, P3080705727012036156.a n = A152456 n

end A152456

/-!
# A152457: Partial sums of A027444.

The programs for A152457, the canonical program `A152457.P6081965538509568734` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152457 has offset 0).

The definition of A152457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152457.P5123959008677508941

`n*(n+1)*(3*n²+7*n+8)/12`
-/

namespace A152457.P5123959008677508941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (3 * n ^ 2 + 7 * n + 8) : ℚ) / 12

end

end A152457.P5123959008677508941

namespace A152457

/-- `n*(n+1)*(3*n²+7*n+8)/12` -/
def P5123959008677508941.Spec : Prop :=
  ∀ n, P5123959008677508941.a n = (A152457 n : ℚ)

theorem P5123959008677508941.correct : P5123959008677508941.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A152457, Nat.add_sub_cancel, A152457.P5123959008677508941.a, A152457.P6081965538509568734.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A152457, Nat.add_sub_cancel, A152457.P5123959008677508941.a, A152457.P6081965538509568734.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A152457

/-! ## A152457.P6081965538509568734

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=17, a(3)=56, a(4)=140`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152457

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P6081965538509568734.Spec : Prop :=
  ∀ n, P6081965538509568734.a n = A152457 n

theorem P6081965538509568734.correct : P6081965538509568734.Spec := by
  intro n
  simp only [A152457]

end A152457

/-! ## A152457.P5929815798443798365

`∑[floor(n/Δ[atan(n)])]`
-/

namespace A152457.P5929815798443798365
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / (f2 (n + 1) - f2 n)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152457.P5929815798443798365

namespace A152457

/-- `∑[floor(n/Δ[atan(n)])]` -/
def P5929815798443798365.Spec : Prop :=
  ∀ n, P5929815798443798365.a n = A152457 n

end A152457

/-! ## A152457.P2603910847507981530

`∑[lcm(n+1, n²)]+∑[n]`
-/

namespace A152457.P2603910847507981530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A152457.P2603910847507981530

namespace A152457

/-- `∑[lcm(n+1, n²)]+∑[n]` -/
def P2603910847507981530.Spec : Prop :=
  ∀ n, (P2603910847507981530.a n : ℤ) = A152457 n

end A152457

/-! ## A152457.P10777992114999935015

`∑[∑[2*n]]+C(n+1, 2)²`
-/

namespace A152457.P10777992114999935015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 1) 2 ^ 2

end

end A152457.P10777992114999935015

namespace A152457

/-- `∑[∑[2*n]]+C(n+1, 2)²` -/
def P10777992114999935015.Spec : Prop :=
  ∀ n, (P10777992114999935015.a n : ℤ) = A152457 n

end A152457

/-! ## A152457.P11634606395463069584

`∑[∑[a(n-1)+2]]+∑[n]²` with `a(0)=0`
-/

namespace A152457.P11634606395463069584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

end

end A152457.P11634606395463069584

namespace A152457

/-- `∑[∑[a(n-1)+2]]+∑[n]²` -/
def P11634606395463069584.Spec : Prop :=
  ∀ n, (P11634606395463069584.a n : ℤ) = A152457 n

end A152457

/-! ## A152457.P11087786023452078931

`∑[n]²-∑[∑[a(n-1)-2]]` with `a(0)=0`
-/

namespace A152457.P11087786023452078931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f3 =>
  f3 (n - 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A152457.P11087786023452078931

namespace A152457

/-- `∑[n]²-∑[∑[a(n-1)-2]]` -/
def P11087786023452078931.Spec : Prop :=
  ∀ n, P11087786023452078931.a n = A152457 n

end A152457

/-! ## A152457.P2620607095072676399

`(n+1)*n²+a(n-1)+n` with `a(0)=0`
-/

namespace A152457.P2620607095072676399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1) * n ^ 2 + (a (n - 1) + n)

end

end A152457.P2620607095072676399

namespace A152457

/-- `(n+1)*n²+a(n-1)+n` -/
def P2620607095072676399.Spec : Prop :=
  ∀ n, (P2620607095072676399.a n : ℤ) = A152457 n

end A152457

/-! ## A152457.P15144588015530590312

`a(n-1)+n*(n*(n+1)+1)` with `a(0)=0`
-/

namespace A152457.P15144588015530590312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * (n * (n + 1) + 1)

end

end A152457.P15144588015530590312

namespace A152457

/-- `a(n-1)+n*(n*(n+1)+1)` -/
def P15144588015530590312.Spec : Prop :=
  ∀ n, (P15144588015530590312.a n : ℤ) = A152457 n

end A152457

/-! ## A152457.P16738675345910652790

`a(n-1)+(n+1)/n^(-2)+n` with `a(0)=0`
-/

namespace A152457.P16738675345910652790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n + 1 : ℚ) / (n : ℚ) ^ (-2 : ℤ) + (n : ℚ)

end

end A152457.P16738675345910652790

namespace A152457

/-- `a(n-1)+(n+1)/n^(-2)+n` -/
def P16738675345910652790.Spec : Prop :=
  ∀ n, P16738675345910652790.a n = (A152457 n : ℚ)

end A152457

/-! ## A152457.P5680595001046911131

`∑[A027444(n)]`
-/

namespace A152457.P5680595001046911131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152457.P5680595001046911131

namespace A152457

/-- `∑[A027444(n)]` -/
def P5680595001046911131.Spec : Prop :=
  ∀ n, P5680595001046911131.a n = A152457 n

end A152457

/-! ## A152457.P6654226517924459777

`∑[A053698(n)-1]`
-/

namespace A152457.P6654226517924459777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152457.P6654226517924459777

namespace A152457

/-- `∑[A053698(n)-1]` -/
def P6654226517924459777.Spec : Prop :=
  ∀ n, P6654226517924459777.a n = A152457 n

end A152457

/-! ## A152457.P1131452797998121845

`∑[A011379(n)+n]`
-/

namespace A152457.P1131452797998121845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152457.P1131452797998121845

namespace A152457

/-- `∑[A011379(n)+n]` -/
def P1131452797998121845.Spec : Prop :=
  ∀ n, P1131452797998121845.a n = A152457 n

end A152457

/-! ## A152457.P9248747862141383159

`A001621(n)+∑[n²]`
-/

namespace A152457.P9248747862141383159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001621 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A152457.P9248747862141383159

namespace A152457

/-- `A001621(n)+∑[n²]` -/
def P9248747862141383159.Spec : Prop :=
  ∀ n, P9248747862141383159.a n = A152457 n

end A152457

/-! ## A152457.P10738572206365524932

`∑[A034262(n)+n²]`
-/

namespace A152457.P10738572206365524932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152457.P10738572206365524932

namespace A152457

/-- `∑[A034262(n)+n²]` -/
def P10738572206365524932.Spec : Prop :=
  ∀ n, P10738572206365524932.a n = A152457 n

end A152457

/-! ## A152457.P14656577867564427554

`A176060(n)+∑[∑[n]]`
-/

namespace A152457.P14656577867564427554
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176060 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A152457.P14656577867564427554

namespace A152457

/-- `A176060(n)+∑[∑[n]]` -/
def P14656577867564427554.Spec : Prop :=
  ∀ n, P14656577867564427554.a n = A152457 n

end A152457

/-! ## A152457.P15913313197349706829

`∑[A188947(n+1)-2]`
-/

namespace A152457.P15913313197349706829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188947 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152457.P15913313197349706829

namespace A152457

/-- `∑[A188947(n+1)-2]` -/
def P15913313197349706829.Spec : Prop :=
  ∀ n, P15913313197349706829.a n = A152457 n

end A152457

/-! ## A152457.P10946396827171606203

`A153978(n+1)+∑[n]`
-/

namespace A152457.P10946396827171606203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153978 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A152457.P10946396827171606203

namespace A152457

/-- `A153978(n+1)+∑[n]` -/
def P10946396827171606203.Spec : Prop :=
  ∀ n, P10946396827171606203.a n = A152457 n

end A152457

/-! ## A152457.P3521752925357117429

`∑[A100705(n)-(n+1)]`
-/

namespace A152457.P3521752925357117429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100705 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152457.P3521752925357117429

namespace A152457

/-- `∑[A100705(n)-(n+1)]` -/
def P3521752925357117429.Spec : Prop :=
  ∀ n, P3521752925357117429.a n = A152457 n

end A152457

/-! ## A152457.P3607757137039895812

`∑[n*A002061(n+1)]`
-/

namespace A152457.P3607757137039895812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152457.P3607757137039895812

namespace A152457

/-- `∑[n*A002061(n+1)]` -/
def P3607757137039895812.Spec : Prop :=
  ∀ n, P3607757137039895812.a n = A152457 n

end A152457

/-!
# A152460: Primes p such that there exist positive integer k and prime q with p > q and 3^k = p + 2q or 3^k = q + 2p.

The programs for A152460, there is no canonical definition to state claims against.
-/

/-! ## A152460.P8721380930324814124

`A329191(comp[∑[n-2]]+1)`
-/

namespace A152460.P8721380930324814124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329191 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A152460.P8721380930324814124

/-! ## A152460.P1614028335508249185

`p?[A329191(A181133(n+1))]`
-/

namespace A152460.P1614028335508249185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329191 (A181133 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152460.P1614028335508249185

/-! ## A152460.P18379443673912814941

`record[or(A049310(n), A329191(n+1))]`
-/

namespace A152460.P18379443673912814941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049310 n) (A329191 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152460.P18379443673912814941

/-! ## A152460.P3875215076321189627

`record[or(A104975(n), A329191(n+1))]`
-/

namespace A152460.P3875215076321189627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A104975 n) (A329191 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152460.P3875215076321189627

/-! ## A152460.P14823523242621109422

`A124418(A204459(n))*A329191(A181133(n+1))`
-/

namespace A152460.P14823523242621109422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124418 (A204459 n).toNat * A329191 (A181133 (n + 1)).toNat

end

end A152460.P14823523242621109422

/-!
# A152461: Primes p such that there does not exist any positive integer k and prime q with p > q and 3^k = p + 2q or 3^k = q + 2p.

The programs for A152461, there is no canonical definition to state claims against.
-/

/-! ## A152461.P14180141275968723475

`p?[∑[A100661(A156349(2*n+1))]]`
-/

namespace A152461.P14180141275968723475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100661 (A156349 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152461.P14180141275968723475

/-!
# A152464: Number of n-digit bouncy numbers in which every pair of adjacent digits are distinct.

The programs for A152464, there is no canonical definition to state claims against.
-/

/-! ## A152464.P13119503996891368275

`char[A038722(n+1)+1]*A343462(n+1)`
-/

namespace A152464.P13119503996891368275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A343462 (n + 1)

end

end A152464.P13119503996891368275

/-! ## A152464.P12466610279041996276

`A060576(A008619(n))*A343462(n+1)`
-/

namespace A152464.P12466610279041996276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A008619 n).toNat * A343462 (n + 1)

end

end A152464.P12466610279041996276

/-! ## A152464.P6877182304364022048

`A000035(A039649(n+1))*A343462(n+1)`
-/

namespace A152464.P6877182304364022048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A039649 (n + 1)).toNat * A343462 (n + 1)

end

end A152464.P6877182304364022048

/-! ## A152464.P10307672012376637013

`A131576(A008578(n+1))*A343462(n+1)`
-/

namespace A152464.P10307672012376637013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (A008578 (n + 1)).toNat * A343462 (n + 1)

end

end A152464.P10307672012376637013

/-! ## A152464.P16959391130662124191

`A060576(A060576(n)+n)*A343462(n+1)`
-/

namespace A152464.P16959391130662124191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A060576 n + (n : ℤ)).toNat * A343462 (n + 1)

end

end A152464.P16959391130662124191

/-! ## A152464.P11627083479611943453

`A023532(A000040(2*n+1))*A343462(n+1)`
-/

namespace A152464.P11627083479611943453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A000040 (2 * n + 1)).toNat * A343462 (n + 1)

end

end A152464.P11627083479611943453

/-!
# A152466: a(1) = 252, a(n) is a(n-1) multiplied by the smallest prime factor of a(n-1)+1.

The programs for A152466, there is no canonical definition to state claims against.
-/

/-! ## A152466.P743879972177662801

`A242463(n+1)-1`
-/

namespace A152466.P743879972177662801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242463 (n + 1) - 1

end

end A152466.P743879972177662801

/-! ## A152466.P18037753284240642500

`xor(A007318(A000001(n)), A242463(n+1))`
-/

namespace A152466.P18037753284240642500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (A000001 n).toNat) (A242463 (n + 1))

end

end A152466.P18037753284240642500

/-! ## A152466.P8709009949621104470

`xor(A007318(A000096(n)), A242463(n+1))`
-/

namespace A152466.P8709009949621104470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (A000096 n).toNat) (A242463 (n + 1))

end

end A152466.P8709009949621104470

/-! ## A152466.P16697477172702400446

`xor(1, A242463(A242474(n+1)))`
-/

namespace A152466.P16697477172702400446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A242463 (A242474 (n + 1)).toNat)

end

end A152466.P16697477172702400446

/-! ## A152466.P11085523365155915457

`xor(1, A242463(A077168(n)))`
-/

namespace A152466.P11085523365155915457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A242463 (A077168 n).toNat)

end

end A152466.P11085523365155915457

/-!
# A152467: a(n) = floor(n/6).

The programs for A152467, the canonical program `A152467.P10403984330814261176` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152467 has offset 0).

The definition of A152467 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/6)` (program `A152467.P10403984330814261176`, by `A152467.P10403984330814261176.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152467.P10403984330814261176

`floor(n/6)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152467

/-- `floor(n/6)` -/
def P10403984330814261176.Spec : Prop :=
  ∀ n, P10403984330814261176.a n = A152467 n

theorem P10403984330814261176.correct : P10403984330814261176.Spec := by
  intro n
  simp only [A152467]

end A152467

/-! ## A152467.P10395066854579318912

`a(n-6)+1` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0`
-/

namespace A152467.P10395066854579318912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0] fun n a =>
  a (n - 6) + 1

end

end A152467.P10395066854579318912

namespace A152467

/-- `a(n-6)+1` -/
def P10395066854579318912.Spec : Prop :=
  ∀ n, (P10395066854579318912.a n : ℤ) = A152467 n

end A152467

/-! ## A152467.P13264943841861150428

`∑[val(∏{p}[n, #], 6)]`
-/

namespace A152467.P13264943841861150428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152467.P13264943841861150428

namespace A152467

/-- `∑[val(∏{p}[n, #], 6)]` -/
def P13264943841861150428.Spec : Prop :=
  ∀ n, (P13264943841861150428.a n : ℤ) = A152467 n

end A152467

/-! ## A152467.P11317193643838747269

`(n-n%6)/6`
-/

namespace A152467.P11317193643838747269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((n % 6 : ℕ) : ℤ) : ℚ) / 6

end

end A152467.P11317193643838747269

namespace A152467

/-- `(n-n%6)/6` -/
def P11317193643838747269.Spec : Prop :=
  ∀ n, P11317193643838747269.a n = (A152467 n : ℚ)

end A152467

/-! ## A152467.P3660946285660154409

`round(cos(2)+n/6)`
-/

namespace A152467.P3660946285660154409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (2 : ℝ) + ((n : ℚ) / 6 : ℝ))

end

end A152467.P3660946285660154409

namespace A152467

/-- `round(cos(2)+n/6)` -/
def P3660946285660154409.Spec : Prop :=
  ∀ n, P3660946285660154409.a n = A152467 n

end A152467

/-! ## A152467.P12134665969827720326

`ceil(cos(3)+n/6)`
-/

namespace A152467.P12134665969827720326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (3 : ℝ) + ((n : ℚ) / 6 : ℝ)⌉

end

end A152467.P12134665969827720326

namespace A152467

/-- `ceil(cos(3)+n/6)` -/
def P12134665969827720326.Spec : Prop :=
  ∀ n, P12134665969827720326.a n = A152467 n

end A152467

/-! ## A152467.P9029991561625884044

`ceil(n/6-sin(1))`
-/

namespace A152467.P9029991561625884044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 6 : ℝ) - Real.sin (1 : ℝ)⌉

end

end A152467.P9029991561625884044

namespace A152467

/-- `ceil(n/6-sin(1))` -/
def P9029991561625884044.Spec : Prop :=
  ∀ n, P9029991561625884044.a n = A152467 n

end A152467

/-! ## A152467.P451636220704751841

`round((tan(2)+n)/6)`
-/

namespace A152467.P451636220704751841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.tan (2 : ℝ) + (n : ℝ)) / 6)

end

end A152467.P451636220704751841

namespace A152467

/-- `round((tan(2)+n)/6)` -/
def P451636220704751841.Spec : Prop :=
  ∀ n, P451636220704751841.a n = A152467 n

end A152467

/-! ## A152467.P11968774839639736547

`ceil(sin(5)+n/6)`
-/

namespace A152467.P11968774839639736547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (5 : ℝ) + ((n : ℚ) / 6 : ℝ)⌉

end

end A152467.P11968774839639736547

namespace A152467

/-- `ceil(sin(5)+n/6)` -/
def P11968774839639736547.Spec : Prop :=
  ∀ n, P11968774839639736547.a n = A152467 n

end A152467

/-! ## A152467.P14379832407525556105

`ceil(n/6-cos(6))`
-/

namespace A152467.P14379832407525556105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 6 : ℝ) - Real.cos (6 : ℝ)⌉

end

end A152467.P14379832407525556105

namespace A152467

/-- `ceil(n/6-cos(6))` -/
def P14379832407525556105.Spec : Prop :=
  ∀ n, P14379832407525556105.a n = A152467 n

end A152467

/-! ## A152467.P14467721464343475097

`∑[char[lcm(6, n+1)]]`
-/

namespace A152467.P14467721464343475097
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152467.P14467721464343475097

namespace A152467

/-- `∑[char[lcm(6, n+1)]]` -/
def P14467721464343475097.Spec : Prop :=
  ∀ n, (P14467721464343475097.a n : ℤ) = A152467 n

end A152467

/-! ## A152467.P11693863717166430631

`ceil(n/6-tan(7))`
-/

namespace A152467.P11693863717166430631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 6 : ℝ) - Real.tan (7 : ℝ)⌉

end

end A152467.P11693863717166430631

namespace A152467

/-- `ceil(n/6-tan(7))` -/
def P11693863717166430631.Spec : Prop :=
  ∀ n, P11693863717166430631.a n = A152467 n

end A152467

/-! ## A152467.P16504432226013680228

`ceil(n/6-tanh(2))`
-/

namespace A152467.P16504432226013680228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 6 : ℝ) - Real.tanh (2 : ℝ)⌉

end

end A152467.P16504432226013680228

namespace A152467

/-- `ceil(n/6-tanh(2))` -/
def P16504432226013680228.Spec : Prop :=
  ∀ n, P16504432226013680228.a n = A152467 n

end A152467

/-! ## A152467.P2906040670937647911

`round(cot(2)+n/6)`
-/

namespace A152467.P2906040670937647911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 : ℝ) + ((n : ℚ) / 6 : ℝ))

end

end A152467.P2906040670937647911

namespace A152467

/-- `round(cot(2)+n/6)` -/
def P2906040670937647911.Spec : Prop :=
  ∀ n, P2906040670937647911.a n = A152467 n

end A152467

/-! ## A152467.P16684083041252588843

`round(n/6-sin(9))`
-/

namespace A152467.P16684083041252588843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℚ) / 6 : ℝ) - Real.sin (9 : ℝ))

end

end A152467.P16684083041252588843

namespace A152467

/-- `round(n/6-sin(9))` -/
def P16684083041252588843.Spec : Prop :=
  ∀ n, P16684083041252588843.a n = A152467 n

end A152467

/-! ## A152467.P4046814951900172110

`round(n/6-acot(2))`
-/

namespace A152467.P4046814951900172110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℚ) / 6 : ℝ) - SequenceMachineLib.acot (2 : ℝ))

end

end A152467.P4046814951900172110

namespace A152467

/-- `round(n/6-acot(2))` -/
def P4046814951900172110.Spec : Prop :=
  ∀ n, P4046814951900172110.a n = A152467 n

end A152467

/-! ## A152467.P10772010974988158423

`ceil(n/6-cot(4))`
-/

namespace A152467.P10772010974988158423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 6 : ℝ) - Real.cot (4 : ℝ)⌉

end

end A152467.P10772010974988158423

namespace A152467

/-- `ceil(n/6-cot(4))` -/
def P10772010974988158423.Spec : Prop :=
  ∀ n, P10772010974988158423.a n = A152467 n

end A152467

/-! ## A152467.P15460341915348727719

`round((n-cosh(ϕ))/6)`
-/

namespace A152467.P15460341915348727719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - Real.cosh Real.goldenRatio) / 6)

end

end A152467.P15460341915348727719

namespace A152467

/-- `round((n-cosh(ϕ))/6)` -/
def P15460341915348727719.Spec : Prop :=
  ∀ n, P15460341915348727719.a n = A152467 n

end A152467

/-! ## A152467.P6171602840799158669

`round((n-sinh(ϕ))/6)`
-/

namespace A152467.P6171602840799158669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - Real.sinh Real.goldenRatio) / 6)

end

end A152467.P6171602840799158669

namespace A152467

/-- `round((n-sinh(ϕ))/6)` -/
def P6171602840799158669.Spec : Prop :=
  ∀ n, P6171602840799158669.a n = A152467 n

end A152467

/-! ## A152467.P6740124095778616878

`ceil(or(1, n)/6)-1`
-/

namespace A152467.P6740124095778616878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 n : ℚ) / 6⌉ - 1

end

end A152467.P6740124095778616878

namespace A152467

/-- `ceil(or(1, n)/6)-1` -/
def P6740124095778616878.Spec : Prop :=
  ∀ n, P6740124095778616878.a n = A152467 n

end A152467

/-!
# A152468: Smallest of five consecutive primes whose sum is a prime.

The programs for A152468, the canonical program `A152468.P16510196203380355296` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152468 has offset 1).

The definition of A152468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152468.P16510196203380355296

`A000040(A288041(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A152468

/-- `A000040(A288041(n+1))` -/
def P16510196203380355296.Spec : Prop :=
  ∀ n, P16510196203380355296.a n = A152468 (n + 1)

theorem P16510196203380355296.correct : P16510196203380355296.Spec := by
  intro n
  simp only [A152468, Nat.add_sub_cancel]

end A152468

/-! ## A152468.P15440543112643397894

`A008578(A288041(n+1)+1)`
-/

namespace A152468.P15440543112643397894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A288041 (n + 1) + 1).toNat

end

end A152468.P15440543112643397894

namespace A152468

/-- `A008578(A288041(n+1)+1)` -/
def P15440543112643397894.Spec : Prop :=
  ∀ n, P15440543112643397894.a n = A152468 (n + 1)

end A152468

/-! ## A152468.P10548497051751891641

`A045344(A288041(n+1)-1)`
-/

namespace A152468.P10548497051751891641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A288041 (n + 1) - 1).toNat

end

end A152468.P10548497051751891641

namespace A152468

/-- `A045344(A288041(n+1)-1)` -/
def P10548497051751891641.Spec : Prop :=
  ∀ n, P10548497051751891641.a n = A152468 (n + 1)

end A152468

/-! ## A152468.P107505421270809289

`∑{d}[A288041(n+1), A007444(#)]`
-/

namespace A152468.P107505421270809289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A152468.P107505421270809289

namespace A152468

/-- `∑{d}[A288041(n+1), A007444(#)]` -/
def P107505421270809289.Spec : Prop :=
  ∀ n, P107505421270809289.a n = A152468 (n + 1)

end A152468

/-! ## A152468.P1783504676531482883

`p?[A005171(A034964(n+2))+A000040(n+2)]`
-/

namespace A152468.P1783504676531482883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A034964 (n + 2)).toNat + A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152468.P1783504676531482883

namespace A152468

/-- `p?[A005171(A034964(n+2))+A000040(n+2)]` -/
def P1783504676531482883.Spec : Prop :=
  ∀ n, P1783504676531482883.a n = A152468 (n + 1)

end A152468

/-! ## A152468.P13537794372658343165

`p?[comp[A228198(n+1)]]`
-/

namespace A152468.P13537794372658343165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228198 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A152468.P13537794372658343165

namespace A152468

/-- `p?[comp[A228198(n+1)]]` -/
def P13537794372658343165.Spec : Prop :=
  ∀ n, (P13537794372658343165.a n : ℤ) = A152468 (n + 1)

end A152468

/-! ## A152468.P14476660606253046671

`p?[A000040(n+1)*A046079(A034964(n+1))]`
-/

namespace A152468.P14476660606253046671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A046079 (A034964 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152468.P14476660606253046671

namespace A152468

/-- `p?[A000040(n+1)*A046079(A034964(n+1))]` -/
def P14476660606253046671.Spec : Prop :=
  ∀ n, P14476660606253046671.a n = A152468 (n + 1)

end A152468

/-! ## A152468.P14590878281659206043

`A045344(eq[1, A032742(A034964(n+1))])`
-/

namespace A152468.P14590878281659206043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A034964 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A152468.P14590878281659206043

namespace A152468

/-- `A045344(eq[1, A032742(A034964(n+1))])` -/
def P14590878281659206043.Spec : Prop :=
  ∀ n, P14590878281659206043.a n = A152468 (n + 1)

end A152468

/-!
# A152469: Second smallest of three consecutive primes whose sum is a prime.

The programs for A152469, there is no canonical definition to state claims against.
-/

/-! ## A152469.P16524706184418809132

`A045319(A072225(n+1))`
-/

namespace A152469.P16524706184418809132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A072225 (n + 1)).toNat

end

end A152469.P16524706184418809132

/-! ## A152469.P18027702528175670428

`A151800(A073681(n+1))`
-/

namespace A152469.P18027702528175670428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A073681 (n + 1)).toNat

end

end A152469.P18027702528175670428

/-! ## A152469.P15512768550467674926

`A000040(A072225(n+1)+1)`
-/

namespace A152469.P15512768550467674926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A072225 (n + 1) + 1).toNat

end

end A152469.P15512768550467674926

/-! ## A152469.P6181134964067643700

`A006005(A072225(n+1)+1)`
-/

namespace A152469.P6181134964067643700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A072225 (n + 1) + 1).toNat

end

end A152469.P6181134964067643700

/-! ## A152469.P17382524538039136529

`A004139(A072225(n+1)-1)`
-/

namespace A152469.P17382524538039136529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A072225 (n + 1) - 1).toNat

end

end A152469.P17382524538039136529

/-! ## A152469.P15764644873455575658

`A006093(A072225(n+1)+1)+1`
-/

namespace A152469.P15764644873455575658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A072225 (n + 1) + 1).toNat + 1

end

end A152469.P15764644873455575658

/-! ## A152469.P5605604096720043464

`A008864(A072225(n+1)+1)-1`
-/

namespace A152469.P5605604096720043464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A072225 (n + 1) + 1).toNat - 1

end

end A152469.P5605604096720043464

/-! ## A152469.P2767623919525295047

`A000040(eq[2, A248498(n+1)]+2)`
-/

namespace A152469.P2767623919525295047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A152469.P2767623919525295047

/-! ## A152469.P8159929263316684868

`∑{d}[A072225(n+1)+1, A007444(#)]`
-/

namespace A152469.P8159929263316684868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072225 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A152469.P8159929263316684868

/-! ## A152469.P9217076492602919289

`A000040(A000720(A073681(n+1))+1)`
-/

namespace A152469.P9217076492602919289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A073681 (n + 1)).toNat + 1).toNat

end

end A152469.P9217076492602919289

/-! ## A152469.P5321800261475963643

`A001043(A072225(n+1))-A073681(n+1)`
-/

namespace A152469.P5321800261475963643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (A072225 (n + 1)).toNat - A073681 (n + 1)

end

end A152469.P5321800261475963643

/-! ## A152469.P6235797831876533697

`A011974(A072225(n+1)+1)-A073681(n+1)`
-/

namespace A152469.P6235797831876533697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (A072225 (n + 1) + 1).toNat - A073681 (n + 1)

end

end A152469.P6235797831876533697

/-! ## A152469.P8751556176194824187

`A001043(A072225(n+1)+1)-A152470(n+1)`
-/

namespace A152469.P8751556176194824187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (A072225 (n + 1) + 1).toNat - A152470 (n + 1)

end

end A152469.P8751556176194824187

/-! ## A152469.P10622369455363250486

`A011974(A072225(n+1)+2)-A152470(n+1)`
-/

namespace A152469.P10622369455363250486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (A072225 (n + 1) + 2).toNat - A152470 (n + 1)

end

end A152469.P10622369455363250486

/-! ## A152469.P1223052924280287293

`A034962(n+1)-(A152470(n+1)+A073681(n+1))`
-/

namespace A152469.P1223052924280287293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034962 (n + 1) - (A152470 (n + 1) + A073681 (n + 1))

end

end A152469.P1223052924280287293

/-! ## A152469.P8207164045757051758

`A003961(2*A073681(n+1)-A073681(n+1))`
-/

namespace A152469.P8207164045757051758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (2 * A073681 (n + 1) - A073681 (n + 1)).toNat

end

end A152469.P8207164045757051758

/-! ## A152469.P11674892505987393986

`A064989(A152470(n+1))`
-/

namespace A152469.P11674892505987393986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A152470 (n + 1)).toNat

end

end A152469.P11674892505987393986

/-! ## A152469.P860189558931757946

`A033302(A152470(n+1)+1)`
-/

namespace A152469.P860189558931757946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033302 (A152470 (n + 1) + 1).toNat

end

end A152469.P860189558931757946

/-! ## A152469.P1336810815647822927

`A285727(2*A152470(n+1))`
-/

namespace A152469.P1336810815647822927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285727 (2 * A152470 (n + 1)).toNat

end

end A152469.P1336810815647822927

/-!
# A152470: Largest of three consecutive primes whose sum is a prime.

The programs for A152470, there is no canonical definition to state claims against.
-/

/-! ## A152470.P9133075676427387182

`A246400(A072225(n+1))`
-/

namespace A152470.P9133075676427387182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246400 (A072225 (n + 1)).toNat

end

end A152470.P9133075676427387182

/-! ## A152470.P7400320695371942235

`A045319(A072225(n+1)+1)`
-/

namespace A152470.P7400320695371942235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A072225 (n + 1) + 1).toNat

end

end A152470.P7400320695371942235

/-! ## A152470.P15435090933132792501

`A045344(A072225(n+1)+1)`
-/

namespace A152470.P15435090933132792501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A072225 (n + 1) + 1).toNat

end

end A152470.P15435090933132792501

/-! ## A152470.P2877258820833304760

`A000040(A072225(n+1)+2)`
-/

namespace A152470.P2877258820833304760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A072225 (n + 1) + 2).toNat

end

end A152470.P2877258820833304760

/-! ## A152470.P13294426831087353594

`A006005(A072225(n+1)+2)`
-/

namespace A152470.P13294426831087353594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A072225 (n + 1) + 2).toNat

end

end A152470.P13294426831087353594

/-! ## A152470.P16708973874747157675

`A006093(A072225(n+1)+2)+1`
-/

namespace A152470.P16708973874747157675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A072225 (n + 1) + 2).toNat + 1

end

end A152470.P16708973874747157675

/-! ## A152470.P1425691203293841025

`A008864(A072225(n+1)+2)-1`
-/

namespace A152470.P1425691203293841025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A072225 (n + 1) + 2).toNat - 1

end

end A152470.P1425691203293841025

/-! ## A152470.P11061270699651943223

`∑{d}[A072225(n+1)+2, A007444(#)]`
-/

namespace A152470.P11061270699651943223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072225 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A152470.P11061270699651943223

/-! ## A152470.P2701208216138867370

`A034962(n+1)-A001043(A072225(n+1))`
-/

namespace A152470.P2701208216138867370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034962 (n + 1) - A001043 (A072225 (n + 1)).toNat

end

end A152470.P2701208216138867370

/-! ## A152470.P2303060514670238796

`A034962(n+1)-A011974(A072225(n+1)+1)`
-/

namespace A152470.P2303060514670238796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034962 (n + 1) - A011974 (A072225 (n + 1) + 1).toNat

end

end A152470.P2303060514670238796

/-! ## A152470.P14467160803433451523

`A004139(2*A072225(n+1)-A072225(n+1))`
-/

namespace A152470.P14467160803433451523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (2 * A072225 (n + 1) - A072225 (n + 1)).toNat

end

end A152470.P14467160803433451523

/-! ## A152470.P18224737498730346247

`A151800(A151800(A073681(n+1)))`
-/

namespace A152470.P18224737498730346247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A073681 (n + 1)).toNat).toNat

end

end A152470.P18224737498730346247

/-! ## A152470.P5339042625862447624

`A151800(A152469(n+1))`
-/

namespace A152470.P5339042625862447624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A152469 (n + 1)).toNat

end

end A152470.P5339042625862447624

/-! ## A152470.P8147779986168685044

`A001043(A072225(n+1)+1)-A152469(n+1)`
-/

namespace A152470.P8147779986168685044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (A072225 (n + 1) + 1).toNat - A152469 (n + 1)

end

end A152470.P8147779986168685044

/-! ## A152470.P10241644169011355350

`A011974(A072225(n+1)+2)-A152469(n+1)`
-/

namespace A152470.P10241644169011355350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (A072225 (n + 1) + 2).toNat - A152469 (n + 1)

end

end A152470.P10241644169011355350

/-! ## A152470.P13943725314939907418

`A034962(n+1)-(A152469(n+1)+A073681(n+1))`
-/

namespace A152470.P13943725314939907418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034962 (n + 1) - (A152469 (n + 1) + A073681 (n + 1))

end

end A152470.P13943725314939907418

/-! ## A152470.P1740980902437309209

`A045966(A073681(n+1))`
-/

namespace A152470.P1740980902437309209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (A073681 (n + 1)).toNat

end

end A152470.P1740980902437309209

/-! ## A152470.P10202933296153967578

`A003961(2*A152469(n+1)-A152469(n+1))`
-/

namespace A152470.P10202933296153967578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (2 * A152469 (n + 1) - A152469 (n + 1)).toNat

end

end A152470.P10202933296153967578

/-!
# A152472: Largest primes of 'a' consecutive primes whose sum is a prime in A152471.

The programs for A152472, there is no canonical definition to state claims against.
-/

/-! ## A152472.P9234496747403147763

`A119992(A152471(n+1))`
-/

namespace A152472.P9234496747403147763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119992 (A152471 (n + 1)).toNat

end

end A152472.P9234496747403147763

/-! ## A152472.P10413362131884304258

`A077559(A040147(n+1))`
-/

namespace A152472.P10413362131884304258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077559 (A040147 (n + 1)).toNat

end

end A152472.P10413362131884304258

/-!
# A152473: Primes appearing as sums in A152471.

The programs for A152473, there is no canonical definition to state claims against.
-/

/-! ## A152473.P2491959004783973675

`p?[A007504(A095116(n+1))-A007504(n)]`
-/

namespace A152473.P2491959004783973675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A095116 (n + 1)).toNat - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152473.P2491959004783973675

/-! ## A152473.P7742152636059731417

`p?[A014284(A014688(n+1))-A014284(n+1)]`
-/

namespace A152473.P7742152636059731417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (A014688 (n + 1)).toNat - A014284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152473.P7742152636059731417

/-! ## A152473.P13385294082343115333

`p?[A036439(A014688(n+1))-A036439(n+1)]`
-/

namespace A152473.P13385294082343115333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (A014688 (n + 1)).toNat - A036439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152473.P13385294082343115333

/-! ## A152473.P9978857332083261098

`p?[A175965(A090178(n+1))-A175965(n+1)]`
-/

namespace A152473.P9978857332083261098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (A090178 (n + 1)).toNat - A175965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152473.P9978857332083261098

/-! ## A152473.P17714969958417007108

`p?[A007504(A014692(n+1)+n+n)-A007504(n)]`
-/

namespace A152473.P17714969958417007108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A014692 (n + 1) + (n : ℤ) + (n : ℤ)).toNat - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152473.P17714969958417007108

/-!
# A152476: Inverse binomial transform of A005329.

The programs for A152476, there is no canonical definition to state claims against.
-/

/-! ## A152476.P8599893773588654526

`xor(∑[n], A086590(∑[n]))`
-/

namespace A152476.P8599893773588654526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A086590 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A152476.P8599893773588654526

/-!
# A152477: Partial sums of PartitionsP of Fibonacci numbers.

The programs for A152477, there is no canonical definition to state claims against.
-/

/-! ## A152477.P1811937788021926792

`∑[A072214(n)]-1`
-/

namespace A152477.P1811937788021926792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A152477.P1811937788021926792

/-! ## A152477.P5294295226870622914

`∑[A000041(A000045(n))]-1`
-/

namespace A152477.P5294295226870622914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000045 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A152477.P5294295226870622914

/-! ## A152477.P14895123290223882485

`∑[A000041(abs(A236191(n)))]-1`
-/

namespace A152477.P14895123290223882485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 |A236191 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A152477.P14895123290223882485

/-! ## A152477.P17137738797583960605

`a(n-1)+A000041(A000045(2*n-n))` with `a(0)=0`
-/

namespace A152477.P17137738797583960605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000041 (A000045 (2 * n - n)).toNat

end

end A152477.P17137738797583960605

/-!
# A152478: Partial sums of PartitionsQ of Fibonacci numbers.

The programs for A152478, there is no canonical definition to state claims against.
-/

/-! ## A152478.P16960702250789871595

`∑[A072241(n)]-1`
-/

namespace A152478.P16960702250789871595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A152478.P16960702250789871595

/-! ## A152478.P13939673595339607778

`∑[A000009(A000045(n))]-1`
-/

namespace A152478.P13939673595339607778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A000045 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A152478.P13939673595339607778

/-! ## A152478.P8717957567848325938

`∑[xor(A000007(n), A072241(n))]`
-/

namespace A152478.P8717957567848325938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A072241 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152478.P8717957567848325938

/-! ## A152478.P2444988025264302582

`∑[∑{d}[A000045(n), A078374(#)]]`
-/

namespace A152478.P2444988025264302582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A078374 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152478.P2444988025264302582

/-! ## A152478.P17316031698335325373

`∑[A000009(abs(A236191(n)))]-1`
-/

namespace A152478.P17316031698335325373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 |A236191 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A152478.P17316031698335325373

/-!
# A152479: Products of partition numbers of Fibonacci numbers.

The programs for A152479, there is no canonical definition to state claims against.
-/

/-! ## A152479.P13990651973411113930

`∏[A072214(n)]`
-/

namespace A152479.P13990651973411113930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152479.P13990651973411113930

/-! ## A152479.P4217954776846207996

`A000041(Δ[a(n-2)+a(n-1)])*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A152479.P4217954776846207996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000041 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * a (n - 1)

end

end A152479.P4217954776846207996

/-! ## A152479.P14874913726950896029

`∏[A000041(A000045(n))]`
-/

namespace A152479.P14874913726950896029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000045 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152479.P14874913726950896029

/-! ## A152479.P17475766922116361776

`∏[A000041(A274163(n))]`
-/

namespace A152479.P17475766922116361776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A274163 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152479.P17475766922116361776

/-!
# A152480: Products of PartitionsQ of Fibonacci numbers.

The programs for A152480, there is no canonical definition to state claims against.
-/

/-! ## A152480.P2380286446700776311

`∏[A072241(n)]`
-/

namespace A152480.P2380286446700776311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152480.P2380286446700776311

/-! ## A152480.P18164548942742015790

`∏[A000009(A000045(n))]`
-/

namespace A152480.P18164548942742015790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A000045 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152480.P18164548942742015790

/-! ## A152480.P4792926681526944328

`∏[A000009(abs(A236191(n)))]`
-/

namespace A152480.P4792926681526944328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 |A236191 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152480.P4792926681526944328

/-! ## A152480.P3644588988137446314

`∏[A000009(A212804(n+1))]`
-/

namespace A152480.P3644588988137446314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A212804 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152480.P3644588988137446314

/-! ## A152480.P7513807115580851220

`∏[A000009(Δ[A000071(n+1)])]`
-/

namespace A152480.P7513807115580851220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152480.P7513807115580851220

/-!
# A152482: Even numbers which are not the sum of 2 even semiprimes.

The programs for A152482, there is no canonical definition to state claims against.
-/

/-! ## A152482.P17086307322900116879

`A014092(n+1)*2`
-/

namespace A152482.P17086307322900116879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1) * 2

end

end A152482.P17086307322900116879

/-! ## A152482.P14409338296210926366

`2*record[A171435(n+3)+A107393(n)]`
-/

namespace A152482.P14409338296210926366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (n + 3) + A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152482.P14409338296210926366

/-! ## A152482.P172017949467461122

`2*∪[A025583(n+1), A100962(n+1)]`
-/

namespace A152482.P172017949467461122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152482.P172017949467461122

/-! ## A152482.P8185430545661297047

`2*∪[A089268(n+1), A100962(n+1)]`
-/

namespace A152482.P8185430545661297047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152482.P8185430545661297047

/-! ## A152482.P16306675106800005948

`A014092(n+1)+A014092(-xor(n, -1))`
-/

namespace A152482.P16306675106800005948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1) + A014092 (-Int.xor (n : ℤ) (-1)).toNat

end

end A152482.P16306675106800005948

/-! ## A152482.P13848833841632197971

`A014092(A000027(n+1))+A014092(n+1)`
-/

namespace A152482.P13848833841632197971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (A000027 (n + 1)).toNat + A014092 (n + 1)

end

end A152482.P13848833841632197971

/-! ## A152482.P9934086161063218402

`2*∩[A004280(n+1), A166081(n+1)]`
-/

namespace A152482.P9934086161063218402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152482.P9934086161063218402

/-! ## A152482.P17707022261667088382

`2*∩[A166081(n+1), A004274(n)]`
-/

namespace A152482.P17707022261667088382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152482.P17707022261667088382

/-! ## A152482.P17892494782542669576

`2*∩[A042996(n+1), A166081(n+1)]`
-/

namespace A152482.P17892494782542669576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152482.P17892494782542669576

/-! ## A152482.P15019552640038239756

`2*∩[A166081(n+1), A196499(n+1)]`
-/

namespace A152482.P15019552640038239756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152482.P15019552640038239756

/-! ## A152482.P13078005071714572759

`2*∩[A047489(n+1), A166081(n+1)]`
-/

namespace A152482.P13078005071714572759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152482.P13078005071714572759

/-! ## A152482.P7403394879880665674

`2*∩[A047255(n+1), A166081(n+1)]`
-/

namespace A152482.P7403394879880665674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152482.P7403394879880665674

/-! ## A152482.P9266130496542700533

`2*∩[A053661(n+1), A166081(n+1)]`
-/

namespace A152482.P9266130496542700533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152482.P9266130496542700533

/-! ## A152482.P18094855123966036994

`2*∩[A166081(n+1), A080587(n)]`
-/

namespace A152482.P18094855123966036994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152482.P18094855123966036994

/-! ## A152482.P15767049331103323331

`2*∩[A166081(n+1), A186042(n+1)]`
-/

namespace A152482.P15767049331103323331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152482.P15767049331103323331

/-! ## A152482.P15787261835793842103

`2*∩[A047490(n+1), A166081(n+1)]`
-/

namespace A152482.P15787261835793842103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152482.P15787261835793842103

/-! ## A152482.P5044535889710586969

`2*∩[A166081(n+1), A329780(n+1)]`
-/

namespace A152482.P5044535889710586969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152482.P5044535889710586969

/-! ## A152482.P3432577515366394437

`2*∩[A166081(n+1), A360126(n+1)]`
-/

namespace A152482.P3432577515366394437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152482.P3432577515366394437

/-! ## A152482.P1951751399418894134

`2*∩[A166081(n+1), A228373(n+1)]`
-/

namespace A152482.P1951751399418894134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152482.P1951751399418894134

/-! ## A152482.P14776776367398328165

`2*∩[A069149(n+1), A166081(n+1)]`
-/

namespace A152482.P14776776367398328165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152482.P14776776367398328165

/-!
# A152486: For definition see comments.

The programs for A152486, there is no canonical definition to state claims against.
-/

/-! ## A152486.P15402525815407527416

`A018314(lt[A008616(n), A344180(n)])`
-/

namespace A152486.P15402525815407527416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018314 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A152486.P15402525815407527416

/-! ## A152486.P626680425911243252

`A135938(lt[A261301(3*n+4), A135938(n+1)])`
-/

namespace A152486.P626680425911243252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261301 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135938 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A152486.P626680425911243252

/-! ## A152486.P12197645258124862271

`A218337(lt[A218339(3*n+4), A218347(n+4)])`
-/

namespace A152486.P12197645258124862271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218339 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218347 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218337 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A152486.P12197645258124862271

/-!
# A152487: Triangle read by rows, 0<=k<=n: T(n,k) = Levenshtein distance of n and k in binary representation.

The programs for A152487, there is no canonical definition to state claims against.
-/

/-! ## A152487.P1750731824508812184

`A322285(n)+A010054(A075230(3*n+5))`
-/

namespace A152487.P1750731824508812184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322285 n + A010054 (A075230 (3 * n + 5)).toNat

end

end A152487.P1750731824508812184

/-! ## A152487.P17462625009997198926

`A322285(n)+A304570(A000009(n))`
-/

namespace A152487.P17462625009997198926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322285 n + A304570 (A000009 n).toNat

end

end A152487.P17462625009997198926

/-! ## A152487.P15866474282898672472

`A014963(A000037(n+1)*A106348(2*n))*A322285(n)`
-/

namespace A152487.P15866474282898672472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000037 (n + 1) * A106348 (2 * n)).toNat * A322285 n

end

end A152487.P15866474282898672472

/-! ## A152487.P1146523280388346883

`A322285(n)+A010815(A325800(n+4))`
-/

namespace A152487.P1146523280388346883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322285 n + A010815 (A325800 (n + 4)).toNat

end

end A152487.P1146523280388346883

/-! ## A152487.P13241718702596989794

`A322285(n)+A304570(A247306(n+1))`
-/

namespace A152487.P13241718702596989794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322285 n + A304570 (A247306 (n + 1)).toNat

end

end A152487.P13241718702596989794

/-!
# A152489: Finite rectangular array (24x4) used in A152490.

The programs for A152489, there is no canonical definition to state claims against.
-/

/-! ## A152489.P12276715064109600968

`A227835(A106828(n))`
-/

namespace A152489.P12276715064109600968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227835 (A106828 n).toNat

end

end A152489.P12276715064109600968

/-! ## A152489.P17397035665890051659

`A201472(4*n+1)%A091084(n+1)`
-/

namespace A152489.P17397035665890051659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201472 (4 * n + 1)) (A091084 (n + 1))

end

end A152489.P17397035665890051659

/-! ## A152489.P7865771632172955306

`A029542(n+1)%A144328(A329825(n+1))`
-/

namespace A152489.P7865771632172955306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029542 (n + 1)) (A144328 (A329825 (n + 1)).toNat)

end

end A152489.P7865771632172955306

/-! ## A152489.P8304775220441095553

`val(A293911(n+1), A001316(A293925(n+3)))`
-/

namespace A152489.P8304775220441095553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A293911 (n + 1)).toNat (A001316 (A293925 (n + 3)).toNat).toNat

end

end A152489.P8304775220441095553

/-! ## A152489.P15742836672665025605

`A131742(n)%A001221(A253350(n+1))`
-/

namespace A152489.P15742836672665025605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131742 n) (A001221 (A253350 (n + 1)).toNat)

end

end A152489.P15742836672665025605

/-!
# A152490: Determinants of first 4x4 part of A051731 whose columns has been shifted with sequence A152489.

The programs for A152490, there is no canonical definition to state claims against.
-/

/-! ## A152490.P12465623863235917803

`A046978(xor(A042948(n), A239059(n+1)))`
-/

namespace A152490.P12465623863235917803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (Int.xor (A042948 n) (A239059 (n + 1))).toNat

end

end A152490.P12465623863235917803

/-! ## A152490.P4149031894792125693

`A117568(A026922(n+1))*A117568(A008585(n))`
-/

namespace A152490.P4149031894792125693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117568 (A026922 (n + 1)).toNat * A117568 (A008585 n).toNat

end

end A152490.P4149031894792125693

/-! ## A152490.P17677231000184478435

`A110161(A008619(n))+A110161(A022351(n))`
-/

namespace A152490.P17677231000184478435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110161 (A008619 n).toNat + A110161 (A022351 n).toNat

end

end A152490.P17677231000184478435

/-! ## A152490.P6075056439063272990

`A008683(floor(Δ[(n+1)^5/5])+(2*n)%3)`
-/

namespace A152490.P6075056439063272990
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 5 : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (⌊f1 (n + 1) - f1 n⌋ + ((2 * n % 3 : ℕ) : ℤ)).toNat

end

end A152490.P6075056439063272990

/-! ## A152490.P8795514398640887835

`A008683(A082986(n+1)+A080425(n))`
-/

namespace A152490.P8795514398640887835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A082986 (n + 1) + A080425 n).toNat

end

end A152490.P8795514398640887835

/-!
# A152492: a(n) = number of integers of the form (n*k)^2/(k^2 - n^2).

The programs for A152492, there is no canonical definition to state claims against.
-/

/-! ## A152492.P2550739044247681459

`A004275(A243046(n+1)^A212363(n))`
-/

namespace A152492.P2550739044247681459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.roundAway ((A243046 (n + 1) : ℚ) ^ (A212363 n : ℤ))).toNat

end

end A152492.P2550739044247681459

/-! ## A152492.P2589458981534918392

`A027868(7*A243046(n+1)^A212363(n))`
-/

namespace A152492.P2589458981534918392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (SequenceMachineLib.roundAway (7 * (A243046 (n + 1) : ℚ) ^ (A212363 n : ℤ))).toNat

end

end A152492.P2589458981534918392

/-! ## A152492.P8486899368664569212

`A004275(A243046(n+1))%A335477(3*n+2)`
-/

namespace A152492.P8486899368664569212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004275 (A243046 (n + 1)).toNat) (A335477 (3 * n + 2))

end

end A152492.P8486899368664569212

/-!
# A152494: 1/3 of the number of permutations of 2 indistinguishable copies of 1..n with exactly 2 local maxima.

The programs for A152494, the canonical program `A152494.P1945993544684541595` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152494 has offset 1).

The definition of A152494 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152494.P1945993544684541595

`16*a(n-1)-69*a(n-2)+90*a(n-3)` with `a(0)=0, a(1)=1, a(2)=19`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152494

/-- `16*a(n-1)-69*a(n-2)+90*a(n-3)` -/
def P1945993544684541595.Spec : Prop :=
  ∀ n, P1945993544684541595.a n = A152494 (n + 1)

theorem P1945993544684541595.correct : P1945993544684541595.Spec := by
  intro n
  simp only [A152494, Nat.add_sub_cancel]

end A152494

/-! ## A152494.P752691303070527303

`(13*10^n-13*3^n-14*n*3^n)/49`
-/

namespace A152494.P752691303070527303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((13 * 10 ^ n : ℤ) - (13 * 3 ^ n : ℤ) - (14 * n * 3 ^ n : ℤ) : ℚ) / 49

end

end A152494.P752691303070527303

namespace A152494

/-- `(13*10^n-13*3^n-14*n*3^n)/49` -/
def P752691303070527303.Spec : Prop :=
  ∀ n, P752691303070527303.a n = (A152494 (n + 1) : ℚ)

theorem P752691303070527303.correct : P752691303070527303.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A152494, Nat.add_sub_cancel, A152494.P752691303070527303.a, A152494.P1945993544684541595.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A152494, Nat.add_sub_cancel, A152494.P752691303070527303.a, A152494.P1945993544684541595.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A152494

/-!
# A152496: 1/3 of the number of permutations of 2 indistinguishable copies of 1..n with exactly 4 local maxima.

The programs for A152496, there is no canonical definition to state claims against.
-/

/-! ## A152496.P18199071167317018216

`A000040(A326867(n))*A357290(n)`
-/

namespace A152496.P18199071167317018216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A326867 n).toNat * A357290 n

end

end A152496.P18199071167317018216

/-!
# A152499: 1/12 of the number of permutations of 3 indistinguishable copies of 1..n with exactly 2 local maxima.

The programs for A152499, the canonical program `A152499.P7140794162716705185` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152499 has offset 1).

The definition of A152499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152499.P7140794162716705185

`28*a(n-1)-176*a(n-2)+320*a(n-3)` with `a(0)=0, a(1)=1, a(2)=30`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152499

/-- `28*a(n-1)-176*a(n-2)+320*a(n-3)` -/
def P7140794162716705185.Spec : Prop :=
  ∀ n, P7140794162716705185.a n = A152499 (n + 1)

theorem P7140794162716705185.correct : P7140794162716705185.Spec := by
  intro n
  simp only [A152499, Nat.add_sub_cancel]

end A152499

/-! ## A152499.P2204987364850145165

`(11*20^n-11*4^n-12*n*4^n)/128`
-/

namespace A152499.P2204987364850145165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * 20 ^ n : ℤ) - (11 * 4 ^ n : ℤ) - (12 * n * 4 ^ n : ℤ) : ℚ) / 128

end

end A152499.P2204987364850145165

namespace A152499

/-- `(11*20^n-11*4^n-12*n*4^n)/128` -/
def P2204987364850145165.Spec : Prop :=
  ∀ n, P2204987364850145165.a n = (A152499 (n + 1) : ℚ)

theorem P2204987364850145165.correct : P2204987364850145165.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A152499, Nat.add_sub_cancel, A152499.P2204987364850145165.a, A152499.P7140794162716705185.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A152499, Nat.add_sub_cancel, A152499.P2204987364850145165.a, A152499.P7140794162716705185.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A152499

