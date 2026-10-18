import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A273600: Numbers k such that (11^k - 8^k)/3 is prime.

The programs for A273600, there is no canonical definition to state claims against.
-/

/-! ## A273600.P15136620983943796390

`p?[∑[floor(A101139(n+1)/e)]+n]`
-/

namespace A273600.P15136620983943796390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101139 (n + 1) : ℝ) / Real.exp 1⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A273600.P15136620983943796390

/-! ## A273600.P10105461894174939270

`p?[A004074(∑[A224916(n)])]`
-/

namespace A273600.P10105461894174939270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224916 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004074 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A273600.P10105461894174939270

/-!
# A273602: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 805", based on the 5-celled von Neumann neighborhood.

The programs for A273602, there is no canonical definition to state claims against.
-/

/-! ## A273602.P8908848880795194091

`Δ[A019426(2*n)*A273604(abs(1-n))]`
-/

namespace A273602.P8908848880795194091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * n) * A273604 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273602.P8908848880795194091

/-! ## A273602.P7112249214605306890

`Δ[A273604(abs(1-n))%A273604(n)]`
-/

namespace A273602.P7112249214605306890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273604 |1 - (n : ℤ)|.toNat) (A273604 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273602.P7112249214605306890

/-! ## A273602.P14397023780258226283

`A273605(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273602.P14397023780258226283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273605 (n - 1) + a (n - 1)

end

end A273602.P14397023780258226283

/-! ## A273602.P14380211900175485281

`Δ[A273604(n)]-A273605(n)`
-/

namespace A273602.P14380211900175485281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273605 n

end

end A273602.P14380211900175485281

/-! ## A273602.P16141467201867555415

`A273604(n+1)-(A273605(n)+A273604(n))`
-/

namespace A273602.P16141467201867555415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273604 (n + 1) - (A273605 n + A273604 n)

end

end A273602.P16141467201867555415

/-!
# A273603: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 805", based on the 5-celled von Neumann neighborhood.

The programs for A273603, there is no canonical definition to state claims against.
-/

/-! ## A273603.P14257581009171730639

`A273602(2^n-1)`
-/

namespace A273603.P14257581009171730639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273602 (2 ^ n - 1)

end

end A273603.P14257581009171730639

/-! ## A273603.P2437569118234580257

`record[A273602(A173787(n))]`
-/

namespace A273603.P2437569118234580257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273602 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273603.P2437569118234580257

/-! ## A273603.P12116706167374436931

`record[A273602(A218616(n))]`
-/

namespace A273603.P12116706167374436931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273602 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273603.P12116706167374436931

/-! ## A273603.P4403361500408278088

`record[A273602(A303763(n))]`
-/

namespace A273603.P4403361500408278088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273602 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273603.P4403361500408278088

/-! ## A273603.P1660558862422363720

`record[A273602(Δ[A228693(n)])]`
-/

namespace A273603.P1660558862422363720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273602 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273603.P1660558862422363720

/-!
# A273604: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 805", based on the 5-celled von Neumann neighborhood.

The programs for A273604, there is no canonical definition to state claims against.
-/

/-! ## A273604.P2142516196179779669

`∑[A273602(n)]`
-/

namespace A273604.P2142516196179779669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273604.P2142516196179779669

/-! ## A273604.P3219333167125585844

`a(n-1)-(A000007(n)-A273602(n))` with `a(0)=1`
-/

namespace A273604.P3219333167125585844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A000007 n - A273602 n)

end

end A273604.P3219333167125585844

/-! ## A273604.P14851807723495993276

`a(n-1)-(A000038(n)-A273602(n))` with `a(0)=1`
-/

namespace A273604.P14851807723495993276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A000038 n - A273602 n)

end

end A273604.P14851807723495993276

/-! ## A273604.P4186914640124738405

`A273602(n)+a(n-ceil(n/A000041(n)))` with `a(0)=1`
-/

namespace A273604.P4186914640124738405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273602 n + a ((n : ℤ) - ⌈(n : ℚ) / (A000041 n : ℚ)⌉).toNat

end

end A273604.P4186914640124738405

/-! ## A273604.P17085811914314851952

`∑[A273605(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273604.P17085811914314851952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273605 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273604.P17085811914314851952

/-! ## A273604.P1821207405360417036

`∑[∑[A273605(n)]+1-A273605(n)]`
-/

namespace A273604.P1821207405360417036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273605 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273605 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273604.P1821207405360417036

/-!
# A273605: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 805", based on the 5-celled von Neumann neighborhood.

The programs for A273605, there is no canonical definition to state claims against.
-/

/-! ## A273605.P8723574294973597543

`Δ[A273602(n)]`
-/

namespace A273605.P8723574294973597543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273605.P8723574294973597543

/-! ## A273605.P12282183572009198894

`2*4*(n+1)-A271258(abs(1-n))`
-/

namespace A273605.P12282183572009198894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (4 * (n + 1)) : ℤ) - A271258 |1 - (n : ℤ)|.toNat

end

end A273605.P12282183572009198894

/-! ## A273605.P12319985228968389926

`A273602(n+1)-A273602(n)`
-/

namespace A273605.P12319985228968389926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273602 (n + 1) - A273602 n

end

end A273605.P12319985228968389926

/-! ## A273605.P16957663969616515570

`A017137(n)-A271258(abs(1-n))+2`
-/

namespace A273605.P16957663969616515570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 n - A271258 |1 - (n : ℤ)|.toNat + 2

end

end A273605.P16957663969616515570

/-! ## A273605.P7150386887822317244

`record[A273602(A007599(n))]-A273602(n)`
-/

namespace A273605.P7150386887822317244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273602 (A007599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A273602 n

end

end A273605.P7150386887822317244

/-!
# A273606: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 806", based on the 5-celled von Neumann neighborhood.

The programs for A273606, there is no canonical definition to state claims against.
-/

/-! ## A273606.P2933602066225895703

`∑[A273609(abs(1-n))]+1`
-/

namespace A273606.P2933602066225895703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273609 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A273606.P2933602066225895703

/-! ## A273606.P14206520906012489406

`A273609(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273606.P14206520906012489406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273609 (n - 1) + a (n - 1)

end

end A273606.P14206520906012489406

/-! ## A273606.P3447482106867903196

`1+∑[A273609(n)]-A273609(n)`
-/

namespace A273606.P3447482106867903196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (∑ j ∈ Finset.range (n + 1), f1 j - A273609 n)

end

end A273606.P3447482106867903196

/-! ## A273606.P7787821348621804221

`Δ[A273608(n)]-A273609(n)`
-/

namespace A273606.P7787821348621804221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273609 n

end

end A273606.P7787821348621804221

/-! ## A273606.P17978849809212920795

`A273608(n+1)-(A273609(n)+A273608(n))`
-/

namespace A273606.P17978849809212920795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273608 (n + 1) - (A273609 n + A273608 n)

end

end A273606.P17978849809212920795

/-! ## A273606.P14061315769044959061

`A005408(∑[A273609(abs(1-n))]/2)`
-/

namespace A273606.P14061315769044959061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273609 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2)).toNat

end

end A273606.P14061315769044959061

/-! ## A273606.P8767103111275547590

`A005408((∑[A273609(n)]-A273609(n))/2)`
-/

namespace A273606.P8767103111275547590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j - A273609 n : ℤ) : ℚ) / 2)).toNat

end

end A273606.P8767103111275547590

/-! ## A273606.P2698216803764332118

`A004442(∑[A273609(n)]-A273609(n))`
-/

namespace A273606.P2698216803764332118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (∑ j ∈ Finset.range (n + 1), f1 j - A273609 n).toNat

end

end A273606.P2698216803764332118

/-! ## A273606.P13115708357876252397

`A109613(∑[A273609(n)]-A273609(n))`
-/

namespace A273606.P13115708357876252397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (∑ j ∈ Finset.range (n + 1), f1 j - A273609 n).toNat

end

end A273606.P13115708357876252397

/-!
# A273607: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 806", based on the 5-celled von Neumann neighborhood.

The programs for A273607, there is no canonical definition to state claims against.
-/

/-! ## A273607.P1764274235708565195

`A273606(2^n-1)`
-/

namespace A273607.P1764274235708565195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273606 (2 ^ n - 1)

end

end A273607.P1764274235708565195

/-! ## A273607.P15549630369697562747

`record[A273606(A173787(n))]`
-/

namespace A273607.P15549630369697562747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273606 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273607.P15549630369697562747

/-! ## A273607.P273203829693842718

`record[A273606(A218616(n))]`
-/

namespace A273607.P273203829693842718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273606 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273607.P273203829693842718

/-! ## A273607.P14835505507835399372

`record[A273606(A227351(n))]`
-/

namespace A273607.P14835505507835399372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273606 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273607.P14835505507835399372

/-! ## A273607.P17743540968179341800

`or(1, A273606(A000225(n)))`
-/

namespace A273607.P17743540968179341800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273606 (A000225 n).toNat)

end

end A273607.P17743540968179341800

/-!
# A273608: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 806", based on the 5-celled von Neumann neighborhood.

The programs for A273608, there is no canonical definition to state claims against.
-/

/-! ## A273608.P5320509786455065169

`∑[A273606(n)]`
-/

namespace A273608.P5320509786455065169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273608.P5320509786455065169

/-! ## A273608.P17365090641838518231

`∑[∑[A273609(abs(1-n))]+1]`
-/

namespace A273608.P17365090641838518231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273609 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273608.P17365090641838518231

/-! ## A273608.P12886567388771922128

`∑[A273609(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273608.P12886567388771922128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273609 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273608.P12886567388771922128

/-! ## A273608.P4499926170595440513

`∑[∑[A273609(n)]-A273609(n)+1]`
-/

namespace A273608.P4499926170595440513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273609 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A273609 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273608.P4499926170595440513

/-! ## A273608.P6169222408344189771

`a(n-1)+A273606(n)%A135705(n)` with `a(0)=1`
-/

namespace A273608.P6169222408344189771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273606 n) (A135705 n)

end

end A273608.P6169222408344189771

/-! ## A273608.P4161928092138747996

`A273606(n^A262079(n))+a(n-1)` with `a(0)=1`
-/

namespace A273608.P4161928092138747996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273606 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A262079 n : ℤ))).toNat + a (n - 1)

end

end A273608.P4161928092138747996

/-!
# A273609: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 806", based on the 5-celled von Neumann neighborhood.

The programs for A273609, there is no canonical definition to state claims against.
-/

/-! ## A273609.P1729918441132901536

`Δ[A273606(n)]`
-/

namespace A273609.P1729918441132901536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273609.P1729918441132901536

/-! ## A273609.P4546008706493784918

`A273606(n+1)-A273606(n)`
-/

namespace A273609.P4546008706493784918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273606 (n + 1) - A273606 n

end

end A273609.P4546008706493784918

/-! ## A273609.P17311306972369022498

`A273606(n+1)+A024000(A273606(n)+1)`
-/

namespace A273609.P17311306972369022498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273606 (n + 1) + A024000 (A273606 n + 1).toNat

end

end A273609.P17311306972369022498

/-!
# A273610: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 809", based on the 5-celled von Neumann neighborhood.

The programs for A273610, there is no canonical definition to state claims against.
-/

/-! ## A273610.P7492900023356760789

`A273613(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273610.P7492900023356760789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273613 (n - 1) + a (n - 1)

end

end A273610.P7492900023356760789

/-! ## A273610.P4165625886477128945

`Δ[A273612(n)]-A273613(n)`
-/

namespace A273610.P4165625886477128945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273613 n

end

end A273610.P4165625886477128945

/-! ## A273610.P1853946983964529550

`∑[A273613(A028310(n)-1)]-2`
-/

namespace A273610.P1853946983964529550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273613 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A273610.P1853946983964529550

/-! ## A273610.P746199395364360770

`A273613(n-1)-(val(n², A304579(n))-a(n-1))` with `a(0)=1`
-/

namespace A273610.P746199395364360770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273613 (n - 1) - ((SequenceMachineLib.valuation (n ^ 2) (A304579 n).toNat : ℤ) - a (n - 1))

end

end A273610.P746199395364360770

/-! ## A273610.P3656895253053535451

`A273612(n+1)-(A273613(n)+A273612(n))`
-/

namespace A273610.P3656895253053535451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273612 (n + 1) - (A273613 n + A273612 n)

end

end A273610.P3656895253053535451

/-! ## A273610.P12979105955232697883

`A273613(n-1)-(val(n, 13*(2-A165759(n)))-a(n-1))` with `a(0)=1`
-/

namespace A273610.P12979105955232697883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273613 (n - 1) - ((SequenceMachineLib.valuation n (13 * (2 - A165759 n)).toNat : ℤ) - a (n - 1))

end

end A273610.P12979105955232697883

/-!
# A273611: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 809", based on the 5-celled von Neumann neighborhood.

The programs for A273611, there is no canonical definition to state claims against.
-/

/-! ## A273611.P6002595666763909268

`A273610(2^n-1)`
-/

namespace A273611.P6002595666763909268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273610 (2 ^ n - 1)

end

end A273611.P6002595666763909268

/-! ## A273611.P12177032062120606572

`record[A273610(A252756(n+1))]`
-/

namespace A273611.P12177032062120606572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273610 (A252756 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273611.P12177032062120606572

/-! ## A273611.P10768269696370080391

`record[A273610(A324865(n+1))]`
-/

namespace A273611.P10768269696370080391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273610 (A324865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273611.P10768269696370080391

/-! ## A273611.P4547178538209562399

`record[gcd(A080791(n), A273610(n))]`
-/

namespace A273611.P4547178538209562399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080791 n) (A273610 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273611.P4547178538209562399

/-! ## A273611.P17674805568242324756

`A273610(A000225(n))+A086078(n)`
-/

namespace A273611.P17674805568242324756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273610 (A000225 n).toNat + A086078 n

end

end A273611.P17674805568242324756

/-!
# A273612: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 809", based on the 5-celled von Neumann neighborhood.

The programs for A273612, there is no canonical definition to state claims against.
-/

/-! ## A273612.P4583532918465162774

`∑[∑[A273613(A028310(n)-1)]-2]`
-/

namespace A273612.P4583532918465162774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273613 (A028310 n - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273612.P4583532918465162774

/-! ## A273612.P18355995356306679775

`∑[∑[A273613(n)]+1-A273613(n)]`
-/

namespace A273612.P18355995356306679775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273613 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273613 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273612.P18355995356306679775

/-! ## A273612.P13818546538919115766

`∑[A273610(n)]`
-/

namespace A273612.P13818546538919115766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273612.P13818546538919115766

/-! ## A273612.P5076094929912984904

`A273610(A006370(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A273612.P5076094929912984904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273610 (A006370 (2 * n)).toNat + a (n - 1)

end

end A273612.P5076094929912984904

/-! ## A273612.P10491703730600510313

`A273610(A123108(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A273612.P10491703730600510313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273610 (A123108 (2 * n)).toNat + a (n - 1)

end

end A273612.P10491703730600510313

/-! ## A273612.P13950221034111237416

`A273610(n%A199798(n+3))+a(n-1)` with `a(0)=1`
-/

namespace A273612.P13950221034111237416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273610 (Int.tmod (n : ℤ) (A199798 (n + 3))).toNat + a (n - 1)

end

end A273612.P13950221034111237416

/-!
# A273613: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 809", based on the 5-celled von Neumann neighborhood.

The programs for A273613, there is no canonical definition to state claims against.
-/

/-! ## A273613.P14536451361929395771

`Δ[A273610(n)]`
-/

namespace A273613.P14536451361929395771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273613.P14536451361929395771

/-! ## A273613.P6242437737485610326

`A273610(n+1)-A273610(n)`
-/

namespace A273613.P6242437737485610326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273610 (n + 1) - A273610 n

end

end A273613.P6242437737485610326

/-!
# A273614: Numbers k such that 3k - 1 divides 3^k - 1.

The programs for A273614, there is no canonical definition to state claims against.
-/

/-! ## A273614.P17795686805124059832

`A051775(A091639(n+1))+A003946(n)`
-/

namespace A273614.P17795686805124059832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051775 (A091639 (n + 1)).toNat + A003946 n

end

end A273614.P17795686805124059832

/-!
# A273619: Table read by antidiagonals (n>1, k>0): A(n,k) = leading digit of k in base n.

The programs for A273619, there is no canonical definition to state claims against.
-/

/-! ## A273619.P14606247876216515982

`A003983(n+1)^A010892(A336345(n))`
-/

namespace A273619.P14606247876216515982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003983 (n + 1) : ℚ) ^ (A010892 (A336345 n).toNat : ℤ)

end

end A273619.P14606247876216515982

/-! ## A273619.P13270331946083643217

`gcd(A113368(A212382(n)), A307079(n))`
-/

namespace A273619.P13270331946083643217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113368 (A212382 n).toNat) (A307079 n)

end

end A273619.P13270331946083643217

/-! ## A273619.P10223716944591471125

`gcd(A003983(n+1), A113368(A212363(n)))`
-/

namespace A273619.P10223716944591471125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003983 (n + 1)) (A113368 (A212363 n).toNat)

end

end A273619.P10223716944591471125

/-! ## A273619.P1350129105074683313

`gcd(A002260(n+1), A278539(A089054(n)))`
-/

namespace A273619.P1350129105074683313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002260 (n + 1)) (A278539 (A089054 n).toNat)

end

end A273619.P1350129105074683313

/-! ## A273619.P17054997887907359372

`A206441(A137855(n+1))`
-/

namespace A273619.P17054997887907359372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206441 (A137855 (n + 1)).toNat

end

end A273619.P17054997887907359372

/-!
# A273620: Table read by ascending antidiagonals: T(n, k) = floor(sqrt(k) * floor(n/sqrt(k) + 1)), for n >= 1, k >= 1.

The programs for A273620, there is no canonical definition to state claims against.
-/

/-! ## A273620.P4685183467226396775

`A346094(A346075(n))+A144257(n+1)`
-/

namespace A273620.P4685183467226396775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346094 (A346075 n).toNat + A144257 (n + 1)

end

end A273620.P4685183467226396775

/-! ## A273620.P12740505265727370193

`A130658(A182738(n+3))+A025581(n)`
-/

namespace A273620.P12740505265727370193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130658 (A182738 (n + 3)).toNat + A025581 n

end

end A273620.P12740505265727370193

/-! ## A273620.P12350391154037466822

`A288640(A030694(n+1))+A004736(n+1)`
-/

namespace A273620.P12350391154037466822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288640 (A030694 (n + 1)).toNat + A004736 (n + 1)

end

end A273620.P12350391154037466822

/-! ## A273620.P8103696827911598391

`A188967(A195264(n+5))+A004736(n+1)`
-/

namespace A273620.P8103696827911598391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188967 (A195264 (n + 5)).toNat + A004736 (n + 1)

end

end A273620.P8103696827911598391

/-! ## A273620.P12398337293439417602

`A014577(A238586(2*n+5))+A004736(n+1)`
-/

namespace A273620.P12398337293439417602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A238586 (2 * n + 5)).toNat + A004736 (n + 1)

end

end A273620.P12398337293439417602

/-!
# A273622: a(n) = (1/3)*(Lucas(3*n) - Lucas(n)).

The programs for A273622, the canonical program `A273622.P7378187318551168865` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273622 has offset 1).

The definition of A273622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273622.P7378187318551168865

`5*a(n-1)-2*a(n-2)-5*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=24, a(3)=105`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A273622

/-- `5*a(n-1)-2*a(n-2)-5*a(n-3)-a(n-4)` -/
def P7378187318551168865.Spec : Prop :=
  ∀ n, P7378187318551168865.a n = A273622 (n + 1)

theorem P7378187318551168865.correct : P7378187318551168865.Spec := by
  intro n
  simp only [A273622, Nat.add_sub_cancel]

end A273622

/-! ## A273622.P16056515944800344618

`(A014448(n+1)-A000032(n+1))/3`
-/

namespace A273622.P16056515944800344618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014448 (n + 1) - A000032 (n + 1) : ℚ) / 3

end

end A273622.P16056515944800344618

namespace A273622

/-- `(A014448(n+1)-A000032(n+1))/3` -/
def P16056515944800344618.Spec : Prop :=
  ∀ n, P16056515944800344618.a n = (A273622 (n + 1) : ℚ)

end A273622

/-! ## A273622.P4340025436898771066

`ogf((1+x^2)/(1-5x+2x^2+5x^3+x^4))`
-/

namespace A273622.P4340025436898771066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -5, 2, 5, 1] n

end

end A273622.P4340025436898771066

namespace A273622

/-- `ogf((1+x^2)/(1-5x+2x^2+5x^3+x^4))` -/
def P4340025436898771066.Spec : Prop :=
  ∀ n, P4340025436898771066.a n = A273622 (n + 1)

end A273622

/-! ## A273622.P387898198748589073

`A302126(Δ[n²])+a(n-2)+a(n-1)/(1/2)²` with `a(0)=1, a(1)=5`
-/

namespace A273622.P387898198748589073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  (A302126 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) + (a (n - 2) + a (n - 1) / ((1 : ℚ) / 2) ^ 2)

end

end A273622.P387898198748589073

namespace A273622

/-- `A302126(Δ[n²])+a(n-2)+a(n-1)/(1/2)²` -/
def P387898198748589073.Spec : Prop :=
  ∀ n, P387898198748589073.a n = (A273622 (n + 1) : ℚ)

end A273622

/-! ## A273622.P17143252277862294304

`A049674(n+2)+A049674(n)`
-/

namespace A273622.P17143252277862294304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049674 (n + 2) + A049674 n

end

end A273622.P17143252277862294304

namespace A273622

/-- `A049674(n+2)+A049674(n)` -/
def P17143252277862294304.Spec : Prop :=
  ∀ n, P17143252277862294304.a n = A273622 (n + 1)

end A273622

/-! ## A273622.P5087872280689212639

`(A022112(3*n+2)-A022112(n))/6`
-/

namespace A273622.P5087872280689212639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022112 (3 * n + 2) - A022112 n : ℚ) / 6

end

end A273622.P5087872280689212639

namespace A273622

/-- `(A022112(3*n+2)-A022112(n))/6` -/
def P5087872280689212639.Spec : Prop :=
  ∀ n, P5087872280689212639.a n = (A273622 (n + 1) : ℚ)

end A273622

/-! ## A273622.P10269598874444617559

`(A000032(3*(n+1))-A000032(n+1))/3`
-/

namespace A273622.P10269598874444617559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (3 * (n + 1)) - A000032 (n + 1) : ℚ) / 3

end

end A273622.P10269598874444617559

namespace A273622

/-- `(A000032(3*(n+1))-A000032(n+1))/3` -/
def P10269598874444617559.Spec : Prop :=
  ∀ n, P10269598874444617559.a n = (A273622 (n + 1) : ℚ)

end A273622

/-! ## A273622.P3359960063657345981

`(A000204(3*(n+1))-A000204(n+1))/3`
-/

namespace A273622.P3359960063657345981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000204 (3 * (n + 1)) - A000204 (n + 1) : ℚ) / 3

end

end A273622.P3359960063657345981

namespace A273622

/-- `(A000204(3*(n+1))-A000204(n+1))/3` -/
def P3359960063657345981.Spec : Prop :=
  ∀ n, P3359960063657345981.a n = (A273622 (n + 1) : ℚ)

end A273622

/-!
# A273623: a(n) = Fibonacci(3*n) - (2 + (-1)^n)*Fibonacci(n).

The programs for A273623, the canonical program `A273623.P7653286071170375673` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273623 has offset 1).

The definition of A273623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273623.P7653286071170375673

`∑[A002878(n)]*∑[A212804(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A273623

/-- `∑[A002878(n)]*∑[A212804(n)]` -/
def P7653286071170375673.Spec : Prop :=
  ∀ n, P7653286071170375673.a n = A273623 (n + 1)

theorem P7653286071170375673.correct : P7653286071170375673.Spec := by
  intro n
  simp only [A273623, Nat.add_sub_cancel]

end A273623

/-! ## A273623.P2690394821574692096

`A000045(n+1)*∑[A002878(n)]`
-/

namespace A273623.P2690394821574692096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273623.P2690394821574692096

namespace A273623

/-- `A000045(n+1)*∑[A002878(n)]` -/
def P2690394821574692096.Spec : Prop :=
  ∀ n, P2690394821574692096.a n = A273623 (n + 1)

end A273623

/-! ## A273623.P4444579009350423812

`∑[A212804(n)]*A004146(n+1)`
-/

namespace A273623.P4444579009350423812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A004146 (n + 1)

end

end A273623.P4444579009350423812

namespace A273623

/-- `∑[A212804(n)]*A004146(n+1)` -/
def P4444579009350423812.Spec : Prop :=
  ∀ n, P4444579009350423812.a n = A273623 (n + 1)

end A273623

/-! ## A273623.P8203027954121096504

`A000045(n+1)*A004146(n+1)`
-/

namespace A273623.P8203027954121096504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A004146 (n + 1)

end

end A273623.P8203027954121096504

namespace A273623

/-- `A000045(n+1)*A004146(n+1)` -/
def P8203027954121096504.Spec : Prop :=
  ∀ n, P8203027954121096504.a n = A273623 (n + 1)

end A273623

/-! ## A273623.P15007673502908796828

`A000045(n+1)*A014739(2*n)`
-/

namespace A273623.P15007673502908796828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A014739 (2 * n)

end

end A273623.P15007673502908796828

namespace A273623

/-- `A000045(n+1)*A014739(2*n)` -/
def P15007673502908796828.Spec : Prop :=
  ∀ n, P15007673502908796828.a n = A273623 (n + 1)

end A273623

/-! ## A273623.P16778368038272311477

`(A005592(n+1)-1)*A000045(n+1)`
-/

namespace A273623.P16778368038272311477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005592 (n + 1) - 1) * A000045 (n + 1)

end

end A273623.P16778368038272311477

namespace A273623

/-- `(A005592(n+1)-1)*A000045(n+1)` -/
def P16778368038272311477.Spec : Prop :=
  ∀ n, P16778368038272311477.a n = A273623 (n + 1)

end A273623

/-! ## A273623.P14538610235624959168

`(A005248(n+1)-2)*A000045(n+1)`
-/

namespace A273623.P14538610235624959168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005248 (n + 1) - 2) * A000045 (n + 1)

end

end A273623.P14538610235624959168

namespace A273623

/-- `(A005248(n+1)-2)*A000045(n+1)` -/
def P14538610235624959168.Spec : Prop :=
  ∀ n, P14538610235624959168.a n = A273623 (n + 1)

end A273623

/-! ## A273623.P16449256797289200024

`A000045(n+1)*A074392(2*n+1)`
-/

namespace A273623.P16449256797289200024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A074392 (2 * n + 1)

end

end A273623.P16449256797289200024

namespace A273623

/-- `A000045(n+1)*A074392(2*n+1)` -/
def P16449256797289200024.Spec : Prop :=
  ∀ n, P16449256797289200024.a n = A273623 (n + 1)

end A273623

/-! ## A273623.P2390920352437763641

`A004146(n+1)*A103609(2*(n+1))`
-/

namespace A273623.P2390920352437763641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004146 (n + 1) * A103609 (2 * (n + 1))

end

end A273623.P2390920352437763641

namespace A273623

/-- `A004146(n+1)*A103609(2*(n+1))` -/
def P2390920352437763641.Spec : Prop :=
  ∀ n, P2390920352437763641.a n = A273623 (n + 1)

end A273623

/-! ## A273623.P15092380754850524050

`A000045(n+1)*A221364(2*n+1)`
-/

namespace A273623.P15092380754850524050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A221364 (2 * n + 1)

end

end A273623.P15092380754850524050

namespace A273623

/-- `A000045(n+1)*A221364(2*n+1)` -/
def P15092380754850524050.Spec : Prop :=
  ∀ n, P15092380754850524050.a n = A273623 (n + 1)

end A273623

/-! ## A273623.P3963899308689015948

`A000045(n+1)*A301653(2*n+1)`
-/

namespace A273623.P3963899308689015948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A301653 (2 * n + 1)

end

end A273623.P3963899308689015948

namespace A273623

/-- `A000045(n+1)*A301653(2*n+1)` -/
def P3963899308689015948.Spec : Prop :=
  ∀ n, P3963899308689015948.a n = A273623 (n + 1)

end A273623

/-! ## A273623.P2330399240990832651

`(A082587(4*n)-2)*A000045(n+1)`
-/

namespace A273623.P2330399240990832651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082587 (4 * n) - 2) * A000045 (n + 1)

end

end A273623.P2330399240990832651

namespace A273623

/-- `(A082587(4*n)-2)*A000045(n+1)` -/
def P2330399240990832651.Spec : Prop :=
  ∀ n, P2330399240990832651.a n = A273623 (n + 1)

end A273623

/-! ## A273623.P8788458389618205920

`A000045(n+1)*∑[∑[A169985(2*n)]]`
-/

namespace A273623.P8788458389618205920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273623.P8788458389618205920

namespace A273623

/-- `A000045(n+1)*∑[∑[A169985(2*n)]]` -/
def P8788458389618205920.Spec : Prop :=
  ∀ n, P8788458389618205920.a n = A273623 (n + 1)

end A273623

/-! ## A273623.P3626103997806227056

`∑[A212804(n)]*∑[A000032(2*n+1)]`
-/

namespace A273623.P3626103997806227056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A273623.P3626103997806227056

namespace A273623

/-- `∑[A212804(n)]*∑[A000032(2*n+1)]` -/
def P3626103997806227056.Spec : Prop :=
  ∀ n, P3626103997806227056.a n = A273623 (n + 1)

end A273623

/-! ## A273623.P6029371770043899322

`∑[A000032(2*n+1)]*A000045(n+1)`
-/

namespace A273623.P6029371770043899322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000045 (n + 1)

end

end A273623.P6029371770043899322

namespace A273623

/-- `∑[A000032(2*n+1)]*A000045(n+1)` -/
def P6029371770043899322.Spec : Prop :=
  ∀ n, P6029371770043899322.a n = A273623 (n + 1)

end A273623

/-! ## A273623.P3181805184110189802

`∑[A000204(2*n+1)]*A000045(n+1)`
-/

namespace A273623.P3181805184110189802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000045 (n + 1)

end

end A273623.P3181805184110189802

namespace A273623

/-- `∑[A000204(2*n+1)]*A000045(n+1)` -/
def P3181805184110189802.Spec : Prop :=
  ∀ n, P3181805184110189802.a n = A273623 (n + 1)

end A273623

/-! ## A273623.P9758531601248652833

`(A001610(2*n+1)-1)*A000045(n+1)`
-/

namespace A273623.P9758531601248652833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001610 (2 * n + 1) - 1) * A000045 (n + 1)

end

end A273623.P9758531601248652833

namespace A273623

/-- `(A001610(2*n+1)-1)*A000045(n+1)` -/
def P9758531601248652833.Spec : Prop :=
  ∀ n, P9758531601248652833.a n = A273623 (n + 1)

end A273623

/-! ## A273623.P5638885301899455741

`(A000032(2*(n+1))-2)*A000045(n+1)`
-/

namespace A273623.P5638885301899455741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * (n + 1)) - 2) * A000045 (n + 1)

end

end A273623.P5638885301899455741

namespace A273623

/-- `(A000032(2*(n+1))-2)*A000045(n+1)` -/
def P5638885301899455741.Spec : Prop :=
  ∀ n, P5638885301899455741.a n = A273623 (n + 1)

end A273623

/-! ## A273623.P11060088852199948436

`(A000204(2*(n+1))-2)*A000045(n+1)`
-/

namespace A273623.P11060088852199948436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000204 (2 * (n + 1)) - 2) * A000045 (n + 1)

end

end A273623.P11060088852199948436

namespace A273623

/-- `(A000204(2*(n+1))-2)*A000045(n+1)` -/
def P11060088852199948436.Spec : Prop :=
  ∀ n, P11060088852199948436.a n = A273623 (n + 1)

end A273623

/-! ## A273623.P18025741389084145382

`(A020956(2*n+1)+n)*A000045(n+1)`
-/

namespace A273623.P18025741389084145382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020956 (2 * n + 1) + (n : ℤ)) * A000045 (n + 1)

end

end A273623.P18025741389084145382

namespace A273623

/-- `(A020956(2*n+1)+n)*A000045(n+1)` -/
def P18025741389084145382.Spec : Prop :=
  ∀ n, P18025741389084145382.a n = A273623 (n + 1)

end A273623

/-!
# A273625: a(n) = (1/12)*(Fibonacci(2*n) + Fibonacci(4*n) + Fibonacci(6*n)).

The programs for A273625, the canonical program `A273625.P3508756453264777210` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273625 has offset 1).

The definition of A273625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273625.P3508756453264777210

`(A001906(n+1)+A001906(2*(n+1))+A001906(3*(n+1)))/12`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A273625

/-- `(A001906(n+1)+A001906(2*(n+1))+A001906(3*(n+1)))/12` -/
def P3508756453264777210.Spec : Prop :=
  ∀ n, P3508756453264777210.a n = (A273625 (n + 1) : ℚ)

end A273625

/-! ## A273625.P11056200054345000991

`A004187(n+1)/A001906(n+1)*A215466(n+1)`
-/

namespace A273625.P11056200054345000991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004187 (n + 1) : ℚ) / (A001906 (n + 1) : ℚ) * (A215466 (n + 1) : ℚ)

end

end A273625.P11056200054345000991

namespace A273625

/-- `A004187(n+1)/A001906(n+1)*A215466(n+1)` -/
def P11056200054345000991.Spec : Prop :=
  ∀ n, P11056200054345000991.a n = (A273625 (n + 1) : ℚ)

end A273625

/-! ## A273625.P3124669730319942021

`A215466(n+1)/A238536(n+1)*A238600(n+1)`
-/

namespace A273625.P3124669730319942021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215466 (n + 1) : ℚ) / (A238536 (n + 1) : ℚ) * (A238600 (n + 1) : ℚ)

end

end A273625.P3124669730319942021

namespace A273625

/-- `A215466(n+1)/A238536(n+1)*A238600(n+1)` -/
def P3124669730319942021.Spec : Prop :=
  ∀ n, P3124669730319942021.a n = (A273625 (n + 1) : ℚ)

end A273625

/-!
# A273626: A fourth-order divisibility sequence: a(n) = (1/14)*(Pell(4*n) + Pell(2*n)).

The programs for A273626, the canonical program `A273626.P16343949251584966982` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273626 has offset 1).

The definition of A273626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273626.P16343949251584966982

`(A082405(n+1)+A001109(n+1))/7`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A273626

/-- `(A082405(n+1)+A001109(n+1))/7` -/
def P16343949251584966982.Spec : Prop :=
  ∀ n, P16343949251584966982.a n = (A273626 (n + 1) : ℚ)

end A273626

/-!
# A273627: A divisibility sequence: (1/8)*(Pell(4*n) - 2*Pell(2*n)).

The programs for A273627, there is no canonical definition to state claims against.
-/

/-! ## A273627.P10679030585992065110

`Δ[A053142(n)²]`
-/

namespace A273627.P10679030585992065110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053142 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273627.P10679030585992065110

/-! ## A273627.P15487212660366411034

`Δ[∑[A001109(n)]²]`
-/

namespace A273627.P15487212660366411034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273627.P15487212660366411034

/-! ## A273627.P8913276334361869464

`A123115(n+1)/2`
-/

namespace A273627.P8913276334361869464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123115 (n + 1) : ℚ) / 2

end

end A273627.P8913276334361869464

/-! ## A273627.P4724534817686943120

`Δ[(A053141(n)/2)²]`
-/

namespace A273627.P4724534817686943120
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A053141 n : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273627.P4724534817686943120

/-! ## A273627.P3684387430138862188

`Δ[floor(A011900(n)/2)²]`
-/

namespace A273627.P3684387430138862188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011900 n : ℚ) / 2⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273627.P3684387430138862188

/-! ## A273627.P3565192597175379141

`Δ[∑[A001542(n)/2]²]`
-/

namespace A273627.P3565192597175379141
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001542 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273627.P3565192597175379141

/-! ## A273627.P16890643316383218135

`Δ[∑[A081554(n)/8]²]`
-/

namespace A273627.P16890643316383218135
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081554 n : ℚ) / 8

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273627.P16890643316383218135

/-! ## A273627.P17679053899743764519

`Δ[(A105635(2*n)/2)²]`
-/

namespace A273627.P17679053899743764519
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A105635 (2 * n) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273627.P17679053899743764519

/-! ## A273627.P4403559567825096677

`Δ[∑[floor(A182189(n)/2)]²]`
-/

namespace A273627.P4403559567825096677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182189 n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273627.P4403559567825096677

/-! ## A273627.P7567873808522283693

`Δ[∑[A204512(2*(n+1))]²]`
-/

namespace A273627.P7567873808522283693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204512 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273627.P7567873808522283693

/-!
# A273628: a(n) = (7*n)!/((5*n)!*n!^2).

The programs for A273628, there is no canonical definition to state claims against.
-/

/-! ## A273628.P6525275248301803582

`A004355(n)*A004368(n)`
-/

namespace A273628.P6525275248301803582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004355 n * A004368 n

end

end A273628.P6525275248301803582

/-! ## A273628.P8447903766380003543

`A002296(n)*A090969(n)`
-/

namespace A273628.P8447903766380003543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002296 n * A090969 n

end

end A273628.P8447903766380003543

/-! ## A273628.P11233187713765137852

`A004368(n)*A051053(A008458(n))`
-/

namespace A273628.P11233187713765137852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004368 n * A051053 (A008458 n).toNat

end

end A273628.P11233187713765137852

/-! ## A273628.P1403030280882772867

`A000984(n)*A159965(A062725(n))`
-/

namespace A273628.P1403030280882772867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A159965 (A062725 n).toNat

end

end A273628.P1403030280882772867

/-! ## A273628.P15383780779787658617

`A004355(n)*A193636(A051682(n+1)-A016777(n))`
-/

namespace A273628.P15383780779787658617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004355 n * A193636 (A051682 (n + 1) - A016777 n).toNat

end

end A273628.P15383780779787658617

/-!
# A273629: a(n) = (9*n)!/((7*n)!*n!^2).

The programs for A273629, there is no canonical definition to state claims against.
-/

/-! ## A273629.P10173387598544199483

`A004381(n)*A169958(n)`
-/

namespace A273629.P10173387598544199483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004381 n * A169958 n

end

end A273629.P10173387598544199483

/-! ## A273629.P7678607974723361336

`C(8*n, n)*C(9*n, n)`
-/

namespace A273629.P7678607974723361336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (8 * n) n * Nat.choose (9 * n) n

end

end A273629.P7678607974723361336

/-! ## A273629.P13460379237858341865

`A159965(A062728(n))*A169958(n)`
-/

namespace A273629.P13460379237858341865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159965 (A062728 n).toNat * A169958 n

end

end A273629.P13460379237858341865

/-! ## A273629.P13193138811141917698

`A000984(n)*A264773(A062725(n))`
-/

namespace A273629.P13193138811141917698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A264773 (A062725 n).toNat

end

end A273629.P13193138811141917698

/-!
# A273631: a(n) = Sum_{k = 0..n} (-1)^k*binomial(k,2)^3*binomial(n,k)^3.

The programs for A273631, there is no canonical definition to state claims against.
-/

/-! ## A273631.P3523060689198013099

`A173293(A163891(n+1))`
-/

namespace A273631.P3523060689198013099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173293 (A163891 (n + 1)).toNat

end

end A273631.P3523060689198013099

/-!
# A273632: Numerator of ratio h/g, where h>g are smallest highly composite numbers such that interval (g, h) contains A273379(n).

The programs for A273632, there is no canonical definition to state claims against.
-/

/-! ## A273632.P3833506610466723825

`A123176(A273638(n+1)%A123176(n+1))`
-/

namespace A273632.P3833506610466723825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123176 (Int.tmod (A273638 (n + 1)) (A123176 (n + 1))).toNat

end

end A273632.P3833506610466723825

/-! ## A273632.P920365447360852271

`A123176(A273638(n+1))%A340872(A324347(n))`
-/

namespace A273632.P920365447360852271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123176 (A273638 (n + 1)).toNat) (A340872 (A324347 n).toNat)

end

end A273632.P920365447360852271

/-! ## A273632.P859468416254271701

`A123176(gcd(A185255(n), A273638(n+1)))`
-/

namespace A273632.P859468416254271701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123176 (Int.gcd (A185255 n) (A273638 (n + 1)))

end

end A273632.P859468416254271701

/-! ## A273632.P1276232378925530921

`A123176(A273638(n+1)+A185255(n)²)`
-/

namespace A273632.P1276232378925530921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123176 (A273638 (n + 1) + A185255 n ^ 2).toNat

end

end A273632.P1276232378925530921

/-!
# A273638: Denominators of ratios in A273632.

The programs for A273638, there is no canonical definition to state claims against.
-/

/-! ## A273638.P10572525032011402091

`A218550(A273632(n+1))%14`
-/

namespace A273638.P10572525032011402091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218550 (A273632 (n + 1)).toNat) 14

end

end A273638.P10572525032011402091

/-! ## A273638.P6433692206085066445

`A340872(A349608(n+1))%A273632(n+1)`
-/

namespace A273638.P6433692206085066445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340872 (A349608 (n + 1)).toNat) (A273632 (n + 1))

end

end A273638.P6433692206085066445

/-! ## A273638.P9482248769732926

`A340872(A273632(2*(n+2)))%A273632(n+1)`
-/

namespace A273638.P9482248769732926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340872 (A273632 (2 * (n + 2))).toNat) (A273632 (n + 1))

end

end A273638.P9482248769732926

/-! ## A273638.P16875710366602915866

`p?[A033429(n)-6]%A273632(n+1)`
-/

namespace A273638.P16875710366602915866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 n - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A273632 (n + 1))

end

end A273638.P16875710366602915866

/-! ## A273638.P9124521522080075232

`A340872(A324347(n))%A273632(n+1)`
-/

namespace A273638.P9124521522080075232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340872 (A324347 n).toNat) (A273632 (n + 1))

end

end A273638.P9124521522080075232

/-!
# A273639: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 813", based on the 5-celled von Neumann neighborhood.

The programs for A273639, there is no canonical definition to state claims against.
-/

/-! ## A273639.P9614118430796047798

`A258448(2^n-1)`
-/

namespace A273639.P9614118430796047798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258448 (2 ^ n - 1)

end

end A273639.P9614118430796047798

/-! ## A273639.P9508800367946970404

`record[A258448(A038573(n))]`
-/

namespace A273639.P9508800367946970404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258448 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273639.P9508800367946970404

/-! ## A273639.P11193160815939067396

`record[A258448(A173787(n))]`
-/

namespace A273639.P11193160815939067396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258448 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273639.P11193160815939067396

/-! ## A273639.P925786840877298890

`and(-3, A258448(A000225(n)))`
-/

namespace A273639.P925786840877298890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A258448 (A000225 n).toNat)

end

end A273639.P925786840877298890

/-! ## A273639.P11580011952081977268

`record[A258448(A200714(n+1))]`
-/

namespace A273639.P11580011952081977268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258448 (A200714 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273639.P11580011952081977268

/-!
# A273640: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 813", based on the 5-celled von Neumann neighborhood.

The programs for A273640, there is no canonical definition to state claims against.
-/

/-! ## A273640.P4237237092793952655

`∑[A258448(n)]`
-/

namespace A273640.P4237237092793952655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258448 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273640.P4237237092793952655

/-! ## A273640.P17336380084188901427

`a(n-1)-A057428(n)*A258448(n)` with `a(0)=1`
-/

namespace A273640.P17336380084188901427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A057428 n * A258448 n

end

end A273640.P17336380084188901427

/-! ## A273640.P15989630662376410173

`a(n-1)+A258448(n)%A258440(n+1)` with `a(0)=1`
-/

namespace A273640.P15989630662376410173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A258448 n) (A258440 (n + 1))

end

end A273640.P15989630662376410173

/-! ## A273640.P11495271790742007300

`a(n-1)-A008683(A104272(n+1))*A258448(n)` with `a(0)=1`
-/

namespace A273640.P11495271790742007300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A008683 (A104272 (n + 1)).toNat * A258448 n

end

end A273640.P11495271790742007300

/-! ## A273640.P316593681566263015

`∑[∑[A273641(n)]+1-A273641(n)]`
-/

namespace A273640.P316593681566263015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273641 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273641 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273640.P316593681566263015

/-!
# A273641: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 813", based on the 5-celled von Neumann neighborhood.

The programs for A273641, there is no canonical definition to state claims against.
-/

/-! ## A273641.P12448465706419101392

`Δ[A258448(n)]`
-/

namespace A273641.P12448465706419101392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258448 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273641.P12448465706419101392

/-! ## A273641.P16042960666026786935

`8*(n+1)-A271059(abs(1-n))`
-/

namespace A273641.P16042960666026786935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) : ℤ) - A271059 |1 - (n : ℤ)|.toNat

end

end A273641.P16042960666026786935

/-! ## A273641.P8086092677848523064

`A258448(n+1)-A258448(n)`
-/

namespace A273641.P8086092677848523064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258448 (n + 1) - A258448 n

end

end A273641.P8086092677848523064

/-! ## A273641.P2408544424770259066

`A258448(n+1)+A024000(A258448(n)+1)`
-/

namespace A273641.P2408544424770259066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258448 (n + 1) + A024000 (A258448 n + 1).toNat

end

end A273641.P2408544424770259066

/-!
# A273642: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 814", based on the 5-celled von Neumann neighborhood.

The programs for A273642, there is no canonical definition to state claims against.
-/

/-! ## A273642.P7503518268494312772

`A273645(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273642.P7503518268494312772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273645 (n - 1) + a (n - 1)

end

end A273642.P7503518268494312772

/-! ## A273642.P8862442529850784366

`Δ[A273644(n)]-A273645(n)`
-/

namespace A273642.P8862442529850784366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273645 n

end

end A273642.P8862442529850784366

/-! ## A273642.P13836620712121393032

`A273644(n+1)-(A273645(n)+A273644(n))`
-/

namespace A273642.P13836620712121393032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273644 (n + 1) - (A273645 n + A273644 n)

end

end A273642.P13836620712121393032

/-! ## A273642.P18125515782717043094

`A020985(n)²+∑[A273645(n)]-A273645(n)`
-/

namespace A273642.P18125515782717043094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273645 n)

end

end A273642.P18125515782717043094

/-! ## A273642.P8171826557999989834

`A057427(n+1)+∑[A273645(n)]-A273645(n)`
-/

namespace A273642.P8171826557999989834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A273645 n)

end

end A273642.P8171826557999989834

/-! ## A273642.P402610473502991299

`A266072(2*n)+∑[A273645(n)]-A273645(n)`
-/

namespace A273642.P402610473502991299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266072 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j - A273645 n)

end

end A273642.P402610473502991299

/-! ## A273642.P13731012708600924128

`A000035(2*n+1)+∑[A273645(n)]-A273645(n)`
-/

namespace A273642.P13731012708600924128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A273645 n)

end

end A273642.P13731012708600924128

/-! ## A273642.P13094279417273361260

`A163963(2*n+1)+∑[A273645(n)]-A273645(n)`
-/

namespace A273642.P13094279417273361260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163963 (2 * n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A273645 n)

end

end A273642.P13094279417273361260

/-! ## A273642.P18344308567398897026

`(A034694(n+1)²%3)!+∑[A273645(n)]-A273645(n)`
-/

namespace A273642.P18344308567398897026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A034694 (n + 1) ^ 2) 3).toNat : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - A273645 n)

end

end A273642.P18344308567398897026

/-! ## A273642.P10518572252917676235

`A000027(∑[A273645(n)]-A273645(n)+1)`
-/

namespace A273642.P10518572252917676235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j - A273645 n + 1).toNat

end

end A273642.P10518572252917676235

/-! ## A273642.P14026025230029183148

`A000265(∑[A273645(n)]-A273645(n)+1)`
-/

namespace A273642.P14026025230029183148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j - A273645 n + 1).toNat

end

end A273642.P14026025230029183148

/-! ## A273642.P12163469863384686484

`A009001(∑[A273645(n)]-A273645(n)+1)`
-/

namespace A273642.P12163469863384686484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (∑ j ∈ Finset.range (n + 1), f1 j - A273645 n + 1).toNat

end

end A273642.P12163469863384686484

/-! ## A273642.P16416746079064593617

`A065883(∑[A273645(n)]-A273645(n)+1)`
-/

namespace A273642.P16416746079064593617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (∑ j ∈ Finset.range (n + 1), f1 j - A273645 n + 1).toNat

end

end A273642.P16416746079064593617

/-! ## A273642.P10368576685533054385

`A005408((∑[A273645(n)]-A273645(n))/2)`
-/

namespace A273642.P10368576685533054385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j - A273645 n : ℤ) : ℚ) / 2)).toNat

end

end A273642.P10368576685533054385

/-! ## A273642.P12060845189829832722

`A141310(∑[A273645(n)]-A273645(n))`
-/

namespace A273642.P12060845189829832722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ j ∈ Finset.range (n + 1), f1 j - A273645 n).toNat

end

end A273642.P12060845189829832722

/-! ## A273642.P3438069760803077865

`A098180(∑[A273645(n)]-A273645(n))`
-/

namespace A273642.P3438069760803077865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 (∑ j ∈ Finset.range (n + 1), f1 j - A273645 n).toNat

end

end A273642.P3438069760803077865

/-! ## A273642.P37061268166291074

`A014681(∑[A273645(n)]-A273645(n)+2)`
-/

namespace A273642.P37061268166291074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (∑ j ∈ Finset.range (n + 1), f1 j - A273645 n + 2).toNat

end

end A273642.P37061268166291074

/-!
# A273643: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 814", based on the 5-celled von Neumann neighborhood.

The programs for A273643, there is no canonical definition to state claims against.
-/

/-! ## A273643.P8108110819755075833

`A273642(2^n-1)`
-/

namespace A273643.P8108110819755075833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273642 (2 ^ n - 1)

end

end A273643.P8108110819755075833

/-! ## A273643.P1826097456188933664

`record[A273642(A006068(n))]`
-/

namespace A273643.P1826097456188933664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273642 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273643.P1826097456188933664

/-! ## A273643.P13707302591845848503

`record[A273642(A246591(n))]`
-/

namespace A273643.P13707302591845848503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273642 (A246591 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273643.P13707302591845848503

/-! ## A273643.P7959343241670660622

`record[A273642(A255067(n))]`
-/

namespace A273643.P7959343241670660622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273642 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273643.P7959343241670660622

/-! ## A273643.P7770154205661321695

`record[A273642(A255565(n))]`
-/

namespace A273643.P7770154205661321695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273642 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273643.P7770154205661321695

/-!
# A273644: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 814", based on the 5-celled von Neumann neighborhood.

The programs for A273644, there is no canonical definition to state claims against.
-/

/-! ## A273644.P13183319575463741508

`∑[∑[A273645(n)]+1-A273645(n)]`
-/

namespace A273644.P13183319575463741508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273645 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273645 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273644.P13183319575463741508

/-! ## A273644.P7995492188687185593

`A273642(n-1)+A273645(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273644.P7995492188687185593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273642 (n - 1) + (A273645 (n - 1) + a (n - 1))

end

end A273644.P7995492188687185593

/-! ## A273644.P18245114249066392074

`∑[A273642(n)]`
-/

namespace A273644.P18245114249066392074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273644.P18245114249066392074

/-! ## A273644.P953304851985936712

`A273642(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A273644.P953304851985936712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273642 n + a (A028310 n - 1).toNat

end

end A273644.P953304851985936712

/-! ## A273644.P2296438038310722748

`a(n-1)+A273642(n)+A000007(n)` with `a(0)=1`
-/

namespace A273644.P2296438038310722748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273642 n + A000007 n)

end

end A273644.P2296438038310722748

/-! ## A273644.P14253085232961274425

`∑[A005408((∑[A273645(n)]-A273645(n))/2)]`
-/

namespace A273644.P14253085232961274425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273645 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f2 j - A273645 n : ℤ) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273644.P14253085232961274425

/-!
# A273645: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 814", based on the 5-celled von Neumann neighborhood.

The programs for A273645, there is no canonical definition to state claims against.
-/

/-! ## A273645.P3527058124157335753

`Δ[A273642(n)]`
-/

namespace A273645.P3527058124157335753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273645.P3527058124157335753

/-! ## A273645.P14242509435884092447

`A273642(n+1)-A273642(n)`
-/

namespace A273645.P14242509435884092447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273642 (n + 1) - A273642 n

end

end A273645.P14242509435884092447

/-! ## A273645.P7743781501744760379

`A273642(n+1)+A273642(n)/A118830(A000265(n+1))`
-/

namespace A273645.P7743781501744760379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273642 (n + 1) : ℚ) + (A273642 n : ℚ) / (A118830 (A000265 (n + 1)).toNat : ℚ)

end

end A273645.P7743781501744760379

/-!
# A273646: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 817", based on the 5-celled von Neumann neighborhood.

The programs for A273646, there is no canonical definition to state claims against.
-/

/-! ## A273646.P12347305003753399297

`A273649(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273646.P12347305003753399297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273649 (n - 1) + a (n - 1)

end

end A273646.P12347305003753399297

/-! ## A273646.P17824394208212979131

`Δ[A273648((n-1)*(2*a(n-1)+1)%2)]` with `a(0)=0`
-/

namespace A273646.P17824394208212979131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A273648 (((n : ℤ) - 1) * Int.tmod (2 * f1 (n - 1) + 1) 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273646.P17824394208212979131

/-! ## A273646.P14322810545971491338

`Δ[A273648(n)]-A273649(n)`
-/

namespace A273646.P14322810545971491338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273649 n

end

end A273646.P14322810545971491338

/-! ## A273646.P14716994560867447894

`A273648(n+1)-(A273649(n)+A273648(n))`
-/

namespace A273646.P14716994560867447894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273648 (n + 1) - (A273649 n + A273648 n)

end

end A273646.P14716994560867447894

/-!
# A273647: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 817", based on the 5-celled von Neumann neighborhood.

The programs for A273647, there is no canonical definition to state claims against.
-/

/-! ## A273647.P12050513562001374563

`A273646(2^n-1)`
-/

namespace A273647.P12050513562001374563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273646 (2 ^ n - 1)

end

end A273647.P12050513562001374563

/-! ## A273647.P13594757515629068647

`record[A273646(A091264(n))]`
-/

namespace A273647.P13594757515629068647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273646 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273647.P13594757515629068647

/-! ## A273647.P8809232727298049921

`record[A273646(A218616(n))]`
-/

namespace A273647.P8809232727298049921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273646 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273647.P8809232727298049921

/-! ## A273647.P15983519709023535955

`record[A273646(A255565(n))]`
-/

namespace A273647.P15983519709023535955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273646 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273647.P15983519709023535955

/-! ## A273647.P17379142035606917838

`record[A273646(A243071(n+1))]`
-/

namespace A273647.P17379142035606917838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273646 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273647.P17379142035606917838

/-!
# A273648: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 817", based on the 5-celled von Neumann neighborhood.

The programs for A273648, there is no canonical definition to state claims against.
-/

/-! ## A273648.P4356615565836070645

`∑[1-(A273649(n)-∑[A273649(n)])]`
-/

namespace A273648.P4356615565836070645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273649 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A273649 n - ∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273648.P4356615565836070645

/-! ## A273648.P607254255702935756

`∑[A273646(n)]`
-/

namespace A273648.P607254255702935756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273648.P607254255702935756

/-! ## A273648.P15406915058475559379

`A273646(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273648.P15406915058475559379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273646 n + a (A023443 n).toNat

end

end A273648.P15406915058475559379

/-! ## A273648.P1662417980094483645

`a(n-1)+A273646(n)+A000038(n)` with `a(0)=1`
-/

namespace A273648.P1662417980094483645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273646 n + A000038 n)

end

end A273648.P1662417980094483645

/-! ## A273648.P16650004078223149581

`record[A273646(A032742(n+1))+a(n-2)]` with `a(0)=1, a(1)=5`
-/

namespace A273648.P16650004078223149581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  A273646 (A032742 (n + 1)).toNat + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273648.P16650004078223149581

/-! ## A273648.P11030817052202676769

`a(n-1)+A273646(n)%A273622(n+1)` with `a(0)=1`
-/

namespace A273648.P11030817052202676769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273646 n) (A273622 (n + 1))

end

end A273648.P11030817052202676769

/-!
# A273649: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 817", based on the 5-celled von Neumann neighborhood.

The programs for A273649, there is no canonical definition to state claims against.
-/

/-! ## A273649.P980018352451924549

`Δ[Δ[A273648((n-1)*(2*a(n-1)+1)%2)]]` with `a(0)=0`
-/

namespace A273649.P980018352451924549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A273648 (((n : ℤ) - 1) * Int.tmod (2 * f2 (n - 1) + 1) 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273649.P980018352451924549

/-! ## A273649.P3697478071309985817

`Δ[A273646(n)]`
-/

namespace A273649.P3697478071309985817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273649.P3697478071309985817

/-! ## A273649.P1866657079353316182

`A273646(n+1)-A273646(n)`
-/

namespace A273649.P1866657079353316182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273646 (n + 1) - A273646 n

end

end A273649.P1866657079353316182

/-!
# A273650: a(n) = A000594(n) mod n.

The programs for A273650, there is no canonical definition to state claims against.
-/

/-! ## A273650.P9117931373582043238

`A299165(n+1)%(n+1)`
-/

namespace A273650.P9117931373582043238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299165 (n + 1)) (n + 1 : ℤ)

end

end A273650.P9117931373582043238

/-! ## A273650.P683543200301307709

`(A000594(n+1)+(n+1)^9)%(n+1)`
-/

namespace A273650.P683543200301307709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000594 (n + 1) + ((n + 1) ^ 9 : ℤ)) (n + 1 : ℤ)

end

end A273650.P683543200301307709

/-! ## A273650.P4490851162571134350

`(A000384(n+1)+A000594(n+1)%(n+1))%(n+1)`
-/

namespace A273650.P4490851162571134350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000384 (n + 1) + Int.tmod (A000594 (n + 1)) (n + 1 : ℤ)) (n + 1 : ℤ)

end

end A273650.P4490851162571134350

/-! ## A273650.P6367014001521096593

`(A282254(n+1)+A000594(n+1))%(n+1)`
-/

namespace A273650.P6367014001521096593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282254 (n + 1) + A000594 (n + 1)) (n + 1 : ℤ)

end

end A273650.P6367014001521096593

/-! ## A273650.P14347462647593330945

`(A292781(A075349(n+2))+A115226(n+1))%(n+1)`
-/

namespace A273650.P14347462647593330945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292781 (A075349 (n + 2)).toNat + A115226 (n + 1)) (n + 1 : ℤ)

end

end A273650.P14347462647593330945

/-! ## A273650.P2835790915555685516

`(A203551((n+1)²)+A000594(n+1))%(n+1)`
-/

namespace A273650.P2835790915555685516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203551 ((n + 1) ^ 2) + A000594 (n + 1)) (n + 1 : ℤ)

end

end A273650.P2835790915555685516

/-!
# A273651: a(n) = A000594(p) mod p, where p = prime(n).

The programs for A273651, there is no canonical definition to state claims against.
-/

/-! ## A273651.P12421796339033381786

`A273650(A000040(n+1))`
-/

namespace A273651.P12421796339033381786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273650 (A000040 (n + 1)).toNat

end

end A273651.P12421796339033381786

/-! ## A273651.P18103826432687124258

`A273650(A006005(n+1))`
-/

namespace A273651.P18103826432687124258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273650 (A006005 (n + 1)).toNat

end

end A273651.P18103826432687124258

/-! ## A273651.P2711134464390435427

`A273650(A161847(n+1))`
-/

namespace A273651.P2711134464390435427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273650 (A161847 (n + 1)).toNat

end

end A273651.P2711134464390435427

/-! ## A273651.P6051779188734176516

`A273650(A008578(n+2))`
-/

namespace A273651.P6051779188734176516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273650 (A008578 (n + 2)).toNat

end

end A273651.P6051779188734176516

/-! ## A273651.P7084482605410496755

`A273650(A075643(n+2))`
-/

namespace A273651.P7084482605410496755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273650 (A075643 (n + 2)).toNat

end

end A273651.P7084482605410496755

/-! ## A273651.P4134157881097941282

`A273650(A116974(n+2))`
-/

namespace A273651.P4134157881097941282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273650 (A116974 (n + 2)).toNat

end

end A273651.P4134157881097941282

/-! ## A273651.P697401997154355669

`A273650(A161428(n+2))`
-/

namespace A273651.P697401997154355669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273650 (A161428 (n + 2)).toNat

end

end A273651.P697401997154355669

/-! ## A273651.P13389421667992660140

`A273650(A162786(n+2))`
-/

namespace A273651.P13389421667992660140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273650 (A162786 (n + 2)).toNat

end

end A273651.P13389421667992660140

/-! ## A273651.P17446222521741919685

`A273650(A175787(n+2))`
-/

namespace A273651.P17446222521741919685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273650 (A175787 (n + 2)).toNat

end

end A273651.P17446222521741919685

/-! ## A273651.P185827718327629489

`A273650(record[A006530(n+2)])`
-/

namespace A273651.P185827718327629489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273650 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A273651.P185827718327629489

/-! ## A273651.P12587766132440582598

`A273650(record[A014963(n+2)])`
-/

namespace A273651.P12587766132440582598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273650 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A273651.P12587766132440582598

/-! ## A273651.P9510875096233749076

`A273650(record[A020639(n+2)])`
-/

namespace A273651.P9510875096233749076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273650 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A273651.P9510875096233749076

/-!
# A273652: Number of forests of labeled rooted trees of height at most 1, with n labels, two of which are used for root nodes and any root may contain >= 1 labels.

The programs for A273652, the canonical program `A273652.P9807940031009195353` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273652 has offset 2).

The definition of A273652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273652.P9807940031009195353

`(((n+2)²-(n+2))*2^(n+2)+4*(n+2)²-4*(n+2))/8`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A273652

/-- `(((n+2)²-(n+2))*2^(n+2)+4*(n+2)²-4*(n+2))/8` -/
def P9807940031009195353.Spec : Prop :=
  ∀ n, P9807940031009195353.a n = (A273652 (n + 2) : ℚ)

end A273652

/-! ## A273652.P1308660597450258543

`floor(∑[2*a(n-1)]*∑[n+1])` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A273652.P1308660597450258543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  2 * f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A273652.P1308660597450258543

namespace A273652

/-- `floor(∑[2*a(n-1)]*∑[n+1])` -/
def P1308660597450258543.Spec : Prop :=
  ∀ n, (P1308660597450258543.a n : ℤ) = A273652 (n + 2)

end A273652

/-! ## A273652.P9459504399289051771

`∑[∑[A084851(n)+1]]`
-/

namespace A273652.P9459504399289051771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273652.P9459504399289051771

namespace A273652

/-- `∑[∑[A084851(n)+1]]` -/
def P9459504399289051771.Spec : Prop :=
  ∀ n, P9459504399289051771.a n = A273652 (n + 2)

end A273652

/-! ## A273652.P16256456081983269441

`∑[∑[A049611(n+1)+1]]`
-/

namespace A273652.P16256456081983269441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273652.P16256456081983269441

namespace A273652

/-- `∑[∑[A049611(n+1)+1]]` -/
def P16256456081983269441.Spec : Prop :=
  ∀ n, P16256456081983269441.a n = A273652 (n + 2)

end A273652

/-! ## A273652.P16732364186513015542

`A001788(n+1)+∑[n+1]`
-/

namespace A273652.P16732364186513015542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A273652.P16732364186513015542

namespace A273652

/-- `A001788(n+1)+∑[n+1]` -/
def P16732364186513015542.Spec : Prop :=
  ∀ n, P16732364186513015542.a n = A273652 (n + 2)

end A273652

/-! ## A273652.P16530596138475630733

`∑[A001793(n+1)+1+n]`
-/

namespace A273652.P16530596138475630733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273652.P16530596138475630733

namespace A273652

/-- `∑[A001793(n+1)+1+n]` -/
def P16530596138475630733.Spec : Prop :=
  ∀ n, P16530596138475630733.a n = A273652 (n + 2)

end A273652

/-! ## A273652.P6859323785711951022

`∑[n+1]+∑[n+1]*A000079(n)`
-/

namespace A273652.P6859323785711951022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A000079 n

end

end A273652.P6859323785711951022

namespace A273652

/-- `∑[n+1]+∑[n+1]*A000079(n)` -/
def P6859323785711951022.Spec : Prop :=
  ∀ n, P6859323785711951022.a n = A273652 (n + 2)

end A273652

/-! ## A273652.P13144812400211294324

`A161680(n+2)+A001788(n+1)`
-/

namespace A273652.P13144812400211294324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 2) + A001788 (n + 1)

end

end A273652.P13144812400211294324

namespace A273652

/-- `A161680(n+2)+A001788(n+1)` -/
def P13144812400211294324.Spec : Prop :=
  ∀ n, P13144812400211294324.a n = A273652 (n + 2)

end A273652

/-! ## A273652.P9658441980915752088

`A008805(2*n)+A001788(n+1)`
-/

namespace A273652.P9658441980915752088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (2 * n) + A001788 (n + 1)

end

end A273652.P9658441980915752088

namespace A273652

/-- `A008805(2*n)+A001788(n+1)` -/
def P9658441980915752088.Spec : Prop :=
  ∀ n, P9658441980915752088.a n = A273652 (n + 2)

end A273652

/-! ## A273652.P18090565403694539463

`A000124(n+1)+A001788(n+1)-1`
-/

namespace A273652.P18090565403694539463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1) + (A001788 (n + 1) - 1)

end

end A273652.P18090565403694539463

namespace A273652

/-- `A000124(n+1)+A001788(n+1)-1` -/
def P18090565403694539463.Spec : Prop :=
  ∀ n, P18090565403694539463.a n = A273652 (n + 2)

end A273652

/-! ## A273652.P11786651338398661008

`A061727(2*n+1)+A001788(n+1)`
-/

namespace A273652.P11786651338398661008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061727 (2 * n + 1) + A001788 (n + 1)

end

end A273652.P11786651338398661008

namespace A273652

/-- `A061727(2*n+1)+A001788(n+1)` -/
def P11786651338398661008.Spec : Prop :=
  ∀ n, P11786651338398661008.a n = A273652 (n + 2)

end A273652

/-! ## A273652.P13384403191823421861

`A001788(n+1)+A000217(n)+n+1`
-/

namespace A273652.P13384403191823421861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 (n + 1) + A000217 n + (n + 1 : ℤ)

end

end A273652.P13384403191823421861

namespace A273652

/-- `A001788(n+1)+A000217(n)+n+1` -/
def P13384403191823421861.Spec : Prop :=
  ∀ n, P13384403191823421861.a n = A273652 (n + 2)

end A273652

/-! ## A273652.P3750049576377563987

`∑[n+1]+∑[A011782(n)]*A000217(n+1)`
-/

namespace A273652.P3750049576377563987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (∑ j ∈ Finset.range (n + 1), f2 j) * A000217 (n + 1)

end

end A273652.P3750049576377563987

namespace A273652

/-- `∑[n+1]+∑[A011782(n)]*A000217(n+1)` -/
def P3750049576377563987.Spec : Prop :=
  ∀ n, P3750049576377563987.a n = A273652 (n + 2)

end A273652

/-! ## A273652.P12753917350217363603

`C(n+2, 2)+Δ[A000225(n)]*A000217(n+1)`
-/

namespace A273652.P12753917350217363603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) + (f1 (n + 1) - f1 n) * A000217 (n + 1)

end

end A273652.P12753917350217363603

namespace A273652

/-- `C(n+2, 2)+Δ[A000225(n)]*A000217(n+1)` -/
def P12753917350217363603.Spec : Prop :=
  ∀ n, P12753917350217363603.a n = A273652 (n + 2)

end A273652

/-! ## A273652.P18093786790993002031

`A000051(n)+A000051(n)*A000096(n)`
-/

namespace A273652.P18093786790993002031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + A000051 n * A000096 n

end

end A273652.P18093786790993002031

namespace A273652

/-- `A000051(n)+A000051(n)*A000096(n)` -/
def P18093786790993002031.Spec : Prop :=
  ∀ n, P18093786790993002031.a n = A273652 (n + 2)

end A273652

/-! ## A273652.P927243935957670463

`A000051(n)*A000124(n+1)-A000051(n)`
-/

namespace A273652.P927243935957670463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A000124 (n + 1) - A000051 n

end

end A273652.P927243935957670463

namespace A273652

/-- `A000051(n)*A000124(n+1)-A000051(n)` -/
def P927243935957670463.Spec : Prop :=
  ∀ n, P927243935957670463.a n = A273652 (n + 2)

end A273652

/-! ## A273652.P3958312894516252792

`A000292(n+1)+A001788(n+1)-A000292(n)`
-/

namespace A273652.P3958312894516252792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A001788 (n + 1) - A000292 n)

end

end A273652.P3958312894516252792

namespace A273652

/-- `A000292(n+1)+A001788(n+1)-A000292(n)` -/
def P3958312894516252792.Spec : Prop :=
  ∀ n, P3958312894516252792.a n = A273652 (n + 2)

end A273652

/-! ## A273652.P9531032533438996005

`A000217(n+1)+A000079(n)*A000217(n+1)`
-/

namespace A273652.P9531032533438996005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A000079 n * A000217 (n + 1)

end

end A273652.P9531032533438996005

namespace A273652

/-- `A000217(n+1)+A000079(n)*A000217(n+1)` -/
def P9531032533438996005.Spec : Prop :=
  ∀ n, P9531032533438996005.a n = A273652 (n + 2)

end A273652

/-! ## A273652.P17101782269086683700

`A000217(n+1)*A052548(n)-A000217(n+1)`
-/

namespace A273652.P17101782269086683700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A052548 n - A000217 (n + 1)

end

end A273652.P17101782269086683700

namespace A273652

/-- `A000217(n+1)*A052548(n)-A000217(n+1)` -/
def P17101782269086683700.Spec : Prop :=
  ∀ n, P17101782269086683700.a n = A273652 (n + 2)

end A273652

/-! ## A273652.P7604434789577335468

`A000217(n+1)+A000217(n+1)*A011782(n+1)`
-/

namespace A273652.P7604434789577335468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A000217 (n + 1) * A011782 (n + 1)

end

end A273652.P7604434789577335468

namespace A273652

/-- `A000217(n+1)+A000217(n+1)*A011782(n+1)` -/
def P7604434789577335468.Spec : Prop :=
  ∀ n, P7604434789577335468.a n = A273652 (n + 2)

end A273652

/-!
# A273653: Number of forests of labeled rooted trees of height at most 1, with n labels, three of which are used for root nodes and any root may contain >= 1 labels.

The programs for A273653, there is no canonical definition to state claims against.
-/

/-! ## A273653.P2631845796785143036

`A143396(A167614(n+2))`
-/

namespace A273653.P2631845796785143036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (A167614 (n + 2)).toNat

end

end A273653.P2631845796785143036

/-! ## A273653.P9842602068870790854

`A143396(A052905(n)+8)`
-/

namespace A273653.P9842602068870790854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (A052905 n + 8).toNat

end

end A273653.P9842602068870790854

/-! ## A273653.P9476757700168896621

`A143396(A055999(n)+9)`
-/

namespace A273653.P9476757700168896621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (A055999 n + 9).toNat

end

end A273653.P9476757700168896621

/-! ## A273653.P997106758444769017

`A143396(eq[3, A002262(n)])`
-/

namespace A273653.P997106758444769017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273653.P997106758444769017

/-! ## A273653.P5265544479911113572

`A143396(eq[3, A140207(n)])`
-/

namespace A273653.P5265544479911113572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273653.P5265544479911113572

/-! ## A273653.P17962160664950946093

`A143396(A166136(n+2)-3)`
-/

namespace A273653.P17962160664950946093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (A166136 (n + 2) - 3).toNat

end

end A273653.P17962160664950946093

/-! ## A273653.P10547114520545479339

`A143396(eq[4, A002260(n+1)])`
-/

namespace A273653.P10547114520545479339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273653.P10547114520545479339

/-! ## A273653.P4569593822946825598

`A143396(eq[1, A144328(n+1)-2])`
-/

namespace A273653.P4569593822946825598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273653.P4569593822946825598

/-! ## A273653.P14672909763547505735

`A143396(eq[1, A327844(n+1)-2])`
-/

namespace A273653.P14672909763547505735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273653.P14672909763547505735

/-! ## A273653.P4521434977701074427

`A143396(A167487(n)+A005408(n))`
-/

namespace A273653.P4521434977701074427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (A167487 n + A005408 n).toNat

end

end A273653.P4521434977701074427

/-!
# A273654: Number of forests of labeled rooted trees of height at most 1, with n labels, four of which are used for root nodes and any root may contain >= 1 labels.

The programs for A273654, there is no canonical definition to state claims against.
-/

/-! ## A273654.P8039820012735206904

`A143396(A056000(n)+14)`
-/

namespace A273654.P8039820012735206904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (A056000 n + 14).toNat

end

end A273654.P8039820012735206904

/-! ## A273654.P15190195543130196677

`A143396(eq[4, A002262(n)])`
-/

namespace A273654.P15190195543130196677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273654.P15190195543130196677

/-! ## A273654.P8059303123711502283

`A143396(A000217(n+4)+4)`
-/

namespace A273654.P8059303123711502283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (A000217 (n + 4) + 4).toNat

end

end A273654.P8059303123711502283

/-! ## A273654.P9096724330416598460

`A143396(A046691(n+2)+8)`
-/

namespace A273654.P9096724330416598460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (A046691 (n + 2) + 8).toNat

end

end A273654.P9096724330416598460

/-! ## A273654.P13150428640033752417

`A143396(eq[2, A144328(n+1)-2])`
-/

namespace A273654.P13150428640033752417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273654.P13150428640033752417

/-! ## A273654.P11353371491499024149

`A143396(eq[2, A144328(n+1)/2])`
-/

namespace A273654.P11353371491499024149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A273654.P11353371491499024149

/-! ## A273654.P933055875996380882

`A143396(A103517(n+4)+A000124(n+2))`
-/

namespace A273654.P933055875996380882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (A103517 (n + 4) + A000124 (n + 2)).toNat

end

end A273654.P933055875996380882

/-! ## A273654.P568859392702371312

`A143396(A022962(n+8)+A000124(n+5))`
-/

namespace A273654.P568859392702371312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (A022962 (n + 8) + A000124 (n + 5)).toNat

end

end A273654.P568859392702371312

/-!
# A273655: Number of forests of labeled rooted trees of height at most 1, with n labels, five of which are used for root nodes and any root may contain >= 1 labels.

The programs for A273655, there is no canonical definition to state claims against.
-/

/-! ## A273655.P10854938326460853532

`A143396(A167499(n+4))`
-/

namespace A273655.P10854938326460853532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (A167499 (n + 4)).toNat

end

end A273655.P10854938326460853532

/-! ## A273655.P16309016189762511568

`A143396(eq[5, A002262(n)])`
-/

namespace A273655.P16309016189762511568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273655.P16309016189762511568

/-! ## A273655.P14070649074958349590

`A143396(A000217(n+5)+5)`
-/

namespace A273655.P14070649074958349590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (A000217 (n + 5) + 5).toNat

end

end A273655.P14070649074958349590

/-! ## A273655.P7014546645511179999

`A143396(eq[6, A002260(n+1)])`
-/

namespace A273655.P7014546645511179999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273655.P7014546645511179999

/-! ## A273655.P129377139735900095

`A143396(A000124(n+6)-(n+2))`
-/

namespace A273655.P129377139735900095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (A000124 (n + 6) - (n + 2 : ℤ)).toNat

end

end A273655.P129377139735900095

/-! ## A273655.P7457489340753206135

`A143396(A002522(n+5)-A046691(n+2))`
-/

namespace A273655.P7457489340753206135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (A002522 (n + 5) - A046691 (n + 2)).toNat

end

end A273655.P7457489340753206135

/-! ## A273655.P12556063213631551992

`A143396(A022962(n+8)+A000124(n+6))`
-/

namespace A273655.P12556063213631551992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (A022962 (n + 8) + A000124 (n + 6)).toNat

end

end A273655.P12556063213631551992

/-!
# A273656: Number of forests of labeled rooted trees of height at most 1, with n labels, six of which are used for root nodes and any root may contain >= 1 labels.

The programs for A273656, there is no canonical definition to state claims against.
-/

/-! ## A273656.P5267084734372238880

`A143396(eq[6, A002262(n)])`
-/

namespace A273656.P5267084734372238880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273656.P5267084734372238880

/-! ## A273656.P2762549368425000159

`A143396(eq[11, A140207(n)])`
-/

namespace A273656.P2762549368425000159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273656.P2762549368425000159

/-! ## A273656.P15063281816778330671

`A143396(eq[64, A059268(n)])`
-/

namespace A273656.P15063281816778330671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273656.P15063281816778330671

/-! ## A273656.P17491071307973816766

`A143396(A167614(n+5)+3)`
-/

namespace A273656.P17491071307973816766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (A167614 (n + 5) + 3).toNat

end

end A273656.P17491071307973816766

/-! ## A273656.P10477109414424719674

`A143396(eq[5, A327844(n+1)])`
-/

namespace A273656.P10477109414424719674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273656.P10477109414424719674

/-! ## A273656.P5886292582291679821

`A143396(eq[6, A144328(n+1)])`
-/

namespace A273656.P5886292582291679821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273656.P5886292582291679821

/-! ## A273656.P3474109571033422828

`A143396(eq[7, A002260(n+1)])`
-/

namespace A273656.P3474109571033422828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273656.P3474109571033422828

/-!
# A273657: Number of forests of labeled rooted trees of height at most 1, with n labels, seven of which are used for root nodes and any root may contain >= 1 labels.

The programs for A273657, there is no canonical definition to state claims against.
-/

/-! ## A273657.P12841226217835124752

`A143396(eq[7, A002262(n)])`
-/

namespace A273657.P12841226217835124752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273657.P12841226217835124752

/-! ## A273657.P13951192204902903683

`A143396(eq[15, A140207(n)])`
-/

namespace A273657.P13951192204902903683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273657.P13951192204902903683

/-! ## A273657.P11272544839526554357

`A143396(eq[7, A130270(n+1)])`
-/

namespace A273657.P11272544839526554357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273657.P11272544839526554357

/-! ## A273657.P15911374105960497671

`A143396(eq[7, A144328(n+1)])`
-/

namespace A273657.P15911374105960497671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273657.P15911374105960497671

/-! ## A273657.P16225442611820996787

`A143396(eq[8, A002260(n+1)])`
-/

namespace A273657.P16225442611820996787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273657.P16225442611820996787

/-!
# A273658: Number of forests of labeled rooted trees of height at most 1, with n labels, eight of which are used for root nodes and any root may contain >= 1 labels.

The programs for A273658, there is no canonical definition to state claims against.
-/

/-! ## A273658.P2213451921926086404

`A143396(eq[8, A002262(n)])`
-/

namespace A273658.P2213451921926086404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273658.P2213451921926086404

/-! ## A273658.P523491899788871330

`A143396(eq[7, A327844(n+1)])`
-/

namespace A273658.P523491899788871330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273658.P523491899788871330

/-! ## A273658.P11623108749299142070

`A143396(eq[8, A144328(n+1)])`
-/

namespace A273658.P11623108749299142070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273658.P11623108749299142070

/-! ## A273658.P12552566433644906702

`A143396(eq[9, A002260(n+1)])`
-/

namespace A273658.P12552566433644906702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273658.P12552566433644906702

/-! ## A273658.P11538852667375021565

`A143396(eq[17, A158405(n+1)])`
-/

namespace A273658.P11538852667375021565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273658.P11538852667375021565

/-!
# A273659: Number of forests of labeled rooted trees of height at most 1, with n labels, nine of which are used for root nodes and any root may contain >= 1 labels.

The programs for A273659, there is no canonical definition to state claims against.
-/

/-! ## A273659.P948651647883050367

`A143396(eq[9, A002262(n)])`
-/

namespace A273659.P948651647883050367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273659.P948651647883050367

/-! ## A273659.P12020897849064442226

`A143396(eq[9, A130270(n+1)])`
-/

namespace A273659.P12020897849064442226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273659.P12020897849064442226

/-! ## A273659.P16827173576857954350

`A143396(eq[9, A144328(n+1)])`
-/

namespace A273659.P16827173576857954350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273659.P16827173576857954350

/-! ## A273659.P6334528754129476919

`A143396(eq[10, A002260(n+1)])`
-/

namespace A273659.P6334528754129476919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273659.P6334528754129476919

/-! ## A273659.P6259540028333447837

`A143396(eq[19, A158405(n+1)])`
-/

namespace A273659.P6259540028333447837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273659.P6259540028333447837

/-!
# A273660: Number of forests of labeled rooted trees of height at most 1, with n labels, ten of which are used for root nodes and any root may contain >= 1 labels.

The programs for A273660, there is no canonical definition to state claims against.
-/

/-! ## A273660.P9694970510480843652

`A143396(eq[10, A002262(n)])`
-/

namespace A273660.P9694970510480843652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273660.P9694970510480843652

/-! ## A273660.P10942608655662504455

`A143396(eq[42, A140207(n)])`
-/

namespace A273660.P10942608655662504455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273660.P10942608655662504455

/-! ## A273660.P8161982993525275261

`A143396(A167499(n+9)+5)`
-/

namespace A273660.P8161982993525275261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (A167499 (n + 9) + 5).toNat

end

end A273660.P8161982993525275261

/-! ## A273660.P17332021568546919155

`A143396(eq[10, A144328(n+1)])`
-/

namespace A273660.P17332021568546919155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273660.P17332021568546919155

/-! ## A273660.P14267399406753672489

`A143396(eq[11, A002260(n+1)])`
-/

namespace A273660.P14267399406753672489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273660.P14267399406753672489

/-!
# A273661: Number of forests of labeled rooted trees of height at most 1, with 2n labels, n of which are used for root nodes and any root may contain >= 1 labels.

The programs for A273661, there is no canonical definition to state claims against.
-/

/-! ## A273661.P1316441843434893489

`A143396(∑[4*n])`
-/

namespace A273661.P1316441843434893489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273661.P1316441843434893489

/-! ## A273661.P8138368236898962687

`record[A003982(n)*A143396(n)]`
-/

namespace A273661.P8138368236898962687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A143396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273661.P8138368236898962687

/-! ## A273661.P6396665470953958585

`record[A143396(n*A004275(n))]`
-/

namespace A273661.P6396665470953958585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143396 ((n : ℤ) * A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273661.P6396665470953958585

/-! ## A273661.P1716521224286162095

`record[A124423(n)*A126869(n)]`
-/

namespace A273661.P1716521224286162095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124423 n * A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273661.P1716521224286162095

/-! ## A273661.P13510463086366815663

`record[A124423(n)*A126930(n)]`
-/

namespace A273661.P13510463086366815663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124423 n * A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273661.P13510463086366815663

/-!
# A273662: Least monotonic left inverse for A256450: a(1) = 0; for n > 1, a(n) = A257680(n) + a(n-1).

The programs for A273662, the canonical program `A273662.P15426500531253154143` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273662 has offset 1).

The definition of A273662 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257680, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A273662.P1375416254378545524

`A257682(n+1)-1`
-/

namespace A273662.P1375416254378545524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257682 (n + 1) - 1

end

end A273662.P1375416254378545524

namespace A273662

/-- `A257682(n+1)-1` -/
def P1375416254378545524.Spec : Prop :=
  ∀ n, P1375416254378545524.a n = A273662 (n + 1)

end A273662

/-! ## A273662.P15426500531253154143

`A257680(n+1)+a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A273662

/-- `A257680(n+1)+a(n-1)` -/
def P15426500531253154143.Spec : Prop :=
  ∀ n, P15426500531253154143.a n = A273662 (n + 1)

theorem P15426500531253154143.correct : P15426500531253154143.Spec := by
  intro n
  simp only [A273662, Nat.add_sub_cancel]

end A273662

/-! ## A273662.P17874661217631159782

`∑[A257680(n+1)]-1`
-/

namespace A273662.P17874661217631159782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A273662.P17874661217631159782

namespace A273662

/-- `∑[A257680(n+1)]-1` -/
def P17874661217631159782.Spec : Prop :=
  ∀ n, P17874661217631159782.a n = A273662 (n + 1)

end A273662

/-! ## A273662.P14786875833772928321

`∑[char[A256450(n+1)-1]]`
-/

namespace A273662.P14786875833772928321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256450 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273662.P14786875833772928321

namespace A273662

/-- `∑[char[A256450(n+1)-1]]` -/
def P14786875833772928321.Spec : Prop :=
  ∀ n, (P14786875833772928321.a n : ℤ) = A273662 (n + 1)

end A273662

/-! ## A273662.P3961989034471872614

`∑[char[A256450(n)-1]]-1`
-/

namespace A273662.P3961989034471872614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256450 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A273662.P3961989034471872614

namespace A273662

/-- `∑[char[A256450(n)-1]]-1` -/
def P3961989034471872614.Spec : Prop :=
  ∀ n, P3961989034471872614.a n = A273662 (n + 1)

end A273662

/-! ## A273662.P18300922963016431242

`∑[char[comp[A255411(n)-1]]]-1`
-/

namespace A273662.P18300922963016431242
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 n - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A273662.P18300922963016431242

namespace A273662

/-- `∑[char[comp[A255411(n)-1]]]-1` -/
def P18300922963016431242.Spec : Prop :=
  ∀ n, P18300922963016431242.a n = A273662 (n + 1)

end A273662

/-! ## A273662.P13447538745755421107

`A023443(A257682(n+1))`
-/

namespace A273662.P13447538745755421107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A257682 (n + 1)).toNat

end

end A273662.P13447538745755421107

namespace A273662

/-- `A023443(A257682(n+1))` -/
def P13447538745755421107.Spec : Prop :=
  ∀ n, P13447538745755421107.a n = A273662 (n + 1)

end A273662

/-! ## A273662.P18223331264910325744

`∑[and(A040990(n+1), A257680(n+1))]`
-/

namespace A273662.P18223331264910325744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040990 (n + 1)) (A257680 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273662.P18223331264910325744

namespace A273662

/-- `∑[and(A040990(n+1), A257680(n+1))]` -/
def P18223331264910325744.Spec : Prop :=
  ∀ n, P18223331264910325744.a n = A273662 (n + 1)

end A273662

/-! ## A273662.P5621191478965926311

`∑[A059419(C(n, n*A257079(n+1))+1)]`
-/

namespace A273662.P5621191478965926311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059419 (Nat.choose n ((n : ℤ) * A257079 (n + 1)).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273662.P5621191478965926311

namespace A273662

/-- `∑[A059419(C(n, n*A257079(n+1))+1)]` -/
def P5621191478965926311.Spec : Prop :=
  ∀ n, P5621191478965926311.a n = A273662 (n + 1)

end A273662

/-! ## A273662.P1697800923393212936

`∑[A051903(A275732(n+1))]-1`
-/

namespace A273662.P1697800923393212936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A275732 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A273662.P1697800923393212936

namespace A273662

/-- `∑[A051903(A275732(n+1))]-1` -/
def P1697800923393212936.Spec : Prop :=
  ∀ n, P1697800923393212936.a n = A273662 (n + 1)

end A273662

/-! ## A273662.P5959999060263891734

`∑[A257680(A257687(2*n+1))*A257680(n+1)]`
-/

namespace A273662.P5959999060263891734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 (A257687 (2 * n + 1)).toNat * A257680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273662.P5959999060263891734

namespace A273662

/-- `∑[A257680(A257687(2*n+1))*A257680(n+1)]` -/
def P5959999060263891734.Spec : Prop :=
  ∀ n, P5959999060263891734.a n = A273662 (n + 1)

end A273662

/-! ## A273662.P16708557202564684848

`∑[A276950(A225901(n+1))]-1`
-/

namespace A273662.P16708557202564684848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276950 (A225901 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A273662.P16708557202564684848

namespace A273662

/-- `∑[A276950(A225901(n+1))]-1` -/
def P16708557202564684848.Spec : Prop :=
  ∀ n, P16708557202564684848.a n = A273662 (n + 1)

end A273662

/-! ## A273662.P2773354314875253034

`∑[A276950(A275848(n+1))]-1`
-/

namespace A273662.P2773354314875253034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276950 (A275848 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A273662.P2773354314875253034

namespace A273662

/-- `∑[A276950(A275848(n+1))]-1` -/
def P2773354314875253034.Spec : Prop :=
  ∀ n, P2773354314875253034.a n = A273662 (n + 1)

end A273662

/-! ## A273662.P13116885766475226866

`∑[A276950(A275958(n+1))]-1`
-/

namespace A273662.P13116885766475226866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276950 (A275958 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A273662.P13116885766475226866

namespace A273662

/-- `∑[A276950(A275958(n+1))]-1` -/
def P13116885766475226866.Spec : Prop :=
  ∀ n, P13116885766475226866.a n = A273662 (n + 1)

end A273662

/-! ## A273662.P6522102948417937280

`A273663(A275848(A257680(n+1)+n))`
-/

namespace A273662.P6522102948417937280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273663 (A275848 (A257680 (n + 1) + (n : ℤ)).toNat).toNat

end

end A273662.P6522102948417937280

namespace A273662

/-- `A273663(A275848(A257680(n+1)+n))` -/
def P6522102948417937280.Spec : Prop :=
  ∀ n, P6522102948417937280.a n = A273662 (n + 1)

end A273662

/-! ## A273662.P11366685572270868697

`∑[A276950(A273668(n+1))]-1`
-/

namespace A273662.P11366685572270868697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276950 (A273668 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A273662.P11366685572270868697

namespace A273662

/-- `∑[A276950(A273668(n+1))]-1` -/
def P11366685572270868697.Spec : Prop :=
  ∀ n, P11366685572270868697.a n = A273662 (n + 1)

end A273662

/-! ## A273662.P13090189985039101317

`∑[A276950(A275846(n+1))]-1`
-/

namespace A273662.P13090189985039101317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276950 (A275846 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A273662.P13090189985039101317

namespace A273662

/-- `∑[A276950(A275846(n+1))]-1` -/
def P13090189985039101317.Spec : Prop :=
  ∀ n, P13090189985039101317.a n = A273662 (n + 1)

end A273662

/-! ## A273662.P13026950282078550527

`∑[A257680(comp[(-20)^n])]`
-/

namespace A273662.P13026950282078550527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-20) ^ n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273662.P13026950282078550527

namespace A273662

/-- `∑[A257680(comp[(-20)^n])]` -/
def P13026950282078550527.Spec : Prop :=
  ∀ n, P13026950282078550527.a n = A273662 (n + 1)

end A273662

/-!
# A273663: Least monotonic left inverse for A273670: a(1) = 0; for n > 1, a(n) = A257680(A225901(n)) + a(n-1).

The programs for A273663, the canonical program `A273663.P4019550503399085777` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273663 has offset 1).

The definition of A273663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273663.P6099914253927208453

`A257680(A225901(n+1))+a(n-1)` with `a(0)=0, a(1)=0, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A273663.P6099914253927208453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A257680 (A225901 (n + 1)).toNat + a (n - 1)

end

end A273663.P6099914253927208453

namespace A273663

/-- `A257680(A225901(n+1))+a(n-1)` -/
def P6099914253927208453.Spec : Prop :=
  ∀ n, P6099914253927208453.a n = A273663 (n + 1)

end A273663

/-! ## A273663.P4019550503399085777

`∑[char[A273670(n+1)-1]]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A273663

/-- `∑[char[A273670(n+1)-1]]` -/
def P4019550503399085777.Spec : Prop :=
  ∀ n, (P4019550503399085777.a n : ℤ) = A273663 (n + 1)

theorem P4019550503399085777.correct : P4019550503399085777.Spec := by
  intro n
  simp only [A273663, Nat.add_sub_cancel]

end A273663

/-! ## A273663.P7449223593944962076

`∑[char[A273670(n)-1]]-1`
-/

namespace A273663.P7449223593944962076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A273663.P7449223593944962076

namespace A273663

/-- `∑[char[A273670(n)-1]]-1` -/
def P7449223593944962076.Spec : Prop :=
  ∀ n, P7449223593944962076.a n = A273663 (n + 1)

end A273663

/-! ## A273663.P13517890027339483987

`∑[(A275734(n+1)+1)%2]-1`
-/

namespace A273663.P13517890027339483987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275734 (n + 1) + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A273663.P13517890027339483987

namespace A273663

/-- `∑[(A275734(n+1)+1)%2]-1` -/
def P13517890027339483987.Spec : Prop :=
  ∀ n, P13517890027339483987.a n = A273663 (n + 1)

end A273663

/-! ## A273663.P227615158633955952

`∑[val(A020639(A275734(n+1)), 2)]-1`
-/

namespace A273663.P227615158633955952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (A275734 (n + 1)).toNat).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A273663.P227615158633955952

namespace A273663

/-- `∑[val(A020639(A275734(n+1)), 2)]-1` -/
def P227615158633955952.Spec : Prop :=
  ∀ n, P227615158633955952.a n = A273663 (n + 1)

end A273663

/-! ## A273663.P6655979507916921158

`A007814(A276010(n+1)²+1)+a(n-1)` with `a(0)=0`
-/

namespace A273663.P6655979507916921158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007814 (A276010 (n + 1) ^ 2 + 1).toNat + a (n - 1)

end

end A273663.P6655979507916921158

namespace A273663

/-- `A007814(A276010(n+1)²+1)+a(n-1)` -/
def P6655979507916921158.Spec : Prop :=
  ∀ n, P6655979507916921158.a n = A273663 (n + 1)

end A273663

/-! ## A273663.P16841068135018990716

`A276952(A276950(n)+n)-A276950(n)`
-/

namespace A273663.P16841068135018990716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276952 (A276950 n + (n : ℤ)).toNat - A276950 n

end

end A273663.P16841068135018990716

namespace A273663

/-- `A276952(A276950(n)+n)-A276950(n)` -/
def P16841068135018990716.Spec : Prop :=
  ∀ n, P16841068135018990716.a n = A273663 (n + 1)

end A273663

/-! ## A273663.P7731139527993993463

`A276952(n+1)-1`
-/

namespace A273663.P7731139527993993463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276952 (n + 1) - 1

end

end A273663.P7731139527993993463

namespace A273663

/-- `A276952(n+1)-1` -/
def P7731139527993993463.Spec : Prop :=
  ∀ n, P7731139527993993463.a n = A273663 (n + 1)

end A273663

/-! ## A273663.P17672181652988773872

`∑[A276950(n+1)]-1`
-/

namespace A273663.P17672181652988773872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A273663.P17672181652988773872

namespace A273663

/-- `∑[A276950(n+1)]-1` -/
def P17672181652988773872.Spec : Prop :=
  ∀ n, P17672181652988773872.a n = A273663 (n + 1)

end A273663

/-! ## A273663.P3778616879104607177

`n-∑[n²%A276949(n+1)]`
-/

namespace A273663.P3778616879104607177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A276949 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273663.P3778616879104607177

namespace A273663

/-- `n-∑[n²%A276949(n+1)]` -/
def P3778616879104607177.Spec : Prop :=
  ∀ n, P3778616879104607177.a n = A273663 (n + 1)

end A273663

/-! ## A273663.P15802526317972533084

`∑[A276952(n)²%A276952(n+1)]`
-/

namespace A273663.P15802526317972533084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276952 n ^ 2) (A276952 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273663.P15802526317972533084

namespace A273663

/-- `∑[A276952(n)²%A276952(n+1)]` -/
def P15802526317972533084.Spec : Prop :=
  ∀ n, P15802526317972533084.a n = A273663 (n + 1)

end A273663

/-! ## A273663.P8275504592564298760

`∑[A257680(A225901(n+1))]-1`
-/

namespace A273663.P8275504592564298760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 (A225901 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A273663.P8275504592564298760

namespace A273663

/-- `∑[A257680(A225901(n+1))]-1` -/
def P8275504592564298760.Spec : Prop :=
  ∀ n, P8275504592564298760.a n = A273663 (n + 1)

end A273663

/-! ## A273663.P4348404762620604610

`∑[A257680(A275845(n+1))]-1`
-/

namespace A273663.P4348404762620604610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 (A275845 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A273663.P4348404762620604610

namespace A273663

/-- `∑[A257680(A275845(n+1))]-1` -/
def P4348404762620604610.Spec : Prop :=
  ∀ n, P4348404762620604610.a n = A273663 (n + 1)

end A273663

/-! ## A273663.P4786318583105187279

`∑[A257680(A275847(n+1))]-1`
-/

namespace A273663.P4786318583105187279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 (A275847 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A273663.P4786318583105187279

namespace A273663

/-- `∑[A257680(A275847(n+1))]-1` -/
def P4786318583105187279.Spec : Prop :=
  ∀ n, P4786318583105187279.a n = A273663 (n + 1)

end A273663

/-! ## A273663.P7076216361632848000

`∑[A276950(A276950(n+1)+A028637(2*n))]`
-/

namespace A273663.P7076216361632848000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276950 (A276950 (n + 1) + A028637 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273663.P7076216361632848000

namespace A273663

/-- `∑[A276950(A276950(n+1)+A028637(2*n))]` -/
def P7076216361632848000.Spec : Prop :=
  ∀ n, P7076216361632848000.a n = A273663 (n + 1)

end A273663

/-! ## A273663.P2917240399349996604

`∑[A257680(A273667(n+1))]-1`
-/

namespace A273663.P2917240399349996604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 (A273667 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A273663.P2917240399349996604

namespace A273663

/-- `∑[A257680(A273667(n+1))]-1` -/
def P2917240399349996604.Spec : Prop :=
  ∀ n, P2917240399349996604.a n = A273663 (n + 1)

end A273663

/-! ## A273663.P12811522169192950540

`∑[and(A006095(n), A276950(n+1))]`
-/

namespace A273663.P12811522169192950540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006095 n) (A276950 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273663.P12811522169192950540

namespace A273663

/-- `∑[and(A006095(n), A276950(n+1))]` -/
def P12811522169192950540.Spec : Prop :=
  ∀ n, P12811522169192950540.a n = A273663 (n + 1)

end A273663

/-!
# A273664: a(n) = A249746(A032766(n)).

The programs for A273664, the canonical program `A273664.P16379432266781684754` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273664 has offset 1).

The definition of A273664 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249824, A254050, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A273664.P11094933361720009889

`A249746(A032766(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A273664.P11094933361720009889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249746 (A032766 (n + 1)).toNat

end

end A273664.P11094933361720009889

namespace A273664

/-- `A249746(A032766(n+1))` -/
def P11094933361720009889.Spec : Prop :=
  ∀ n, P11094933361720009889.a n = A273664 (n + 1)

end A273664

/-! ## A273664.P12116202650666884264

`A249746(A254049(A249745(n+1)))`
-/

namespace A273664.P12116202650666884264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249746 (A254049 (A249745 (n + 1)).toNat).toNat

end

end A273664.P12116202650666884264

namespace A273664

/-- `A249746(A254049(A249745(n+1)))` -/
def P12116202650666884264.Spec : Prop :=
  ∀ n, P12116202650666884264.a n = A273664 (n + 1)

end A273664

/-! ## A273664.P16379432266781684754

`A249824(A254050(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A273664

/-- `A249824(A254050(n+1))` -/
def P16379432266781684754.Spec : Prop :=
  ∀ n, P16379432266781684754.a n = A273664 (n + 1)

theorem P16379432266781684754.correct : P16379432266781684754.Spec := by
  intro n
  simp only [A273664, Nat.add_sub_cancel]

end A273664

/-! ## A273664.P4632510948389199305

`A249746(round(3*n/2)+1)`
-/

namespace A273664.P4632510948389199305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249746 (SequenceMachineLib.roundAway (3 * ((n : ℚ) / 2)) + 1).toNat

end

end A273664.P4632510948389199305

namespace A273664

/-- `A249746(round(3*n/2)+1)` -/
def P4632510948389199305.Spec : Prop :=
  ∀ n, P4632510948389199305.a n = A273664 (n + 1)

end A273664

/-! ## A273664.P11793244433200804047

`A353420(A007310(n+1))`
-/

namespace A273664.P11793244433200804047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353420 (A007310 (n + 1)).toNat

end

end A273664.P11793244433200804047

namespace A273664

/-- `A353420(A007310(n+1))` -/
def P11793244433200804047.Spec : Prop :=
  ∀ n, P11793244433200804047.a n = A273664 (n + 1)

end A273664

/-! ## A273664.P8000691383462691517

`A353420(A047233(n+1)+1)`
-/

namespace A273664.P8000691383462691517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353420 (A047233 (n + 1) + 1).toNat

end

end A273664.P8000691383462691517

namespace A273664

/-- `A353420(A047233(n+1)+1)` -/
def P8000691383462691517.Spec : Prop :=
  ∀ n, P8000691383462691517.a n = A273664 (n + 1)

end A273664

/-! ## A273664.P16496151279854792202

`A353420(A091999(n+1)/2)`
-/

namespace A273664.P16496151279854792202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353420 (SequenceMachineLib.roundAway ((A091999 (n + 1) : ℚ) / 2)).toNat

end

end A273664.P16496151279854792202

namespace A273664

/-- `A353420(A091999(n+1)/2)` -/
def P16496151279854792202.Spec : Prop :=
  ∀ n, P16496151279854792202.a n = A273664 (n + 1)

end A273664

/-! ## A273664.P9466974529262999981

`A353420(A091999(n+1))`
-/

namespace A273664.P9466974529262999981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353420 (A091999 (n + 1)).toNat

end

end A273664.P9466974529262999981

namespace A273664

/-- `A353420(A091999(n+1))` -/
def P9466974529262999981.Spec : Prop :=
  ∀ n, P9466974529262999981.a n = A273664 (n + 1)

end A273664

/-! ## A273664.P9708906077736331809

`A353420(A273669(n+1)+n)`
-/

namespace A273664.P9708906077736331809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353420 (A273669 (n + 1) + (n : ℤ)).toNat

end

end A273664.P9708906077736331809

namespace A273664

/-- `A353420(A273669(n+1)+n)` -/
def P9708906077736331809.Spec : Prop :=
  ∀ n, P9708906077736331809.a n = A273664 (n + 1)

end A273664

/-! ## A273664.P18011076182353462452

`A126760(A003961(A007310(A003602(2*n+1))))`
-/

namespace A273664.P18011076182353462452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A003961 (A007310 (A003602 (2 * n + 1)).toNat).toNat).toNat

end

end A273664.P18011076182353462452

namespace A273664

/-- `A126760(A003961(A007310(A003602(2*n+1))))` -/
def P18011076182353462452.Spec : Prop :=
  ∀ n, P18011076182353462452.a n = A273664 (n + 1)

end A273664

/-! ## A273664.P4557567775295477215

`A353336(A259755(n+1))`
-/

namespace A273664.P4557567775295477215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353336 (A259755 (n + 1)).toNat

end

end A273664.P4557567775295477215

namespace A273664

/-- `A353336(A259755(n+1))` -/
def P4557567775295477215.Spec : Prop :=
  ∀ n, P4557567775295477215.a n = A273664 (n + 1)

end A273664

/-! ## A273664.P10004802809571331318

`A126760(A118306(A063221(n+1)))`
-/

namespace A273664.P10004802809571331318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A118306 (A063221 (n + 1)).toNat).toNat

end

end A273664.P10004802809571331318

namespace A273664

/-- `A126760(A118306(A063221(n+1)))` -/
def P10004802809571331318.Spec : Prop :=
  ∀ n, P10004802809571331318.a n = A273664 (n + 1)

end A273664

/-! ## A273664.P4033143574426405143

`A249810(A306771(n+1))`
-/

namespace A273664.P4033143574426405143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (A306771 (n + 1)).toNat

end

end A273664.P4033143574426405143

namespace A273664

/-- `A249810(A306771(n+1))` -/
def P4033143574426405143.Spec : Prop :=
  ∀ n, P4033143574426405143.a n = A273664 (n + 1)

end A273664

/-! ## A273664.P2569275677200969441

`A249810(A007310(n+1)+2*A007310(n+1))`
-/

namespace A273664.P2569275677200969441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (A007310 (n + 1) + 2 * A007310 (n + 1)).toNat

end

end A273664.P2569275677200969441

namespace A273664

/-- `A249810(A007310(n+1)+2*A007310(n+1))` -/
def P2569275677200969441.Spec : Prop :=
  ∀ n, P2569275677200969441.a n = A273664 (n + 1)

end A273664

/-! ## A273664.P6755190499892089060

`A253887(A254049(A191450(∑[n+1])))`
-/

namespace A273664.P6755190499892089060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253887 (A254049 (A191450 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A273664.P6755190499892089060

namespace A273664

/-- `A253887(A254049(A191450(∑[n+1])))` -/
def P6755190499892089060.Spec : Prop :=
  ∀ n, P6755190499892089060.a n = A273664 (n + 1)

end A273664

/-!
# A273665: a(0) = 0; for n >= 1: if n = A153880(k) for some k, then a(n) = 2*a(k), otherwise, n = A273670(h) for some h, and a(n) = 1 + 2*a(h).

The programs for A273665, there is no canonical definition to state claims against.
-/

/-! ## A273665.P15312234689697200443

`A255565(A273667(n))`
-/

namespace A273665.P15312234689697200443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255565 (A273667 n).toNat

end

end A273665.P15312234689697200443

/-! ## A273665.P11192819171305356849

`A255565(A275835(A225901(n)))`
-/

namespace A273665.P11192819171305356849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255565 (A275835 (A225901 n).toNat).toNat

end

end A273665.P11192819171305356849

/-! ## A273665.P13895374870594601678

`A255565(A225901(A275837(n)))`
-/

namespace A273665.P13895374870594601678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255565 (A225901 (A275837 n).toNat).toNat

end

end A273665.P13895374870594601678

/-! ## A273665.P15318676067504226052

`A255565(A275835(A273668(A275835(n))))`
-/

namespace A273665.P15318676067504226052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255565 (A275835 (A273668 (A275835 n).toNat).toNat).toNat

end

end A273665.P15318676067504226052

/-! ## A273665.P6362193624628519031

`A257690(n+1)-∑{d}[2^n, #%2]`
-/

namespace A273665.P6362193624628519031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257690 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ)

end

end A273665.P6362193624628519031

/-!
# A273666: Permutation of nonnegative integers: a(0) = 0; after which, a(2n) = A153880(a(n)), a(2n+1) = A273670(a(n)).

The programs for A273666, there is no canonical definition to state claims against.
-/

/-! ## A273666.P15507740042222262365

`A273668(A255566(n))`
-/

namespace A273666.P15507740042222262365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273668 (A255566 n).toNat

end

end A273666.P15507740042222262365

/-! ## A273666.P15761997034530734009

`A273663(A225901(A275836(A255566(2*n+1))))`
-/

namespace A273666.P15761997034530734009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273663 (A225901 (A275836 (A255566 (2 * n + 1)).toNat).toNat).toNat

end

end A273666.P15761997034530734009

/-!
# A273667: Permutation of nonnegative integers: a(0) = 0, a(A153880(n)) = A255411(a(n)), a(A273670(n)) = A256450(a(n)).

The programs for A273667, there is no canonical definition to state claims against.
-/

/-! ## A273667.P9773354988947541781

`A255566(A273665(n))`
-/

namespace A273667.P9773354988947541781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255566 (A273665 n).toNat

end

end A273667.P9773354988947541781

/-! ## A273667.P2900518889069887054

`A275835(A225901(n))`
-/

namespace A273667.P2900518889069887054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275835 (A225901 n).toNat

end

end A273667.P2900518889069887054

/-! ## A273667.P8067602792833240460

`A275835(A275957(A060125(n)))`
-/

namespace A273667.P8067602792833240460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275835 (A275957 (A060125 n).toNat).toNat

end

end A273667.P8067602792833240460

/-! ## A273667.P11469103079396360088

`A275835(A060125(A275958(n)))`
-/

namespace A273667.P11469103079396360088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275835 (A060125 (A275958 n).toNat).toNat

end

end A273667.P11469103079396360088

/-! ## A273667.P1409524739429204711

`A275835(A255411(n)-(A153880(n)+n))`
-/

namespace A273667.P1409524739429204711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275835 (A255411 n - (A153880 n + (n : ℤ))).toNat

end

end A273667.P1409524739429204711

/-! ## A273667.P203519315090009418

`A275835(A255411(n)-n-A153880(n))`
-/

namespace A273667.P203519315090009418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275835 (A255411 n - (n : ℤ) - A153880 n).toNat

end

end A273667.P203519315090009418

/-! ## A273667.P1406771236620606193

`A275835(A275837(A273668(n)))`
-/

namespace A273667.P1406771236620606193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275835 (A275837 (A273668 n).toNat).toNat

end

end A273667.P1406771236620606193

/-! ## A273667.P11495718883454370576

`A275835(A275837(A275842(A276012(n))))`
-/

namespace A273667.P11495718883454370576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275835 (A275837 (A275842 (A276012 n).toNat).toNat).toNat

end

end A273667.P11495718883454370576

/-! ## A273667.P11403118937839350329

`A225901(A275837(n))`
-/

namespace A273667.P11403118937839350329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A275837 n).toNat

end

end A273667.P11403118937839350329

/-! ## A273667.P8639048652190023001

`A276011(A275841(n))`
-/

namespace A273667.P8639048652190023001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276011 (A275841 n).toNat

end

end A273667.P8639048652190023001

/-! ## A273667.P7849576107663285723

`A276011(A273663(A275837(A273670(n))))`
-/

namespace A273667.P7849576107663285723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276011 (A273663 (A275837 (A273670 n).toNat).toNat).toNat

end

end A273667.P7849576107663285723

/-! ## A273667.P13750569570302033777

`A275837(A273668(A275837(A257684(A255411(n)))))`
-/

namespace A273667.P13750569570302033777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275837 (A273668 (A275837 (A257684 (A255411 n).toNat).toNat).toNat).toNat

end

end A273667.P13750569570302033777

/-! ## A273667.P11432804451549063610

`A275837(A273668(A275837(A275837(A275838(n)))))`
-/

namespace A273667.P11432804451549063610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275837 (A273668 (A275837 (A275837 (A275838 n).toNat).toNat).toNat).toNat

end

end A273667.P11432804451549063610

/-! ## A273667.P2940645293403056459

`A275835(A273668(A275835(n)))`
-/

namespace A273667.P2940645293403056459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275835 (A273668 (A275835 n).toNat).toNat

end

end A273667.P2940645293403056459

/-!
# A273668: Permutation of nonnegative integers: a(0) = 0, a(A255411(n)) = A153880(a(n)), a(A256450(n)) = A273670(a(n)).

The programs for A273668, there is no canonical definition to state claims against.
-/

/-! ## A273668.P15496581232505074122

`A273666(A255565(n))`
-/

namespace A273668.P15496581232505074122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273666 (A255565 n).toNat

end

end A273668.P15496581232505074122

/-! ## A273668.P2155483229209238726

`A275838(A225901(n))`
-/

namespace A273668.P2155483229209238726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275838 (A225901 n).toNat

end

end A273668.P2155483229209238726

/-! ## A273668.P13733656197568844979

`A275838(A255411(n)-(A153880(n)+n))`
-/

namespace A273668.P13733656197568844979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275838 (A255411 n - (A153880 n + (n : ℤ))).toNat

end

end A273668.P13733656197568844979

/-! ## A273668.P18272992589274681020

`A275838(A255411(n)-n-A153880(n))`
-/

namespace A273668.P18272992589274681020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275838 (A255411 n - (n : ℤ) - A153880 n).toNat

end

end A273668.P18272992589274681020

/-! ## A273668.P3534466194023311892

`A273663(A275838(A273670(A276012(n))))`
-/

namespace A273668.P3534466194023311892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273663 (A275838 (A273670 (A276012 n).toNat).toNat).toNat

end

end A273668.P3534466194023311892

/-! ## A273668.P6179762233746788249

`A275838(A275836(A273667(n)))`
-/

namespace A273668.P6179762233746788249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275838 (A275836 (A273667 n).toNat).toNat

end

end A273668.P6179762233746788249

/-! ## A273668.P7255760227754063305

`A275842(A276012(n))`
-/

namespace A273668.P7255760227754063305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275842 (A276012 n).toNat

end

end A273668.P7255760227754063305

/-! ## A273668.P8427457364798801070

`A275842(A273663(A225901(A256450(n))))`
-/

namespace A273668.P8427457364798801070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275842 (A273663 (A225901 (A256450 n).toNat).toNat).toNat

end

end A273668.P8427457364798801070

/-! ## A273668.P812529117978878017

`A275838(A276011(A273663(A275952(n))))`
-/

namespace A273668.P812529117978878017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275838 (A276011 (A273663 (A275952 n).toNat).toNat).toNat

end

end A273668.P812529117978878017

/-! ## A273668.P16348564841359836569

`A275838(A276012(A273662(A275954(n))))`
-/

namespace A273668.P16348564841359836569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275838 (A276012 (A273662 (A275954 n).toNat).toNat).toNat

end

end A273668.P16348564841359836569

/-! ## A273668.P14763744510614181456

`A225901(A275836(n))`
-/

namespace A273668.P14763744510614181456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A275836 n).toNat

end

end A273668.P14763744510614181456

/-! ## A273668.P12341762362760280269

`A275838(A275836(A276011(A275841(n))))`
-/

namespace A273668.P12341762362760280269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275838 (A275836 (A276011 (A275841 n).toNat).toNat).toNat

end

end A273668.P12341762362760280269

/-! ## A273668.P568069015977197854

`A275836(A273667(A275836(A257684(A255411(n)))))`
-/

namespace A273668.P568069015977197854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275836 (A273667 (A275836 (A257684 (A255411 n).toNat).toNat).toNat).toNat

end

end A273668.P568069015977197854

/-! ## A273668.P17290958644501824697

`A275836(A273667(A275836(A275836(A275835(n)))))`
-/

namespace A273668.P17290958644501824697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275836 (A273667 (A275836 (A275836 (A275835 n).toNat).toNat).toNat).toNat

end

end A273668.P17290958644501824697

/-! ## A273668.P17273540709527464317

`A275838(A273667(A275838(n)))`
-/

namespace A273668.P17273540709527464317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275838 (A273667 (A275838 n).toNat).toNat

end

end A273668.P17273540709527464317

/-!
# A273669: Decimal representation ends with either 2 or 9.

The programs for A273669, the canonical program `A273669.P6779924476043103430` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273669 has offset 1).

The definition of A273669 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273669.P6779924476043103430

`2*a(n-2)-a(n-4)` with `a(0)=2, a(1)=9, a(2)=12, a(3)=19`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A273669

/-- `2*a(n-2)-a(n-4)` -/
def P6779924476043103430.Spec : Prop :=
  ∀ n, P6779924476043103430.a n = A273669 (n + 1)

theorem P6779924476043103430.correct : P6779924476043103430.Spec := by
  intro n
  simp only [A273669, Nat.add_sub_cancel]

end A273669

/-! ## A273669.P2472897223395859627

`A249746(3*A249745(n+1)-1)`
-/

namespace A273669.P2472897223395859627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249746 (3 * A249745 (n + 1) - 1).toNat

end

end A273669.P2472897223395859627

namespace A273669

/-- `A249746(3*A249745(n+1)-1)` -/
def P2472897223395859627.Spec : Prop :=
  ∀ n, P2472897223395859627.a n = A273669 (n + 1)

end A273669

/-! ## A273669.P1210803096639542518

`A126760(A084967(n+1))`
-/

namespace A273669.P1210803096639542518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A084967 (n + 1)).toNat

end

end A273669.P1210803096639542518

namespace A273669

/-- `A126760(A084967(n+1))` -/
def P1210803096639542518.Spec : Prop :=
  ∀ n, P1210803096639542518.a n = A273669 (n + 1)

end A273669

/-! ## A273669.P12976426112305552155

`xor(1, 5*n+3)`
-/

namespace A273669.P12976426112305552155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (5 * n + 3)

end

end A273669.P12976426112305552155

namespace A273669

/-- `xor(1, 5*n+3)` -/
def P12976426112305552155.Spec : Prop :=
  ∀ n, (P12976426112305552155.a n : ℤ) = A273669 (n + 1)

end A273669

/-! ## A273669.P3184348314886115512

`a(n-2)+10` with `a(0)=2, a(1)=9`
-/

namespace A273669.P3184348314886115512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 9] fun n a =>
  a (n - 2) + 10

end

end A273669.P3184348314886115512

namespace A273669

/-- `a(n-2)+10` -/
def P3184348314886115512.Spec : Prop :=
  ∀ n, (P3184348314886115512.a n : ℤ) = A273669 (n + 1)

end A273669

/-! ## A273669.P1191646060169240169

`3-xor(1, -5*n)`
-/

namespace A273669.P1191646060169240169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.xor 1 (-(5 * n : ℤ))

end

end A273669.P1191646060169240169

namespace A273669

/-- `3-xor(1, -5*n)` -/
def P1191646060169240169.Spec : Prop :=
  ∀ n, P1191646060169240169.a n = A273669 (n + 1)

end A273669

/-! ## A273669.P7763844260170219541

`comp[xor(n, gcd(5, n+2))]`
-/

namespace A273669.P7763844260170219541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.gcd 5 (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A273669.P7763844260170219541

namespace A273669

/-- `comp[xor(n, gcd(5, n+2))]` -/
def P7763844260170219541.Spec : Prop :=
  ∀ n, (P7763844260170219541.a n : ℤ) = A273669 (n + 1)

end A273669

/-! ## A273669.P11747388126083734174

`∑[abs(a(n-2))]` with `a(0)=2, a(1)=7, a(2)=3`
-/

namespace A273669.P11747388126083734174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 7, 3] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273669.P11747388126083734174

namespace A273669

/-- `∑[abs(a(n-2))]` -/
def P11747388126083734174.Spec : Prop :=
  ∀ n, (P11747388126083734174.a n : ℤ) = A273669 (n + 1)

end A273669

/-! ## A273669.P2341193577753780673

`∑[10-a(n-1)]` with `a(0)=2, a(1)=7`
-/

namespace A273669.P2341193577753780673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273669.P2341193577753780673

namespace A273669

/-- `∑[10-a(n-1)]` -/
def P2341193577753780673.Spec : Prop :=
  ∀ n, P2341193577753780673.a n = A273669 (n + 1)

end A273669

/-! ## A273669.P8668830370331931593

`4/gcd(2, n)+5*n`
-/

namespace A273669.P8668830370331931593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (Nat.gcd 2 n : ℚ) + (5 * n : ℚ)

end

end A273669.P8668830370331931593

namespace A273669

/-- `4/gcd(2, n)+5*n` -/
def P8668830370331931593.Spec : Prop :=
  ∀ n, P8668830370331931593.a n = (A273669 (n + 1) : ℚ)

end A273669

/-! ## A273669.P15666374232775305105

`or(2, 6*n+2)-n`
-/

namespace A273669.P15666374232775305105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (6 * n + 2) : ℤ) - (n : ℤ)

end

end A273669.P15666374232775305105

namespace A273669

/-- `or(2, 6*n+2)-n` -/
def P15666374232775305105.Spec : Prop :=
  ∀ n, P15666374232775305105.a n = A273669 (n + 1)

end A273669

/-! ## A273669.P15194440337355483091

`record[and(n+2, -6)]+n`
-/

namespace A273669.P15194440337355483091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) (-6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A273669.P15194440337355483091

namespace A273669

/-- `record[and(n+2, -6)]+n` -/
def P15194440337355483091.Spec : Prop :=
  ∀ n, P15194440337355483091.a n = A273669 (n + 1)

end A273669

/-! ## A273669.P2241002397621161615

`5*n+3-(-1)^n`
-/

namespace A273669.P2241002397621161615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 3 : ℤ) - (-1) ^ n

end

end A273669.P2241002397621161615

namespace A273669

/-- `5*n+3-(-1)^n` -/
def P2241002397621161615.Spec : Prop :=
  ∀ n, P2241002397621161615.a n = A273669 (n + 1)

theorem P2241002397621161615.correct : P2241002397621161615.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A273669, Nat.add_sub_cancel, A273669.P2241002397621161615.a, A273669.P6779924476043103430.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A273669, Nat.add_sub_cancel, A273669.P2241002397621161615.a, A273669.P6779924476043103430.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A273669

/-! ## A273669.P12869393302937484489

`∑[ogf((2+7x+x^2)/(1-x^2))]`
-/

namespace A273669.P12869393302937484489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 7, 1] [1, 0, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273669.P12869393302937484489

namespace A273669

/-- `∑[ogf((2+7x+x^2)/(1-x^2))]` -/
def P12869393302937484489.Spec : Prop :=
  ∀ n, P12869393302937484489.a n = A273669 (n + 1)

end A273669

/-! ## A273669.P5696104243905990867

`ogf((2+7x+x^2)/(1-x-x^2+x^3))`
-/

namespace A273669.P5696104243905990867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 7, 1] [1, -1, -1, 1] n

end

end A273669.P5696104243905990867

namespace A273669

/-- `ogf((2+7x+x^2)/(1-x-x^2+x^3))` -/
def P5696104243905990867.Spec : Prop :=
  ∀ n, P5696104243905990867.a n = A273669 (n + 1)

end A273669

/-! ## A273669.P11127612970846351510

`∑[dr(A009946(n)+1)]`
-/

namespace A273669.P11127612970846351510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A009946 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273669.P11127612970846351510

namespace A273669

/-- `∑[dr(A009946(n)+1)]` -/
def P11127612970846351510.Spec : Prop :=
  ∀ n, (P11127612970846351510.a n : ℤ) = A273669 (n + 1)

end A273669

/-! ## A273669.P13266580508893282735

`∑[A232127(a(n-1))]` with `a(0)=2`
-/

namespace A273669.P13266580508893282735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A232127 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273669.P13266580508893282735

namespace A273669

/-- `∑[A232127(a(n-1))]` -/
def P13266580508893282735.Spec : Prop :=
  ∀ n, P13266580508893282735.a n = A273669 (n + 1)

end A273669

/-! ## A273669.P15377546702205498515

`∑[A377621(a(n-1))]` with `a(0)=2`
-/

namespace A273669.P15377546702205498515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A377621 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273669.P15377546702205498515

namespace A273669

/-- `∑[A377621(a(n-1))]` -/
def P15377546702205498515.Spec : Prop :=
  ∀ n, P15377546702205498515.a n = A273669 (n + 1)

end A273669

/-! ## A273669.P13641197612114437329

`(A322490(n+1)+1)/2`
-/

namespace A273669.P13641197612114437329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322490 (n + 1) + 1 : ℚ) / 2

end

end A273669.P13641197612114437329

namespace A273669

/-- `(A322490(n+1)+1)/2` -/
def P13641197612114437329.Spec : Prop :=
  ∀ n, P13641197612114437329.a n = (A273669 (n + 1) : ℚ)

end A273669

/-! ## A273669.P10506923658769196958

`∪[A017293(n), A017377(n)]`
-/

namespace A273669.P10506923658769196958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A273669.P10506923658769196958

namespace A273669

/-- `∪[A017293(n), A017377(n)]` -/
def P10506923658769196958.Spec : Prop :=
  ∀ n, (P10506923658769196958.a n : ℤ) = A273669 (n + 1)

end A273669

/-!
# A273670: Numbers with at least one maximal digit in their factorial base representation.

The programs for A273670, the canonical program `A273670.P14908057013433481843` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273670 has offset 0).

The definition of A273670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273670.P14908057013433481843

`comp[A153880(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A273670

/-- `comp[A153880(n)]` -/
def P14908057013433481843.Spec : Prop :=
  ∀ n, (P14908057013433481843.a n : ℤ) = A273670 n

theorem P14908057013433481843.correct : P14908057013433481843.Spec := by
  intro n
  simp only [A273670]

end A273670

/-! ## A273670.P3794204332517272858

`comp[A276009(n)]`
-/

namespace A273670.P3794204332517272858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276009 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A273670.P3794204332517272858

namespace A273670

/-- `comp[A276009(n)]` -/
def P3794204332517272858.Spec : Prop :=
  ∀ n, (P3794204332517272858.a n : ℤ) = A273670 n

end A273670

/-! ## A273670.P18225833102021529909

`lt[1, A275832(n)]`
-/

namespace A273670.P18225833102021529909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A273670.P18225833102021529909

namespace A273670

/-- `lt[1, A275832(n)]` -/
def P18225833102021529909.Spec : Prop :=
  ∀ n, (P18225833102021529909.a n : ℤ) = A273670 n

end A273670

/-! ## A273670.P1010949391714560752

`comp[n-A276008(n)]`
-/

namespace A273670.P1010949391714560752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276008 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A273670.P1010949391714560752

namespace A273670

/-- `comp[n-A276008(n)]` -/
def P1010949391714560752.Spec : Prop :=
  ∀ n, (P1010949391714560752.a n : ℤ) = A273670 n

end A273670

/-! ## A273670.P4680729124005923993

`lt[1, val(A275725(n), 2)]`
-/

namespace A273670.P4680729124005923993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A275725 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A273670.P4680729124005923993

namespace A273670

/-- `lt[1, val(A275725(n), 2)]` -/
def P4680729124005923993.Spec : Prop :=
  ∀ n, (P4680729124005923993.a n : ℤ) = A273670 n

end A273670

/-! ## A273670.P6441219844110827774

`A275840(n)+A256450(n)`
-/

namespace A273670.P6441219844110827774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275840 n + A256450 n

end

end A273670.P6441219844110827774

namespace A273670

/-- `A275840(n)+A256450(n)` -/
def P6441219844110827774.Spec : Prop :=
  ∀ n, P6441219844110827774.a n = A273670 n

end A273670

/-! ## A273670.P5745258723520103721

`record[A276958(n+1)]`
-/

namespace A273670.P5745258723520103721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273670.P5745258723520103721

namespace A273670

/-- `record[A276958(n+1)]` -/
def P5745258723520103721.Spec : Prop :=
  ∀ n, P5745258723520103721.a n = A273670 n

end A273670

/-! ## A273670.P15933077740689100871

`A276958(A256450(n))`
-/

namespace A273670.P15933077740689100871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276958 (A256450 n).toNat

end

end A273670.P15933077740689100871

namespace A273670

/-- `A276958(A256450(n))` -/
def P15933077740689100871.Spec : Prop :=
  ∀ n, P15933077740689100871.a n = A273670 n

end A273670

/-! ## A273670.P18415357895760129746

`A276958(lt[n, A276958(n+1)]+1)`
-/

namespace A273670.P18415357895760129746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276958 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A273670.P18415357895760129746

namespace A273670

/-- `A276958(lt[n, A276958(n+1)]+1)` -/
def P18415357895760129746.Spec : Prop :=
  ∀ n, P18415357895760129746.a n = A273670 n

end A273670

/-! ## A273670.P2023198424594919415

`record[A382184(n+1)]`
-/

namespace A273670.P2023198424594919415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273670.P2023198424594919415

namespace A273670

/-- `record[A382184(n+1)]` -/
def P2023198424594919415.Spec : Prop :=
  ∀ n, P2023198424594919415.a n = A273670 n

end A273670

/-! ## A273670.P18015139223689056420

`eq[n, A382184(A028310(n))]`
-/

namespace A273670.P18015139223689056420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382184 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273670.P18015139223689056420

namespace A273670

/-- `eq[n, A382184(A028310(n))]` -/
def P18015139223689056420.Spec : Prop :=
  ∀ n, (P18015139223689056420.a n : ℤ) = A273670 n

end A273670

/-! ## A273670.P5386074958773674000

`A276948(n)+a(n-1)` with `a(0)=1`
-/

namespace A273670.P5386074958773674000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A276948 n + a (n - 1)

end

end A273670.P5386074958773674000

namespace A273670

/-- `A276948(n)+a(n-1)` -/
def P5386074958773674000.Spec : Prop :=
  ∀ n, P5386074958773674000.a n = A273670 n

end A273670

/-! ## A273670.P3057441560852974098

`∑[A276948(n+1)]+1-A276948(n+1)`
-/

namespace A273670.P3057441560852974098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A276948 (n + 1))

end

end A273670.P3057441560852974098

namespace A273670

/-- `∑[A276948(n+1)]+1-A276948(n+1)` -/
def P3057441560852974098.Spec : Prop :=
  ∀ n, P3057441560852974098.a n = A273670 n

end A273670

/-! ## A273670.P18384338708193873975

`eq[2, A020639(A275734(n))]`
-/

namespace A273670.P18384338708193873975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A275734 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273670.P18384338708193873975

namespace A273670

/-- `eq[2, A020639(A275734(n))]` -/
def P18384338708193873975.Spec : Prop :=
  ∀ n, (P18384338708193873975.a n : ℤ) = A273670 n

end A273670

/-! ## A273670.P10392906867741755854

`lt[2, A020639(A275734(n)+1)]`
-/

namespace A273670.P10392906867741755854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A275734 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A273670.P10392906867741755854

namespace A273670

/-- `lt[2, A020639(A275734(n)+1)]` -/
def P10392906867741755854.Spec : Prop :=
  ∀ n, (P10392906867741755854.a n : ℤ) = A273670 n

end A273670

/-! ## A273670.P11156976355040918080

`lt[0, A213890(n)]`
-/

namespace A273670.P11156976355040918080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213890 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A273670.P11156976355040918080

namespace A273670

/-- `lt[0, A213890(n)]` -/
def P11156976355040918080.Spec : Prop :=
  ∀ n, (P11156976355040918080.a n : ℤ) = A273670 n

end A273670

/-! ## A273670.P15948441734322194831

`eq[1, A276949(n)]`
-/

namespace A273670.P15948441734322194831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273670.P15948441734322194831

namespace A273670

/-- `eq[1, A276949(n)]` -/
def P15948441734322194831.Spec : Prop :=
  ∀ n, (P15948441734322194831.a n : ℤ) = A273670 n

end A273670

/-! ## A273670.P14991201300970817120

`eq[1, A276950(n)]`
-/

namespace A273670.P14991201300970817120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273670.P14991201300970817120

namespace A273670

/-- `eq[1, A276950(n)]` -/
def P14991201300970817120.Spec : Prop :=
  ∀ n, (P14991201300970817120.a n : ℤ) = A273670 n

end A273670

/-! ## A273670.P174190526291095080

`record[A275848(n+1)]`
-/

namespace A273670.P174190526291095080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273670.P174190526291095080

namespace A273670

/-- `record[A275848(n+1)]` -/
def P174190526291095080.Spec : Prop :=
  ∀ n, P174190526291095080.a n = A273670 n

end A273670

/-!
# A273671: Permutation of natural numbers: a(n) = A270436(A007305(n+1)) * A270437(A047679(n-1)).

The programs for A273671, there is no canonical definition to state claims against.
-/

/-! ## A273671.P14240235763284364340

`A270436(A007305(n+2))*A270437(A047679(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A273671.P14240235763284364340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270436 (A007305 (n + 2)).toNat * A270437 (A047679 n).toNat

end

end A273671.P14240235763284364340

/-!
# A273672: Permutation of natural numbers induced by looking up the position of fraction A270418(n)/A270419(n) from the full Stern-Brocot tree A007305(n+1)/A047679(n-1).

The programs for A273672, there is no canonical definition to state claims against.
-/

/-! ## A273672.P17014131864520899149

`A126646(n)%A133033(A006254(n+1))`
-/

namespace A273672.P17014131864520899149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (A133033 (A006254 (n + 1)).toNat)

end

end A273672.P17014131864520899149

/-! ## A273672.P5707722356151846872

`∑[A000079(n)]%A133033(A006254(n+1))`
-/

namespace A273672.P5707722356151846872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A133033 (A006254 (n + 1)).toNat)

end

end A273672.P5707722356151846872

/-! ## A273672.P10926793344298836770

`∑[2^n]%A124000(A053149(n+1))`
-/

namespace A273672.P10926793344298836770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A124000 (A053149 (n + 1)).toNat)

end

end A273672.P10926793344298836770

/-! ## A273672.P2671298258977892965

`A126646(n)%A230328(A295718(n))`
-/

namespace A273672.P2671298258977892965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (A230328 (A295718 n).toNat)

end

end A273672.P2671298258977892965

/-! ## A273672.P3910121629354213198

`∑[A000079(n)]%A230328(A295718(n))`
-/

namespace A273672.P3910121629354213198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A230328 (A295718 n).toNat)

end

end A273672.P3910121629354213198

/-!
# A273674: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 825", based on the 5-celled von Neumann neighborhood.

The programs for A273674, there is no canonical definition to state claims against.
-/

/-! ## A273674.P8702709297576982626

`Δ[A273430(n)]`
-/

namespace A273674.P8702709297576982626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273430 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273674.P8702709297576982626

/-! ## A273674.P15020959385250838273

`A273430(n+1)-A273430(n)`
-/

namespace A273674.P15020959385250838273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273430 (n + 1) - A273430 n

end

end A273674.P15020959385250838273

/-!
# A273675: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 833", based on the 5-celled von Neumann neighborhood.

The programs for A273675, the canonical program `A273675.P15937582360465057411` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273675 has offset 0).

The definition of A273675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273675.P15937582360465057411

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=17, a(3)=33, a(4)=56, a(5)=85`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A273675

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P15937582360465057411.Spec : Prop :=
  ∀ n, P15937582360465057411.a n = A273675 n

theorem P15937582360465057411.correct : P15937582360465057411.Spec := by
  intro n
  simp only [A273675]

end A273675

/-! ## A273675.P10049153394818736055

`A263013(n)+A045944(n)`
-/

namespace A273675.P10049153394818736055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263013 n + A045944 n

end

end A273675.P10049153394818736055

namespace A273675

/-- `A263013(n)+A045944(n)` -/
def P10049153394818736055.Spec : Prop :=
  ∀ n, P10049153394818736055.a n = A273675 n

end A273675

/-! ## A273675.P10069827965603317957

`xor(A045944(n), A130716(n))`
-/

namespace A273675.P10069827965603317957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A045944 n) (A130716 n)

end

end A273675.P10069827965603317957

namespace A273675

/-- `xor(A045944(n), A130716(n))` -/
def P10069827965603317957.Spec : Prop :=
  ∀ n, P10069827965603317957.a n = A273675 n

end A273675

/-! ## A273675.P2552249966505520714

`xor(char[A024032(n)], A045944(n))`
-/

namespace A273675.P2552249966505520714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024032 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A045944 n)

end

end A273675.P2552249966505520714

namespace A273675

/-- `xor(char[A024032(n)], A045944(n))` -/
def P2552249966505520714.Spec : Prop :=
  ∀ n, P2552249966505520714.a n = A273675 n

end A273675

/-! ## A273675.P4592374747252128003

`xor(char[A134185(n)], A045944(n))`
-/

namespace A273675.P4592374747252128003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134185 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A045944 n)

end

end A273675.P4592374747252128003

namespace A273675

/-- `xor(char[A134185(n)], A045944(n))` -/
def P4592374747252128003.Spec : Prop :=
  ∀ n, P4592374747252128003.a n = A273675 n

end A273675

/-! ## A273675.P3103245497749517147

`xor(char[A269735(n)], A045944(n))`
-/

namespace A273675.P3103245497749517147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269735 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A045944 n)

end

end A273675.P3103245497749517147

namespace A273675

/-- `xor(char[A269735(n)], A045944(n))` -/
def P3103245497749517147.Spec : Prop :=
  ∀ n, P3103245497749517147.a n = A273675 n

end A273675

/-! ## A273675.P2421014793646371211

`xor(A000007(floor(n/3)), A045944(n))`
-/

namespace A273675.P2421014793646371211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 ⌊(n : ℚ) / 3⌋.toNat) (A045944 n)

end

end A273675.P2421014793646371211

namespace A273675

/-- `xor(A000007(floor(n/3)), A045944(n))` -/
def P2421014793646371211.Spec : Prop :=
  ∀ n, P2421014793646371211.a n = A273675 n

end A273675

/-! ## A273675.P17248124305586997690

`xor(A045944(n), A132952(A007918(n)))`
-/

namespace A273675.P17248124305586997690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A045944 n) (A132952 (A007918 n).toNat)

end

end A273675.P17248124305586997690

namespace A273675

/-- `xor(A045944(n), A132952(A007918(n)))` -/
def P17248124305586997690.Spec : Prop :=
  ∀ n, P17248124305586997690.a n = A273675 n

end A273675

/-! ## A273675.P17816378482311303317

`xor(A008683(A249807(n)), A045944(n))`
-/

namespace A273675.P17816378482311303317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008683 (A249807 n).toNat) (A045944 n)

end

end A273675.P17816378482311303317

namespace A273675

/-- `xor(A008683(A249807(n)), A045944(n))` -/
def P17816378482311303317.Spec : Prop :=
  ∀ n, P17816378482311303317.a n = A273675 n

end A273675

/-! ## A273675.P4277477622992307003

`xor(A045944(n), A133080(A151800(n)))`
-/

namespace A273675.P4277477622992307003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A045944 n) (A133080 (A151800 n).toNat)

end

end A273675.P4277477622992307003

namespace A273675

/-- `xor(A045944(n), A133080(A151800(n)))` -/
def P4277477622992307003.Spec : Prop :=
  ∀ n, P4277477622992307003.a n = A273675 n

end A273675

/-! ## A273675.P9498439516789679055

`xor(A045944(n), A209229(A098180(n)))`
-/

namespace A273675.P9498439516789679055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A045944 n) (A209229 (A098180 n).toNat)

end

end A273675.P9498439516789679055

namespace A273675

/-- `xor(A045944(n), A209229(A098180(n)))` -/
def P9498439516789679055.Spec : Prop :=
  ∀ n, P9498439516789679055.a n = A273675 n

end A273675

/-! ## A273675.P5877187141114698481

`xor(A019590(A002024(n+1)), A045944(n))`
-/

namespace A273675.P5877187141114698481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A019590 (A002024 (n + 1)).toNat) (A045944 n)

end

end A273675.P5877187141114698481

namespace A273675

/-- `xor(A019590(A002024(n+1)), A045944(n))` -/
def P5877187141114698481.Spec : Prop :=
  ∀ n, P5877187141114698481.a n = A273675 n

end A273675

/-! ## A273675.P16364586678674742139

`xor(A019590(A019590(n+1)+n), A045944(n))`
-/

namespace A273675.P16364586678674742139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A019590 (A019590 (n + 1) + (n : ℤ)).toNat) (A045944 n)

end

end A273675.P16364586678674742139

namespace A273675

/-- `xor(A019590(A019590(n+1)+n), A045944(n))` -/
def P16364586678674742139.Spec : Prop :=
  ∀ n, P16364586678674742139.a n = A273675 n

end A273675

/-! ## A273675.P11457216276090696266

`A273678(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273675.P11457216276090696266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273678 (n - 1) + a (n - 1)

end

end A273675.P11457216276090696266

namespace A273675

/-- `A273678(n-1)+a(n-1)` -/
def P11457216276090696266.Spec : Prop :=
  ∀ n, P11457216276090696266.a n = A273675 n

end A273675

/-! ## A273675.P13021792426855964757

`A273677(n+1)-(A273678(n)+A273677(n))`
-/

namespace A273675.P13021792426855964757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273677 (n + 1) - (A273678 n + A273677 n)

end

end A273675.P13021792426855964757

namespace A273675

/-- `A273677(n+1)-(A273678(n)+A273677(n))` -/
def P13021792426855964757.Spec : Prop :=
  ∀ n, P13021792426855964757.a n = A273675 n

end A273675

/-! ## A273675.P3798066967862646471

`xor(A045944(n), A080339(A048448(n)))`
-/

namespace A273675.P3798066967862646471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A045944 n) (A080339 (A048448 n).toNat)

end

end A273675.P3798066967862646471

namespace A273675

/-- `xor(A045944(n), A080339(A048448(n)))` -/
def P3798066967862646471.Spec : Prop :=
  ∀ n, P3798066967862646471.a n = A273675 n

end A273675

/-! ## A273675.P11662734395093435829

`A154269(A047808(n))+A045944(n)`
-/

namespace A273675.P11662734395093435829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A047808 n).toNat + A045944 n

end

end A273675.P11662734395093435829

namespace A273675

/-- `A154269(A047808(n))+A045944(n)` -/
def P11662734395093435829.Spec : Prop :=
  ∀ n, P11662734395093435829.a n = A273675 n

end A273675

/-! ## A273675.P2211665746697286823

`xor(A036987(A002620(n)), A045944(n))`
-/

namespace A273675.P2211665746697286823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036987 (A002620 n).toNat) (A045944 n)

end

end A273675.P2211665746697286823

namespace A273675

/-- `xor(A036987(A002620(n)), A045944(n))` -/
def P2211665746697286823.Spec : Prop :=
  ∀ n, P2211665746697286823.a n = A273675 n

end A273675

/-! ## A273675.P4855228122087915322

`A045944(n)-A154269(2*A047808(n))`
-/

namespace A273675.P4855228122087915322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 n - A154269 (2 * A047808 n).toNat

end

end A273675.P4855228122087915322

namespace A273675

/-- `A045944(n)-A154269(2*A047808(n))` -/
def P4855228122087915322.Spec : Prop :=
  ∀ n, P4855228122087915322.a n = A273675 n

end A273675

/-! ## A273675.P3238989763188865533

`xor(A045944(n), A102460(A025487(n+1)))`
-/

namespace A273675.P3238989763188865533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A045944 n) (A102460 (A025487 (n + 1)).toNat)

end

end A273675.P3238989763188865533

namespace A273675

/-- `xor(A045944(n), A102460(A025487(n+1)))` -/
def P3238989763188865533.Spec : Prop :=
  ∀ n, P3238989763188865533.a n = A273675 n

end A273675

/-!
# A273676: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 833", based on the 5-celled von Neumann neighborhood.

The programs for A273676, the canonical program `A273676.P14966747540978991222` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273676 has offset 0).

The definition of A273676 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273676.P14966747540978991222

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=4, a(2)=33, a(3)=161, a(4)=705`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A273676

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P14966747540978991222.Spec : Prop :=
  ∀ n, P14966747540978991222.a n = A273676 n

theorem P14966747540978991222.correct : P14966747540978991222.Spec := by
  intro n
  simp only [A273676]

end A273676

/-! ## A273676.P13404951592214980235

`Δ[floor(2^n-atan(n))²]+1`
-/

namespace A273676.P13404951592214980235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℝ) - Real.arctan (n : ℝ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A273676.P13404951592214980235

namespace A273676

/-- `Δ[floor(2^n-atan(n))²]+1` -/
def P13404951592214980235.Spec : Prop :=
  ∀ n, P13404951592214980235.a n = A273676 n

end A273676

/-! ## A273676.P11443267419277651284

`Δ[(2^n-ceil(atan(n)))²]+1`
-/

namespace A273676.P11443267419277651284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - ⌈Real.arctan (n : ℝ)⌉) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A273676.P11443267419277651284

namespace A273676

/-- `Δ[(2^n-ceil(atan(n)))²]+1` -/
def P11443267419277651284.Spec : Prop :=
  ∀ n, P11443267419277651284.a n = A273676 n

end A273676

/-! ## A273676.P9533691796434865118

`A270222(n)-char[1]`
-/

namespace A273676.P9533691796434865118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270222 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A273676.P9533691796434865118

namespace A273676

/-- `A270222(n)-char[1]` -/
def P9533691796434865118.Spec : Prop :=
  ∀ n, P9533691796434865118.a n = A273676 n

end A273676

/-! ## A273676.P1367617962635881277

`A267596(n)+A087291(n)`
-/

namespace A273676.P1367617962635881277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267596 n + A087291 n

end

end A273676.P1367617962635881277

namespace A273676

/-- `A267596(n)+A087291(n)` -/
def P1367617962635881277.Spec : Prop :=
  ∀ n, P1367617962635881277.a n = A273676 n

end A273676

/-! ## A273676.P9125686571918689839

`xor(A063524(n), A270222(n))`
-/

namespace A273676.P9125686571918689839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A270222 n)

end

end A273676.P9125686571918689839

namespace A273676

/-- `xor(A063524(n), A270222(n))` -/
def P9125686571918689839.Spec : Prop :=
  ∀ n, P9125686571918689839.a n = A273676 n

end A273676

/-! ## A273676.P3337037943200179978

`and(-A004119(n), A169726(n))`
-/

namespace A273676.P3337037943200179978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A004119 n) (A169726 n)

end

end A273676.P3337037943200179978

namespace A273676

/-- `and(-A004119(n), A169726(n))` -/
def P3337037943200179978.Spec : Prop :=
  ∀ n, P3337037943200179978.a n = A273676 n

end A273676

/-! ## A273676.P17656937761368920043

`xor(char[A253093(n)], A270222(n))`
-/

namespace A273676.P17656937761368920043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253093 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A270222 n)

end

end A273676.P17656937761368920043

namespace A273676

/-- `xor(char[A253093(n)], A270222(n))` -/
def P17656937761368920043.Spec : Prop :=
  ∀ n, P17656937761368920043.a n = A273676 n

end A273676

/-! ## A273676.P5519718766053554866

`A267596(n)+2*A000225(n)²`
-/

namespace A273676.P5519718766053554866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267596 n + 2 * A000225 n ^ 2

end

end A273676.P5519718766053554866

namespace A273676

/-- `A267596(n)+2*A000225(n)²` -/
def P5519718766053554866.Spec : Prop :=
  ∀ n, P5519718766053554866.a n = A273676 n

end A273676

/-! ## A273676.P16286706663414137205

`A068156(2*n)-and(A290828(2*n), A290828(n+1))`
-/

namespace A273676.P16286706663414137205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068156 (2 * n) - Int.land (A290828 (2 * n)) (A290828 (n + 1))

end

end A273676.P16286706663414137205

namespace A273676

/-- `A068156(2*n)-and(A290828(2*n), A290828(n+1))` -/
def P16286706663414137205.Spec : Prop :=
  ∀ n, P16286706663414137205.a n = A273676 n

end A273676

/-!
# A273677: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 833", based on the 5-celled von Neumann neighborhood.

The programs for A273677, the canonical program `A273677.P17396439535505474729` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273677 has offset 0).

The definition of A273677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273677.P17396439535505474729

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=22, a(3)=55, a(4)=111, a(5)=196`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A273677

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P17396439535505474729.Spec : Prop :=
  ∀ n, P17396439535505474729.a n = A273677 n

theorem P17396439535505474729.correct : P17396439535505474729.Spec := by
  intro n
  simp only [A273677]

end A273677

/-! ## A273677.P14199216681998241990

`(2*n+3)*∑[n]+1-char[1]`
-/

namespace A273677.P14199216681998241990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) + (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

end

end A273677.P14199216681998241990

namespace A273677

/-- `(2*n+3)*∑[n]+1-char[1]` -/
def P14199216681998241990.Spec : Prop :=
  ∀ n, P14199216681998241990.a n = A273677 n

end A273677

/-! ## A273677.P3661748519550536159

`abs(A081436(n)-A254667(n))`
-/

namespace A273677.P3661748519550536159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081436 n - A254667 n|

end

end A273677.P3661748519550536159

namespace A273677

/-- `abs(A081436(n)-A254667(n))` -/
def P3661748519550536159.Spec : Prop :=
  ∀ n, P3661748519550536159.a n = A273677 n

end A273677

/-! ## A273677.P2064424871396805360

`∑[A263013(n)+A045944(n)]`
-/

namespace A273677.P2064424871396805360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263013 n + A045944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273677.P2064424871396805360

namespace A273677

/-- `∑[A263013(n)+A045944(n)]` -/
def P2064424871396805360.Spec : Prop :=
  ∀ n, P2064424871396805360.a n = A273677 n

end A273677

/-! ## A273677.P7019875610892104298

`round(A081441(n+1)-n/A081441(n))`
-/

namespace A273677.P7019875610892104298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A081441 (n + 1) : ℚ) - (n : ℚ) / (A081441 n : ℚ))

end

end A273677.P7019875610892104298

namespace A273677

/-- `round(A081441(n+1)-n/A081441(n))` -/
def P7019875610892104298.Spec : Prop :=
  ∀ n, P7019875610892104298.a n = A273677 n

end A273677

/-! ## A273677.P6560266180082139235

`∑[A273675(n)]`
-/

namespace A273677.P6560266180082139235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273677.P6560266180082139235

namespace A273677

/-- `∑[A273675(n)]` -/
def P6560266180082139235.Spec : Prop :=
  ∀ n, P6560266180082139235.a n = A273677 n

end A273677

/-! ## A273677.P6133443638172426473

`abs(A233583(n+1)-A081436(n))`
-/

namespace A273677.P6133443638172426473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A233583 (n + 1) - A081436 n|

end

end A273677.P6133443638172426473

namespace A273677

/-- `abs(A233583(n+1)-A081436(n))` -/
def P6133443638172426473.Spec : Prop :=
  ∀ n, P6133443638172426473.a n = A273677 n

end A273677

/-! ## A273677.P3749525932130319008

`abs(A233583(n+1)-∑[A056109(n)])`
-/

namespace A273677.P3749525932130319008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A233583 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A273677.P3749525932130319008

namespace A273677

/-- `abs(A233583(n+1)-∑[A056109(n)])` -/
def P3749525932130319008.Spec : Prop :=
  ∀ n, P3749525932130319008.a n = A273677 n

end A273677

/-!
# A273678: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 833", based on the 5-celled von Neumann neighborhood.

The programs for A273678, the canonical program `A273678.P4102394732237929235` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273678 has offset 0).

The definition of A273678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273678.P4102394732237929235

`2*a(n-1)-a(n-2)` with `a(0)=3, a(1)=13, a(2)=16, a(3)=23, a(4)=29`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A273678

/-- `2*a(n-1)-a(n-2)` -/
def P4102394732237929235.Spec : Prop :=
  ∀ n, P4102394732237929235.a n = A273678 n

theorem P4102394732237929235.correct : P4102394732237929235.Spec := by
  intro n
  simp only [A273678]

end A273678

/-!
# A273680: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 838", based on the 5-celled von Neumann neighborhood.

The programs for A273680, there is no canonical definition to state claims against.
-/

/-! ## A273680.P15641330422348030471

`A273544(2^n-1)`
-/

namespace A273680.P15641330422348030471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273544 (2 ^ n - 1)

end

end A273680.P15641330422348030471

/-! ## A273680.P7261770984705785040

`record[A273544(A232751(n))]`
-/

namespace A273680.P7261770984705785040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273544 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273680.P7261770984705785040

/-! ## A273680.P9179993150001650608

`or(1, A273544(A000225(n)))`
-/

namespace A273680.P9179993150001650608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273544 (A000225 n).toNat)

end

end A273680.P9179993150001650608

/-! ## A273680.P13890129668044135248

`record[A273544(A130321(n)-1)]`
-/

namespace A273680.P13890129668044135248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273544 (A130321 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273680.P13890129668044135248

/-! ## A273680.P14281694127358100050

`A273544(A000225(n))+A185284(n)`
-/

namespace A273680.P14281694127358100050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273544 (A000225 n).toNat + A185284 n

end

end A273680.P14281694127358100050

/-!
# A273681: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 838", based on the 5-celled von Neumann neighborhood.

The programs for A273681, there is no canonical definition to state claims against.
-/

/-! ## A273681.P1955171504439888987

`∑[A273544(n)]`
-/

namespace A273681.P1955171504439888987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273681.P1955171504439888987

/-! ## A273681.P18438479116738176708

`A273544(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A273681.P18438479116738176708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273544 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A273681.P18438479116738176708

/-! ## A273681.P8504275659262765721

`a(n-1)+A273544(n)+A000007(n)` with `a(0)=1`
-/

namespace A273681.P8504275659262765721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273544 n + A000007 n)

end

end A273681.P8504275659262765721

/-! ## A273681.P7013751822812056927

`a(n-1)+A273544(n)+and(2, A000290(n))` with `a(0)=1`
-/

namespace A273681.P7013751822812056927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273544 n + Int.land 2 (A000290 n))

end

end A273681.P7013751822812056927

/-! ## A273681.P15129785083328657158

`∑[A273682(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273681.P15129785083328657158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273682 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273681.P15129785083328657158

/-! ## A273681.P15588765273333205397

`∑[∑[A273682(n)]-A273682(n)+1]`
-/

namespace A273681.P15588765273333205397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A273682 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273681.P15588765273333205397

/-!
# A273682: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 838", based on the 5-celled von Neumann neighborhood.

The programs for A273682, there is no canonical definition to state claims against.
-/

/-! ## A273682.P10045157617446178236

`Δ[A273544(n)]`
-/

namespace A273682.P10045157617446178236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273682.P10045157617446178236

/-! ## A273682.P7244033770191336758

`A273544(n+1)-A273544(n)`
-/

namespace A273682.P7244033770191336758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273544 (n + 1) - A273544 n

end

end A273682.P7244033770191336758

/-! ## A273682.P4732297544601795863

`A273706(n)-A218882(A022166(n))`
-/

namespace A273682.P4732297544601795863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273706 n - A218882 (A022166 n).toNat

end

end A273682.P4732297544601795863

/-! ## A273682.P5922975223295011472

`Δ[A273703(n)]-A218882(A022166(n))`
-/

namespace A273682.P5922975223295011472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A218882 (A022166 n).toNat

end

end A273682.P5922975223295011472

/-! ## A273682.P11545080339170833450

`Δ[A273681(n)]-A273703(n)^A136708(n)!`
-/

namespace A273682.P11545080339170833450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273703 n ^ Nat.factorial (A136708 n).toNat

end

end A273682.P11545080339170833450

/-!
# A273683: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 841", based on the 5-celled von Neumann neighborhood.

The programs for A273683, there is no canonical definition to state claims against.
-/

/-! ## A273683.P2871099623148321527

`A273686(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273683.P2871099623148321527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273686 (n - 1) + a (n - 1)

end

end A273683.P2871099623148321527

/-! ## A273683.P5346990386791001673

`Δ[A273685(A028310(n)-1)]+C(2, n+2)`
-/

namespace A273683.P5346990386791001673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273685 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A273683.P5346990386791001673

/-! ## A273683.P8559720660273750379

`Δ[A273685(A028310(n)-1)]+1-A057427(n)`
-/

namespace A273683.P8559720660273750379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273685 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 - A057427 n

end

end A273683.P8559720660273750379

/-! ## A273683.P3160029910521353326

`Δ[A273685(n)]-A273686(n)`
-/

namespace A273683.P3160029910521353326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273686 n

end

end A273683.P3160029910521353326

/-! ## A273683.P2785452406128927036

`A273685(n+1)-(A273686(n)+A273685(n))`
-/

namespace A273683.P2785452406128927036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273685 (n + 1) - (A273686 n + A273685 n)

end

end A273683.P2785452406128927036

/-! ## A273683.P2078729084811155033

`∑[A273686(n^A178334(n)-1)]-2`
-/

namespace A273683.P2078729084811155033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273686 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A273683.P2078729084811155033

/-!
# A273684: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 841", based on the 5-celled von Neumann neighborhood.

The programs for A273684, there is no canonical definition to state claims against.
-/

/-! ## A273684.P14460813588686775721

`A273683(2^n-1)`
-/

namespace A273684.P14460813588686775721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273683 (2 ^ n - 1)

end

end A273684.P14460813588686775721

/-! ## A273684.P16419382302906249692

`record[A273683(A173787(n))]`
-/

namespace A273684.P16419382302906249692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273683 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273684.P16419382302906249692

/-! ## A273684.P11290580950923694466

`record[A273683(A232751(n))]`
-/

namespace A273684.P11290580950923694466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273683 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273684.P11290580950923694466

/-! ## A273684.P14232730945563063455

`record[A273683(A365279(n))]`
-/

namespace A273684.P14232730945563063455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273683 (A365279 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273684.P14232730945563063455

/-! ## A273684.P11431491782460524977

`and(-3, A273683(A000225(n)))`
-/

namespace A273684.P11431491782460524977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A273683 (A000225 n).toNat)

end

end A273684.P11431491782460524977

/-!
# A273685: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 841", based on the 5-celled von Neumann neighborhood.

The programs for A273685, there is no canonical definition to state claims against.
-/

/-! ## A273685.P15265686963316594929

`∑[A273683(n)]`
-/

namespace A273685.P15265686963316594929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273685.P15265686963316594929

/-! ## A273685.P5160323697492431638

`∑[A273686(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273685.P5160323697492431638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273686 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273685.P5160323697492431638

/-! ## A273685.P14215709707615125269

`A273683(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273685.P14215709707615125269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273683 n + a (A023443 n).toNat

end

end A273685.P14215709707615125269

/-! ## A273685.P5078091400935076615

`a(n-1)+A332219(n²+5)+A273683(n)` with `a(0)=1`
-/

namespace A273685.P5078091400935076615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A332219 (n ^ 2 + 5) + A273683 n)

end

end A273685.P5078091400935076615

/-! ## A273685.P4357543257956343578

`a(n-1)+A273683(n)%A002064(n+1)` with `a(0)=1`
-/

namespace A273685.P4357543257956343578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273683 n) (A002064 (n + 1))

end

end A273685.P4357543257956343578

/-!
# A273686: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 841", based on the 5-celled von Neumann neighborhood.

The programs for A273686, there is no canonical definition to state claims against.
-/

/-! ## A273686.P16907855202256930513

`Δ[A273683(n)]`
-/

namespace A273686.P16907855202256930513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273686.P16907855202256930513

/-! ## A273686.P9544877285911336322

`A273683(n+1)-A273683(n)`
-/

namespace A273686.P9544877285911336322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273683 (n + 1) - A273683 n

end

end A273686.P9544877285911336322

/-!
# A273687: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 846", based on the 5-celled von Neumann neighborhood.

The programs for A273687, there is no canonical definition to state claims against.
-/

/-! ## A273687.P13097938389493581345

`A273690(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273687.P13097938389493581345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273690 (n - 1) + a (n - 1)

end

end A273687.P13097938389493581345

/-! ## A273687.P3053700459250149996

`Δ[A273689(n)]-A273690(n)`
-/

namespace A273687.P3053700459250149996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273690 n

end

end A273687.P3053700459250149996

/-! ## A273687.P9739672804274881612

`A273689(n+1)-(A273690(n)+A273689(n))`
-/

namespace A273687.P9739672804274881612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273689 (n + 1) - (A273690 n + A273689 n)

end

end A273687.P9739672804274881612

/-! ## A273687.P7972032414396288907

`A020985(n)²+∑[A273690(n)]-A273690(n)`
-/

namespace A273687.P7972032414396288907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273690 n)

end

end A273687.P7972032414396288907

/-! ## A273687.P12065670873296410705

`A160357(n)²+∑[A273690(n)]-A273690(n)`
-/

namespace A273687.P12065670873296410705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273690 n)

end

end A273687.P12065670873296410705

/-! ## A273687.P10986155554082542741

`A000034(2*n)+∑[A273690(n)]-A273690(n)`
-/

namespace A273687.P10986155554082542741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j - A273690 n)

end

end A273687.P10986155554082542741

/-! ## A273687.P2173249033232242576

`A059841(2*n)+∑[A273690(n)]-A273690(n)`
-/

namespace A273687.P2173249033232242576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j - A273690 n)

end

end A273687.P2173249033232242576

/-! ## A273687.P16866638369870981545

`(A000041(n)%2)!+∑[A273690(n)]-A273690(n)`
-/

namespace A273687.P16866638369870981545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - A273690 n)

end

end A273687.P16866638369870981545

/-! ## A273687.P339258298936126648

`A056594(4*n)+∑[A273690(n)]-A273690(n)`
-/

namespace A273687.P339258298936126648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (4 * n) + (∑ j ∈ Finset.range (n + 1), f1 j - A273690 n)

end

end A273687.P339258298936126648

/-! ## A273687.P1099384700914200554

`A000027(∑[A273690(n)]-A273690(n)+1)`
-/

namespace A273687.P1099384700914200554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j - A273690 n + 1).toNat

end

end A273687.P1099384700914200554

/-! ## A273687.P6220416460986688929

`A000265(∑[A273690(n)]-A273690(n)+1)`
-/

namespace A273687.P6220416460986688929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j - A273690 n + 1).toNat

end

end A273687.P6220416460986688929

/-! ## A273687.P3989324117892996743

`A014963(60*(n+1))+∑[A273690(n)]-A273690(n)`
-/

namespace A273687.P3989324117892996743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (60 * (n + 1)) + (∑ j ∈ Finset.range (n + 1), f1 j - A273690 n)

end

end A273687.P3989324117892996743

/-! ## A273687.P4236070322009850920

`A065883(∑[A273690(n)]-A273690(n)+1)`
-/

namespace A273687.P4236070322009850920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (∑ j ∈ Finset.range (n + 1), f1 j - A273690 n + 1).toNat

end

end A273687.P4236070322009850920

/-! ## A273687.P16825753119015304611

`A005408((∑[A273690(n)]-A273690(n))/2)`
-/

namespace A273687.P16825753119015304611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j - A273690 n : ℤ) : ℚ) / 2)).toNat

end

end A273687.P16825753119015304611

/-! ## A273687.P3454679819012155802

`A141310(∑[A273690(n)]-A273690(n))`
-/

namespace A273687.P3454679819012155802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ j ∈ Finset.range (n + 1), f1 j - A273690 n).toNat

end

end A273687.P3454679819012155802

/-! ## A273687.P14053956121975611398

`A004442(∑[A273690(n)]-A273690(n))`
-/

namespace A273687.P14053956121975611398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (∑ j ∈ Finset.range (n + 1), f1 j - A273690 n).toNat

end

end A273687.P14053956121975611398

/-!
# A273688: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 846", based on the 5-celled von Neumann neighborhood.

The programs for A273688, there is no canonical definition to state claims against.
-/

/-! ## A273688.P4424641617466809540

`A273687(2^n-1)`
-/

namespace A273688.P4424641617466809540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273687 (2 ^ n - 1)

end

end A273688.P4424641617466809540

/-! ## A273688.P18006187805141702851

`record[A273687(A038573(n))]`
-/

namespace A273688.P18006187805141702851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273687 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273688.P18006187805141702851

/-! ## A273688.P11726875674239022206

`or(1, A273687(A000225(n)))`
-/

namespace A273688.P11726875674239022206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273687 (A000225 n).toNat)

end

end A273688.P11726875674239022206

/-! ## A273688.P6577259416994785439

`record[A273687(A324867(n+1))]`
-/

namespace A273688.P6577259416994785439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273687 (A324867 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273688.P6577259416994785439

/-! ## A273688.P13410347022342071363

`record[A273687(A324875(n+1))]`
-/

namespace A273688.P13410347022342071363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273687 (A324875 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273688.P13410347022342071363

/-!
# A273689: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 846", based on the 5-celled von Neumann neighborhood.

The programs for A273689, there is no canonical definition to state claims against.
-/

/-! ## A273689.P6250467433284248693

`∑[A273687(n)]`
-/

namespace A273689.P6250467433284248693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273689.P6250467433284248693

/-! ## A273689.P15983544626286218756

`A273687(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273689.P15983544626286218756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273687 n + a (A023443 n).toNat

end

end A273689.P15983544626286218756

/-! ## A273689.P4342594701796187195

`a(n-1)+A273687(n)+A000007(n)` with `a(0)=1`
-/

namespace A273689.P4342594701796187195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273687 n + A000007 n)

end

end A273689.P4342594701796187195

/-! ## A273689.P4552253207316928107

`∑[∑[A273690(n)]+1-A273690(n)]`
-/

namespace A273689.P4552253207316928107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273690 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273690 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273689.P4552253207316928107

/-!
# A273690: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 846", based on the 5-celled von Neumann neighborhood.

The programs for A273690, there is no canonical definition to state claims against.
-/

/-! ## A273690.P12027462576905914813

`Δ[A273687(n)]`
-/

namespace A273690.P12027462576905914813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273690.P12027462576905914813

/-! ## A273690.P13810548068787426853

`A273687(n+1)-A273687(n)`
-/

namespace A273690.P13810548068787426853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273687 (n + 1) - A273687 n

end

end A273690.P13810548068787426853

/-!
# A273691: Integer area of primitive cyclic quadrilaterals with integer sides and rational radius.

The programs for A273691, there is no canonical definition to state claims against.
-/

/-! ## A273691.P11635875641148723259

`∑[12*A030413(∏[A008578(n+1)])²]`
-/

namespace A273691.P11635875641148723259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A030413 (∏ j ∈ Finset.range (n + 1), f2 j).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273691.P11635875641148723259

/-! ## A273691.P3647917913404053416

`A000120(A003372(3*n+5))*A023196(n+1)`
-/

namespace A273691.P3647917913404053416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003372 (3 * n + 5)).toNat * A023196 (n + 1)

end

end A273691.P3647917913404053416

/-!
# A273692: a(n) is the denominator of 2*O(n+1) - O(n+2) where O(n) = n/2^n, the n-th Oresme number.

The programs for A273692, the canonical program `A273692.P13086714113626888926` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273692 has offset 0).

The definition of A273692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273692.P3061267451680589677

`2^(3-A087230(n)+n)`
-/

namespace A273692.P3061267451680589677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (3 - A087230 n + (n : ℤ) : ℤ)

end

end A273692.P3061267451680589677

namespace A273692

/-- `2^(3-A087230(n)+n)` -/
def P3061267451680589677.Spec : Prop :=
  ∀ n, P3061267451680589677.a n = (A273692 n : ℚ)

end A273692

/-! ## A273692.P14854865941831493607

`2^(n+2)/A006519(3*n+2)`
-/

namespace A273692.P14854865941831493607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℚ) / (A006519 (3 * n + 2) : ℚ)

end

end A273692.P14854865941831493607

namespace A273692

/-- `2^(n+2)/A006519(3*n+2)` -/
def P14854865941831493607.Spec : Prop :=
  ∀ n, P14854865941831493607.a n = (A273692 n : ℚ)

end A273692

/-! ## A273692.P13086714113626888926

`A000079(A088705(3*n+2)+n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A273692

/-- `A000079(A088705(3*n+2)+n+1)` -/
def P13086714113626888926.Spec : Prop :=
  ∀ n, P13086714113626888926.a n = A273692 n

theorem P13086714113626888926.correct : P13086714113626888926.Spec := by
  intro n
  simp only [A273692]

end A273692

/-! ## A273692.P14900366414870819306

`A000079(n+2-A007814(3*n+2))`
-/

namespace A273692.P14900366414870819306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ((n + 2 : ℤ) - A007814 (3 * n + 2)).toNat

end

end A273692.P14900366414870819306

namespace A273692

/-- `A000079(n+2-A007814(3*n+2))` -/
def P14900366414870819306.Spec : Prop :=
  ∀ n, P14900366414870819306.a n = A273692 n

end A273692

/-! ## A273692.P15230008290106771874

`4/A065331(3*n+2)*A000079(n)`
-/

namespace A273692.P15230008290106771874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (A065331 (3 * n + 2) : ℚ) * (A000079 n : ℚ)

end

end A273692.P15230008290106771874

namespace A273692

/-- `4/A065331(3*n+2)*A000079(n)` -/
def P15230008290106771874.Spec : Prop :=
  ∀ n, P15230008290106771874.a n = (A273692 n : ℚ)

end A273692

/-! ## A273692.P1543129977930000101

`A000225(n+2-val(A016777(n)+1, 2))+1`
-/

namespace A273692.P1543129977930000101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2 - SequenceMachineLib.valuation (A016777 n + 1).toNat 2) + 1

end

end A273692.P1543129977930000101

namespace A273692

/-- `A000225(n+2-val(A016777(n)+1, 2))+1` -/
def P1543129977930000101.Spec : Prop :=
  ∀ n, P1543129977930000101.a n = A273692 n

end A273692

/-! ## A273692.P7066280681448132954

`A020707(n)/A000079(A007814(3*n+2))`
-/

namespace A273692.P7066280681448132954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020707 n : ℚ) / (A000079 (A007814 (3 * n + 2)).toNat : ℚ)

end

end A273692.P7066280681448132954

namespace A273692

/-- `A020707(n)/A000079(A007814(3*n+2))` -/
def P7066280681448132954.Spec : Prop :=
  ∀ n, P7066280681448132954.a n = (A273692 n : ℚ)

end A273692

/-! ## A273692.P10474633542825938108

`A000079(A020705(n)-A001511(A016957(n)))`
-/

namespace A273692.P10474633542825938108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A020705 n - A001511 (A016957 n).toNat).toNat

end

end A273692.P10474633542825938108

namespace A273692

/-- `A000079(A020705(n)-A001511(A016957(n)))` -/
def P10474633542825938108.Spec : Prop :=
  ∀ n, P10474633542825938108.a n = A273692 n

end A273692

/-! ## A273692.P14325258249232743671

`A075101(A016789(n))/A000079(n)²`
-/

namespace A273692.P14325258249232743671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075101 (A016789 n).toNat : ℚ) / (A000079 n ^ 2 : ℚ)

end

end A273692.P14325258249232743671

namespace A273692

/-- `A075101(A016789(n))/A000079(n)²` -/
def P14325258249232743671.Spec : Prop :=
  ∀ n, P14325258249232743671.a n = (A273692 n : ℚ)

end A273692

/-! ## A273692.P6809280029920759961

`A075101(A016789(n))/A000079(2*n)`
-/

namespace A273692.P6809280029920759961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075101 (A016789 n).toNat : ℚ) / (A000079 (2 * n) : ℚ)

end

end A273692.P6809280029920759961

namespace A273692

/-- `A075101(A016789(n))/A000079(2*n)` -/
def P6809280029920759961.Spec : Prop :=
  ∀ n, P6809280029920759961.a n = (A273692 n : ℚ)

end A273692

/-!
# A273693: Number A(n,k) of k-ary heaps on n elements; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A273693, there is no canonical definition to state claims against.
-/

/-! ## A273693.P1958946559890579262

`A303932(4^A299038(n))`
-/

namespace A273693.P1958946559890579262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303932 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A299038 n : ℤ))).toNat

end

end A273693.P1958946559890579262

/-! ## A273693.P2332864170155126400

`∑{d}[A299038(n), A237271(A030809(#))]`
-/

namespace A273693.P2332864170155126400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A237271 (A030809 d).toNat

end

end A273693.P2332864170155126400

/-! ## A273693.P2930523866727640230

`A059590(A299038(n))^A014963(A000124(n+6))`
-/

namespace A273693.P2930523866727640230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059590 (A299038 n).toNat : ℚ) ^ (A014963 (A000124 (n + 6)).toNat : ℤ)

end

end A273693.P2930523866727640230

/-! ## A273693.P2592976551607002804

`A330957(A264909(n))`
-/

namespace A273693.P2592976551607002804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330957 (A264909 n).toNat

end

end A273693.P2592976551607002804

/-!
# A273694: Number of 7-ary heaps on n elements.

The programs for A273694, there is no canonical definition to state claims against.
-/

/-! ## A273694.P5471543441789722601

`A273693(A056126(n)+28)`
-/

namespace A273694.P5471543441789722601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A056126 n + 28).toNat

end

end A273694.P5471543441789722601

/-! ## A273694.P7438895509985115869

`A273693(eq[7, A025581(n)])`
-/

namespace A273694.P7438895509985115869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273694.P7438895509985115869

/-! ## A273694.P3385630846303360591

`A273693(A000217(n+8)-8)`
-/

namespace A273694.P3385630846303360591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A000217 (n + 8) - 8).toNat

end

end A273694.P3385630846303360591

/-! ## A273694.P16622907739408399359

`A273693(A000096(n+6)+n+1)`
-/

namespace A273694.P16622907739408399359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A000096 (n + 6) + (n + 1 : ℤ)).toNat

end

end A273694.P16622907739408399359

/-! ## A273694.P17425324734428892441

`A273693(2*n+A133263(n+6)+5)`
-/

namespace A273694.P17425324734428892441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 ((2 * n : ℤ) + (A133263 (n + 6) + 5)).toNat

end

end A273694.P17425324734428892441

/-! ## A273694.P17645443599647588815

`A273693(A008458(n+4)+A000124(n+2))`
-/

namespace A273694.P17645443599647588815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A008458 (n + 4) + A000124 (n + 2)).toNat

end

end A273694.P17645443599647588815

/-!
# A273695: Number of 8-ary heaps on n elements.

The programs for A273695, there is no canonical definition to state claims against.
-/

/-! ## A273695.P11947830118469615164

`A273693(A055999(n+6)-3)`
-/

namespace A273695.P11947830118469615164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A055999 (n + 6) - 3).toNat

end

end A273695.P11947830118469615164

/-! ## A273695.P7964065809942285854

`A273693(A055998(n+7)-6)`
-/

namespace A273695.P7964065809942285854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A055998 (n + 7) - 6).toNat

end

end A273695.P7964065809942285854

/-! ## A273695.P12616284332412178000

`A273693(A000217(n+9)-9)`
-/

namespace A273695.P12616284332412178000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A000217 (n + 9) - 9).toNat

end

end A273695.P12616284332412178000

/-! ## A273695.P3740970309911570531

`A273693(A005408(n+3)+A000124(n+7))`
-/

namespace A273695.P3740970309911570531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A005408 (n + 3) + A000124 (n + 7)).toNat

end

end A273695.P3740970309911570531

/-! ## A273695.P15415065590331218931

`A273693(A046691(n+5)+A005843(n+6))`
-/

namespace A273695.P15415065590331218931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A046691 (n + 5) + A005843 (n + 6)).toNat

end

end A273695.P15415065590331218931

/-!
# A273696: Number of 9-ary heaps on n elements.

The programs for A273696, there is no canonical definition to state claims against.
-/

/-! ## A273696.P1265261533834245408

`A273693(A052905(n+7)-5)`
-/

namespace A273696.P1265261533834245408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A052905 (n + 7) - 5).toNat

end

end A273696.P1265261533834245408

/-! ## A273696.P15828362235511571388

`A273693(A046691(n+8)-6)`
-/

namespace A273696.P15828362235511571388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A046691 (n + 8) - 6).toNat

end

end A273696.P15828362235511571388

/-! ## A273696.P8148334413913706462

`A273693(A000217(n+10)-10)`
-/

namespace A273696.P8148334413913706462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A000217 (n + 10) - 10).toNat

end

end A273696.P8148334413913706462

/-!
# A273697: Number of 10-ary heaps on n elements.

The programs for A273697, there is no canonical definition to state claims against.
-/

/-! ## A273697.P2433558307361910468

`A273693(A056000(n+7)-1)`
-/

namespace A273697.P2433558307361910468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A056000 (n + 7) - 1).toNat

end

end A273697.P2433558307361910468

/-! ## A273697.P10144515446794318783

`A273693(n+4+A046691(n+8))`
-/

namespace A273697.P10144515446794318783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 ((n + 4 : ℤ) + A046691 (n + 8)).toNat

end

end A273697.P10144515446794318783

/-! ## A273697.P7510363847257391011

`A273693(A004767(n+6)+A000217(n+7))`
-/

namespace A273697.P7510363847257391011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A004767 (n + 6) + A000217 (n + 7)).toNat

end

end A273697.P7510363847257391011

/-! ## A273697.P17939451561498564382

`A273693(A103517(n+4)+A000217(n+9))`
-/

namespace A273697.P17939451561498564382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 (A103517 (n + 4) + A000217 (n + 9)).toNat

end

end A273697.P17939451561498564382

/-! ## A273697.P16011900342202850866

`n!/∏{e}[A000079(n), n*A213651(#)]`
-/

namespace A273697.P16011900342202850866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (n : ℤ) * A213651 (Nat.factorization (f1 n).natAbs p) : ℤ) : ℚ)

end

end A273697.P16011900342202850866

/-!
# A273698: Denominators of expansion of PolyLog(-2, x)/PolyLog(2, x), where PolyLog(m, x) is the polylogarithm function.

The programs for A273698, there is no canonical definition to state claims against.
-/

/-! ## A273698.P6826330386660996346

`A232853(∑[∑[ceil(n/3)]])²`
-/

namespace A273698.P6826330386660996346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232853 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A273698.P6826330386660996346

/-! ## A273698.P8147881483583975532

`A052410(A091137(n))²`
-/

namespace A273698.P8147881483583975532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A091137 n).toNat ^ 2

end

end A273698.P8147881483583975532

/-! ## A273698.P914504526925540141

`A091137(A073788(n))²`
-/

namespace A273698.P914504526925540141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091137 (A073788 n).toNat ^ 2

end

end A273698.P914504526925540141

/-!
# A273699: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 865", based on the 5-celled von Neumann neighborhood.

The programs for A273699, there is no canonical definition to state claims against.
-/

/-! ## A273699.P11784095438144684407

`A273702(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273699.P11784095438144684407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273702 (n - 1) + a (n - 1)

end

end A273699.P11784095438144684407

/-! ## A273699.P14452392882791749438

`∑[A273702((n-1)*a(A073423(n)!-1))]` with `a(0)=1, a(1)=3`
-/

namespace A273699.P14452392882791749438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  A273702 (((n : ℤ) - 1) * f1 (Nat.factorial (A073423 n).toNat - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273699.P14452392882791749438

/-! ## A273699.P4610758053054499476

`∑[A273702(n)]+1-A273702(n)`
-/

namespace A273699.P4610758053054499476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A273702 n)

end

end A273699.P4610758053054499476

/-! ## A273699.P14684224047615402928

`Δ[A273701(n)]-A273702(n)`
-/

namespace A273699.P14684224047615402928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273702 n

end

end A273699.P14684224047615402928

/-! ## A273699.P1123578518724174463

`A273701(n+1)-(A273702(n)+A273701(n))`
-/

namespace A273699.P1123578518724174463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273701 (n + 1) - (A273702 n + A273701 n)

end

end A273699.P1123578518724174463

