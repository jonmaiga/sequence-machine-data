import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A023300: Primes that remain prime through 3 iterations of function f(x) = 10x + 3.

The programs for A023300, there is no canonical definition to state claims against.
-/

/-! ## A023300.P358974953148610151

`∩[A023269(n+1), A102339(n+1)]`
-/

namespace A023300.P358974953148610151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023300.P358974953148610151

/-!
# A023301: Primes that remain prime through 3 iterations of function f(x) = 10x + 9.

The programs for A023301, there is no canonical definition to state claims against.
-/

/-! ## A023301.P9805748565316294441

`∩[A023270(n+1), A102704(n+1)]`
-/

namespace A023301.P9805748565316294441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023301.P9805748565316294441

/-!
# A023302: Primes that remain prime through 4 iterations of function f(x) = 2x + 1.

The programs for A023302, there is no canonical definition to state claims against.
-/

/-! ## A023302.P7753890005442596670

`floor(A162019(n+1)/4)`
-/

namespace A023302.P7753890005442596670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A162019 (n + 1) : ℚ) / 4⌋

end

end A023302.P7753890005442596670

/-! ## A023302.P16670338996295073496

`floor(A157359(n+1)/16)`
-/

namespace A023302.P16670338996295073496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157359 (n + 1) : ℚ) / 16⌋

end

end A023302.P16670338996295073496

/-! ## A023302.P17805162883835184652

`ceil(A162019(n+1)/4-A000041(C(2, n+2)))`
-/

namespace A023302.P17805162883835184652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A162019 (n + 1) : ℚ) / 4 - (A000041 (Nat.choose 2 (n + 2)) : ℚ)⌉

end

end A023302.P17805162883835184652

/-! ## A023302.P4108151711661479785

`ceil(A157359(n+1)/16-A014963(A008458(n)))`
-/

namespace A023302.P4108151711661479785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157359 (n + 1) : ℚ) / 16 - (A014963 (A008458 n).toNat : ℚ)⌉

end

end A023302.P4108151711661479785

/-! ## A023302.P12950694099509986456

`ceil(A162019(n+1)/4-A001222(A030291(n+1)))`
-/

namespace A023302.P12950694099509986456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A162019 (n + 1) : ℚ) / 4 - (A001222 (A030291 (n + 1)).toNat : ℚ)⌉

end

end A023302.P12950694099509986456

/-! ## A023302.P4559186544873585927

`ceil(A162019(n+1)/4-A057427(A191226(n)))`
-/

namespace A023302.P4559186544873585927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A162019 (n + 1) : ℚ) / 4 - (A057427 (A191226 n).toNat : ℚ)⌉

end

end A023302.P4559186544873585927

/-!
# A023303: Primes that remain prime through 4 iterations of function f(x) = 2x + 3.

The programs for A023303, there is no canonical definition to state claims against.
-/

/-! ## A023303.P3662392472808418952

`∩[A023251(n+1), A023273(n+1)]`
-/

namespace A023303.P3662392472808418952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023303.P3662392472808418952

/-! ## A023303.P16374876926905682219

`∩[A023273(n+1), A175159(n+1)]`
-/

namespace A023303.P16374876926905682219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023303.P16374876926905682219

/-! ## A023303.P5868508007751217522

`∩[A156004(n+1), A175159(n+1)]`
-/

namespace A023303.P5868508007751217522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023303.P5868508007751217522

/-! ## A023303.P7849288201568325476

`∩[A023273(n+1), A156005(n+1)]`
-/

namespace A023303.P7849288201568325476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023303.P7849288201568325476

/-! ## A023303.P11417109848526580789

`∩[A156014(n+1), A175159(n+1)]`
-/

namespace A023303.P11417109848526580789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023303.P11417109848526580789

/-!
# A023304: Primes that remain prime through 4 iterations of function f(x) = 2x + 5.

The programs for A023304, there is no canonical definition to state claims against.
-/

/-! ## A023304.P5620238120289356699

`record[A006530((A023274(n+2)-5)/2)]`
-/

namespace A023304.P5620238120289356699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A023274 (n + 2) - 5 : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023304.P5620238120289356699

/-! ## A023304.P8726393478391559450

`record[A006530(A023274(n+2)-5)]`
-/

namespace A023304.P8726393478391559450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A023274 (n + 2) - 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023304.P8726393478391559450

/-! ## A023304.P9542381396488594499

`p?[A014682(A023274(n+1)-5)]`
-/

namespace A023304.P9542381396488594499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A023274 (n + 1) - 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023304.P9542381396488594499

/-! ## A023304.P10488437870976013770

`p?[record[A000265(A023274(n+1)-5)]]`
-/

namespace A023304.P10488437870976013770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A023274 (n + 1) - 5).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023304.P10488437870976013770

/-!
# A023307: Primes that remain prime through 4 iterations of function f(x) = 3x + 2.

The programs for A023307, there is no canonical definition to state claims against.
-/

/-! ## A023307.P15545586596371475126

`∩[A023267(n+1), A023277(n+1)]`
-/

namespace A023307.P15545586596371475126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023307.P15545586596371475126

/-! ## A023307.P12434302575025618595

`p?[floor(A023277(n+1)/3)]`
-/

namespace A023307.P12434302575025618595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023277 (n + 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023307.P12434302575025618595

/-!
# A023310: Primes that remain prime through 4 iterations of function f(x) = 3x + 10.

The programs for A023310, there is no canonical definition to state claims against.
-/

/-! ## A023310.P7806277932071423336

`p?[abs(A137241(A023280(n+1)))]`
-/

namespace A023310.P7806277932071423336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137241 (A023280 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023310.P7806277932071423336

/-! ## A023310.P5257935405127155675

`p?[-A137241(A023280(n+2))]`
-/

namespace A023310.P5257935405127155675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A137241 (A023280 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023310.P5257935405127155675

/-!
# A023313: Primes that remain prime through 4 iterations of function f(x) = 5x + 2.

The programs for A023313, there is no canonical definition to state claims against.
-/

/-! ## A023313.P11156568058920368253

`p?[round(A023283(n+1)/5)]`
-/

namespace A023313.P11156568058920368253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A023283 (n + 1) : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023313.P11156568058920368253

/-!
# A023314: Primes that remain prime through 4 iterations of function f(x) = 5x + 4.

The programs for A023314, there is no canonical definition to state claims against.
-/

/-! ## A023314.P208492215622382224

`p?[floor(A023284(n+1)/5)]`
-/

namespace A023314.P208492215622382224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023284 (n + 1) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023314.P208492215622382224

/-!
# A023317: Primes that remain prime through 4 iterations of function f(x) = 6x + 5.

The programs for A023317, there is no canonical definition to state claims against.
-/

/-! ## A023317.P5857762492250899637

`A008612(∩[A023288(n+1), A152295(n+1)])`
-/

namespace A023317.P5857762492250899637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152295 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A023317.P5857762492250899637

/-!
# A023327: Primes that remain prime through 4 iterations of function f(x) = 9x + 10.

The programs for A023327, there is no canonical definition to state claims against.
-/

/-! ## A023327.P13645702266003135296

`A023299(∑[A211992(4^(n+1))]+2)`
-/

namespace A023327.P13645702266003135296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211992 (4 ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023299 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A023327.P13645702266003135296

/-!
# A023330: Primes that remain prime through 5 iterations of function f(x) = 2x + 1.

The programs for A023330, there is no canonical definition to state claims against.
-/

/-! ## A023330.P11577049317401063353

`2*A125113(n+1)-1`
-/

namespace A023330.P11577049317401063353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125113 (n + 1) - 1

end

end A023330.P11577049317401063353

/-! ## A023330.P558210167333902746

`A008683(A051698(n))+2*A125113(n+1)`
-/

namespace A023330.P558210167333902746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A051698 n).toNat + 2 * A125113 (n + 1)

end

end A023330.P558210167333902746

/-! ## A023330.P18316127748207319011

`A008683(A033203(n+1))+2*A125113(n+1)`
-/

namespace A023330.P18316127748207319011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A033203 (n + 1)).toNat + 2 * A125113 (n + 1)

end

end A023330.P18316127748207319011

/-! ## A023330.P618101259219846098

`A008683(A102540(n+1))+2*A125113(n+1)`
-/

namespace A023330.P618101259219846098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A102540 (n + 1)).toNat + 2 * A125113 (n + 1)

end

end A023330.P618101259219846098

/-! ## A023330.P15712276812280059116

`A008683(A277907(n+1))+2*A125113(n+1)`
-/

namespace A023330.P15712276812280059116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A277907 (n + 1)).toNat + 2 * A125113 (n + 1)

end

end A023330.P15712276812280059116

/-! ## A023330.P16433813951193196411

`A008683(A144256(n+1))+2*A125113(n+1)`
-/

namespace A023330.P16433813951193196411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A144256 (n + 1)).toNat + 2 * A125113 (n + 1)

end

end A023330.P16433813951193196411

/-! ## A023330.P8190657863404712197

`A008683(A139967(n+1))+2*A125113(n+1)`
-/

namespace A023330.P8190657863404712197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A139967 (n + 1)).toNat + 2 * A125113 (n + 1)

end

end A023330.P8190657863404712197

/-!
# A023331: Primes that remain prime through 5 iterations of function f(x) = 2x + 3.

The programs for A023331, there is no canonical definition to state claims against.
-/

/-! ## A023331.P811303846259791663

`∩[floor(A023251(n+1)/2)-1, A023251(n+1)]`
-/

namespace A023331.P811303846259791663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023251 (n + 1) : ℚ) / 2⌋ - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023331.P811303846259791663

/-! ## A023331.P12151171116814089071

`∩[A023303(n+1), A156012(n+1)]`
-/

namespace A023331.P12151171116814089071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023331.P12151171116814089071

/-!
# A023332: Primes that remain prime through 5 iterations of function f(x) = 2x + 5.

The programs for A023332, there is no canonical definition to state claims against.
-/

/-! ## A023332.P4078658442887384798

`p?[A014682(A023304(n+1)-5)]`
-/

namespace A023332.P4078658442887384798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A023304 (n + 1) - 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023332.P4078658442887384798

/-!
# A023339: Primes that remain prime through 5 iterations of function f(x) = 4x + 3.

The programs for A023339, there is no canonical definition to state claims against.
-/

/-! ## A023339.P9755132341280151337

`A023311(lt[A141271(3*n+5), A144846(n)])`
-/

namespace A023339.P9755132341280151337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141271 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023311 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A023339.P9755132341280151337

/-!
# A023342: Primes that remain prime through 5 iterations of function f(x) = 5x + 4.

The programs for A023342, there is no canonical definition to state claims against.
-/

/-! ## A023342.P2676146269820619413

`p?[floor(A023314(n+1)/5)]`
-/

namespace A023342.P2676146269820619413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023314 (n + 1) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023342.P2676146269820619413

/-!
# A023352: Primes that remain prime through 5 iterations of function f(x) = 9x + 2.

The programs for A023352, there is no canonical definition to state claims against.
-/

/-! ## A023352.P42159790036080752

`A023324(A007318(A000032(2*n+1)))`
-/

namespace A023352.P42159790036080752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023324 (A007318 (A000032 (2 * n + 1)).toNat).toNat

end

end A023352.P42159790036080752

/-!
# A023358: Number of compositions into sums of cubes.

The programs for A023358, there is no canonical definition to state claims against.
-/

/-! ## A023358.P445183510391492776

`A348524(n)+A010057(n)`
-/

namespace A023358.P445183510391492776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348524 n + A010057 n

end

end A023358.P445183510391492776

/-! ## A023358.P16702148441524648083

`A339421(n)+A339420(n)`
-/

namespace A023358.P16702148441524648083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339421 n + A339420 n

end

end A023358.P16702148441524648083

/-! ## A023358.P9334036256708934143

`A348524(n)+char[A000578(n)]`
-/

namespace A023358.P9334036256708934143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348524 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A023358.P9334036256708934143

/-! ## A023358.P9878045923487617024

`A348524(n)+char[A048763(n)]`
-/

namespace A023358.P9878045923487617024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348524 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A023358.P9878045923487617024

/-! ## A023358.P16522805567053420758

`A323633(n)+2*A339421(n)`
-/

namespace A023358.P16522805567053420758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323633 n + 2 * A339421 n

end

end A023358.P16522805567053420758

/-! ## A023358.P17389702686050837821

`2*A339420(n)-A323633(n)`
-/

namespace A023358.P17389702686050837821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339420 n - A323633 n

end

end A023358.P17389702686050837821

/-! ## A023358.P3990761993502665845

`A003108(n)+A348524(n)-A348522(n)`
-/

namespace A023358.P3990761993502665845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 n + (A348524 n - A348522 n)

end

end A023358.P3990761993502665845

/-!
# A023359: Number of compositions (ordered partitions) of n into powers of 2.

The programs for A023359, there is no canonical definition to state claims against.
-/

/-! ## A023359.P10814375412067322001

`A339427(n)+A339426(n)`
-/

namespace A023359.P10814375412067322001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339427 n + A339426 n

end

end A023359.P10814375412067322001

/-! ## A023359.P252378455277471085

`A357534(n)+A255738(n+1)`
-/

namespace A023359.P252378455277471085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357534 n + A255738 (n + 1)

end

end A023359.P252378455277471085

/-! ## A023359.P1457797348753148164

`A339422(n)+2*A339427(n)`
-/

namespace A023359.P1457797348753148164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339422 n + 2 * A339427 n

end

end A023359.P1457797348753148164

/-! ## A023359.P6201564887481427071

`2*A339426(n)-A339422(n)`
-/

namespace A023359.P6201564887481427071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339426 n - A339422 n

end

end A023359.P6201564887481427071

/-! ## A023359.P12953449481623727098

`A018819(n)+A357534(n)-A357476(n)`
-/

namespace A023359.P12953449481623727098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n + (A357534 n - A357476 n)

end

end A023359.P12953449481623727098

/-! ## A023359.P876971414243984523

`A339426(n)-A057428(n)*A339427(n)`
-/

namespace A023359.P876971414243984523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339426 n - A057428 n * A339427 n

end

end A023359.P876971414243984523

/-! ## A023359.P2668885907131147134

`abs(Δ[A303666(abs(1-n))])`
-/

namespace A023359.P2668885907131147134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303666 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A023359.P2668885907131147134

/-! ## A023359.P14044012236122525464

`A304908(A028310(n))/A028310(n)`
-/

namespace A023359.P14044012236122525464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304908 (A028310 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A023359.P14044012236122525464

/-! ## A023359.P10158963641945440287

`A304908(A000007(n)+n)/(A000007(n)+n)`
-/

namespace A023359.P10158963641945440287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304908 (A000007 n + (n : ℤ)).toNat : ℚ) / (A000007 n + (n : ℤ) : ℚ)

end

end A023359.P10158963641945440287

/-! ## A023359.P7522523116837238349

`A000055(n+2)-A084356(n)`
-/

namespace A023359.P7522523116837238349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (n + 2) - A084356 n

end

end A023359.P7522523116837238349

/-!
# A023360: Number of compositions of n into prime parts.

The programs for A023360, there is no canonical definition to state claims against.
-/

/-! ## A023360.P4083420683028716226

`A078465(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A023360.P4083420683028716226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078465 (n + 1) - a (n - 1)

end

end A023360.P4083420683028716226

/-! ## A023360.P4339177931358246424

`A276420(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A023360.P4339177931358246424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A276420 (2 * n) - a (n - 1)

end

end A023360.P4339177931358246424

/-! ## A023360.P3380433455912674303

`abs(a(n-1)-A276420(A004277(n)))` with `a(0)=1`
-/

namespace A023360.P3380433455912674303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - A276420 (A004277 n).toNat|

end

end A023360.P3380433455912674303

/-! ## A023360.P16590950923775038463

`A276420(2*(n+1))-Δ[A303665(n)]`
-/

namespace A023360.P16590950923775038463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276420 (2 * (n + 1)) - (f1 (n + 1) - f1 n)

end

end A023360.P16590950923775038463

/-! ## A023360.P17732352668901498776

`A339409(n)+A339408(n)`
-/

namespace A023360.P17732352668901498776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339409 n + A339408 n

end

end A023360.P17732352668901498776

/-!
# A023361: Number of compositions of n into positive triangular numbers.

The programs for A023361, there is no canonical definition to state claims against.
-/

/-! ## A023361.P15735664389705088381

`A348529(n)+A010054(n)`
-/

namespace A023361.P15735664389705088381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348529 n + A010054 n

end

end A023361.P15735664389705088381

/-! ## A023361.P9604897677052720498

`A339417(n)+A339416(n)`
-/

namespace A023361.P9604897677052720498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339417 n + A339416 n

end

end A023361.P9604897677052720498

/-! ## A023361.P14839318168830727047

`A106507(n)+2*A339417(n)`
-/

namespace A023361.P14839318168830727047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106507 n + 2 * A339417 n

end

end A023361.P14839318168830727047

/-! ## A023361.P1637580812260576713

`2*A339416(n)-A106507(n)`
-/

namespace A023361.P1637580812260576713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339416 n - A106507 n

end

end A023361.P1637580812260576713

/-! ## A023361.P7863650028498986064

`A339417(n)+A339417(n)+A006950(n)*A057077(2*n)`
-/

namespace A023361.P7863650028498986064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339417 n + (A339417 n + A006950 n * A057077 (2 * n))

end

end A023361.P7863650028498986064

/-! ## A023361.P12020598663408637604

`abs(Δ[A303668(abs(1-n))])`
-/

namespace A023361.P12020598663408637604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303668 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A023361.P12020598663408637604

/-! ## A023361.P13617247133633554687

`A024940(n)+A348529(n)-A348528(n)`
-/

namespace A023361.P13617247133633554687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024940 n + (A348529 n - A348528 n)

end

end A023361.P13617247133633554687

/-! ## A023361.P15475264751562784732

`A007294(n)+A348529(n)-A348526(n)`
-/

namespace A023361.P15475264751562784732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 n + (A348529 n - A348526 n)

end

end A023361.P15475264751562784732

/-!
# A023362: a(n+1) = a(n) converted to base 5 from base 2 (written in base 10).

The programs for A023362, there is no canonical definition to state claims against.
-/

/-! ## A023362.P4195211777793088901

`A033042(a(n-1))` with `a(0)=2`
-/

namespace A023362.P4195211777793088901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A033042 (a (n - 1)).toNat

end

end A023362.P4195211777793088901

/-!
# A023363: a(n+1) = a(n) converted to base 6 from base 2 (written in base 10).

The programs for A023363, there is no canonical definition to state claims against.
-/

/-! ## A023363.P17294337655219832970

`A033043(a(n-1))` with `a(0)=2`
-/

namespace A023363.P17294337655219832970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A033043 (a (n - 1)).toNat

end

end A023363.P17294337655219832970

/-!
# A023365: 

The programs for A023365, there is no canonical definition to state claims against.
-/

/-! ## A023365.P13638374322933228541

`2^3^n`
-/

namespace A023365.P13638374322933228541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ 3 ^ n

end

end A023365.P13638374322933228541

/-!
# A023367: a(n+1) = a(n) converted to base 4 from base 3 (written in base 10).

The programs for A023367, there is no canonical definition to state claims against.
-/

/-! ## A023367.P2892515575053447918

`A023717(a(n-1))` with `a(0)=3`
-/

namespace A023367.P2892515575053447918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A023717 (a (n - 1)).toNat

end

end A023367.P2892515575053447918

/-! ## A023367.P11933027298465793280

`A023717(abs(a(A023443(n))))` with `a(0)=3`
-/

namespace A023367.P11933027298465793280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A023717 |a (A023443 n).toNat|.toNat

end

end A023367.P11933027298465793280

/-! ## A023367.P2206617375706524918

`A023717(ceil(a(A023443(n))))` with `a(0)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A023367.P2206617375706524918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A023717 (a (A023443 n).toNat).toNat

end

end A023367.P2206617375706524918

/-! ## A023367.P8443120403263821484

`record[A023717(a(A008611(n)))]` with `a(0)=3`
-/

namespace A023367.P8443120403263821484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A023717 (f1 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023367.P8443120403263821484

/-!
# A023368: a(n+1) = a(n) converted to base 5 from base 3 (written in base 10).

The programs for A023368, there is no canonical definition to state claims against.
-/

/-! ## A023368.P3290869522003024130

`A037453(a(n-1))` with `a(0)=3`
-/

namespace A023368.P3290869522003024130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A037453 (a (n - 1)).toNat

end

end A023368.P3290869522003024130

/-! ## A023368.P4951910912518797961

`record[A037453(a(A126257(n)))]` with `a(0)=3`
-/

namespace A023368.P4951910912518797961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A037453 (f1 (A126257 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023368.P4951910912518797961

/-! ## A023368.P13763898365015100388

`record[A037453(a(A322007(n)))]` with `a(0)=3`
-/

namespace A023368.P13763898365015100388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A037453 (f1 (A322007 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023368.P13763898365015100388

/-! ## A023368.P15029822268839155544

`record[A037453(a(A164089(2*n)))]` with `a(0)=3`
-/

namespace A023368.P15029822268839155544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A037453 (f1 (A164089 (2 * n)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023368.P15029822268839155544

/-!
# A023369: a(n+1) = a(n) converted to base 6 from base 3 (written in base 10).

The programs for A023369, there is no canonical definition to state claims against.
-/

/-! ## A023369.P11573025449623334057

`A037454(a(n-1))` with `a(0)=3`
-/

namespace A023369.P11573025449623334057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A037454 (a (n - 1)).toNat

end

end A023369.P11573025449623334057

/-! ## A023369.P11763067473935275296

`record[A037454(a(A008611(n)))]` with `a(0)=3`
-/

namespace A023369.P11763067473935275296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A037454 (f1 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023369.P11763067473935275296

/-! ## A023369.P16099215774643838234

`record[A037454(a(A053186(n)))]` with `a(0)=3`
-/

namespace A023369.P16099215774643838234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A037454 (f1 (A053186 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023369.P16099215774643838234

/-!
# A023370: a(n+1) = a(n) converted to base 7 from base 3 (written in base 10).

The programs for A023370, there is no canonical definition to state claims against.
-/

/-! ## A023370.P1136729851542574669

`A037455(a(n-1))` with `a(0)=3`
-/

namespace A023370.P1136729851542574669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A037455 (a (n - 1)).toNat

end

end A023370.P1136729851542574669

/-! ## A023370.P13063194893304223843

`record[A037455(a(A218355(n)))]` with `a(0)=3`
-/

namespace A023370.P13063194893304223843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A037455 (f1 (A218355 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023370.P13063194893304223843

/-!
# A023371: a(n+1) = a(n) converted to base 8 from base 3 (written in base 10).

The programs for A023371, there is no canonical definition to state claims against.
-/

/-! ## A023371.P6544792403927574156

`A037456(a(n-1))` with `a(0)=3`
-/

namespace A023371.P6544792403927574156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A037456 (a (n - 1)).toNat

end

end A023371.P6544792403927574156

/-! ## A023371.P14588140275380770615

`record[A037456(a(A046145(n)))]` with `a(0)=3`
-/

namespace A023371.P14588140275380770615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A037456 (f1 (A046145 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023371.P14588140275380770615

/-!
# A023372: a(1) = 3; for n>=1, a(n+1) = a(n) converted to base 10 from base 3 (written in base 10).

The programs for A023372, there is no canonical definition to state claims against.
-/

/-! ## A023372.P16006574628137996725

`A140267(A117966(a(n-1)))` with `a(0)=3`
-/

namespace A023372.P16006574628137996725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A140267 (A117966 (a (n - 1)).toNat).toNat

end

end A023372.P16006574628137996725

/-!
# A023373: a(n+1) = a(n) converted to base 5 from base 4 (written in base 10).

The programs for A023373, there is no canonical definition to state claims against.
-/

/-! ## A023373.P15393749700607797154

`A037459(a(n-1))` with `a(0)=4`
-/

namespace A023373.P15393749700607797154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A037459 (a (n - 1)).toNat

end

end A023373.P15393749700607797154

/-! ## A023373.P6297196670803888265

`A020654(a(n-1)+1)` with `a(0)=4`
-/

namespace A023373.P6297196670803888265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A020654 (a (n - 1) + 1).toNat

end

end A023373.P6297196670803888265

/-! ## A023373.P7153499261157894252

`A020655(a(n-1)+1)-1` with `a(0)=4`
-/

namespace A023373.P7153499261157894252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A020655 (a (n - 1) + 1).toNat - 1

end

end A023373.P7153499261157894252

/-! ## A023373.P17174892987855605164

`A020654(1-ceil(-a(n-1)))` with `a(0)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A023373.P17174892987855605164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A020654 (1 - (-a (n - 1))).toNat

end

end A023373.P17174892987855605164

/-! ## A023373.P18118653111679676110

`A037459(abs(a(A023443(n))))` with `a(0)=4`
-/

namespace A023373.P18118653111679676110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A037459 |a (A023443 n).toNat|.toNat

end

end A023373.P18118653111679676110

/-!
# A023374: a(n+1) = a(n) converted to base 6 from base 4 (written in base 10).

The programs for A023374, there is no canonical definition to state claims against.
-/

/-! ## A023374.P3257787004806999545

`A037460(a(n-1))` with `a(0)=4`
-/

namespace A023374.P3257787004806999545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A037460 (a (n - 1)).toNat

end

end A023374.P3257787004806999545

/-! ## A023374.P3608635765094057197

`A037465(A037459(a(n-1)))` with `a(0)=4`
-/

namespace A023374.P3608635765094057197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A037465 (A037459 (a (n - 1)).toNat).toNat

end

end A023374.P3608635765094057197

/-! ## A023374.P446967259166976173

`A037465(A020654(a(n-1)+1))` with `a(0)=4`
-/

namespace A023374.P446967259166976173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A037465 (A020654 (a (n - 1) + 1).toNat).toNat

end

end A023374.P446967259166976173

/-!
# A023375: a(n+1) = a(n) converted to base 7 from base 4 (written in base 10).

The programs for A023375, there is no canonical definition to state claims against.
-/

/-! ## A023375.P8386654877745032183

`A037461(a(n-1))` with `a(0)=4`
-/

namespace A023375.P8386654877745032183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A037461 (a (n - 1)).toNat

end

end A023375.P8386654877745032183

/-! ## A023375.P1604096772102948534

`A037461(abs(a(A023443(n))))` with `a(0)=4`
-/

namespace A023375.P1604096772102948534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A037461 |a (A023443 n).toNat|.toNat

end

end A023375.P1604096772102948534

/-! ## A023375.P8211715701579921686

`A037461(floor(a(A023443(n))))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A023375.P8211715701579921686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A037461 (a (A023443 n).toNat).toNat

end

end A023375.P8211715701579921686

/-! ## A023375.P7118612684552480331

`A037461(round(a(A023443(n))))` with `a(0)=4`

`round` is left out, it is the identity on integers.
-/

namespace A023375.P7118612684552480331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A037461 (a (A023443 n).toNat).toNat

end

end A023375.P7118612684552480331

/-!
# A023376: a(n+1) = a(n) converted to base 8 from base 4 (written in base 10).

The programs for A023376, the canonical program `A023376.P15481895328876631994` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023376 has offset 1).

The definition of A023376 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023376.P15481895328876631994

`2^A061418(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023376

/-- `2^A061418(n+1)` -/
def P15481895328876631994.Spec : Prop :=
  ∀ n, P15481895328876631994.a n = (A023376 (n + 1) : ℚ)

end A023376

/-! ## A023376.P1096250207559389891

`2^val(a(n-1), 4)*a(n-1)` with `a(0)=4`
-/

namespace A023376.P1096250207559389891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  2 ^ SequenceMachineLib.valuation (a (n - 1)) 4 * a (n - 1)

end

end A023376.P1096250207559389891

namespace A023376

/-- `2^val(a(n-1), 4)*a(n-1)` -/
def P1096250207559389891.Spec : Prop :=
  ∀ n, (P1096250207559389891.a n : ℤ) = A023376 (n + 1)

end A023376

/-! ## A023376.P12371052661845643032

`2^(A006999(n)+2)`
-/

namespace A023376.P12371052661845643032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A006999 n + 2 : ℤ)

end

end A023376.P12371052661845643032

namespace A023376

/-- `2^(A006999(n)+2)` -/
def P12371052661845643032.Spec : Prop :=
  ∀ n, P12371052661845643032.a n = (A023376 (n + 1) : ℚ)

end A023376

/-! ## A023376.P13190232046608502720

`2^(A061419(n+1)+1)`
-/

namespace A023376.P13190232046608502720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A061419 (n + 1) + 1 : ℤ)

end

end A023376.P13190232046608502720

namespace A023376

/-- `2^(A061419(n+1)+1)` -/
def P13190232046608502720.Spec : Prop :=
  ∀ n, P13190232046608502720.a n = (A023376 (n + 1) : ℚ)

end A023376

/-! ## A023376.P17148315785856003454

`2^(A003312(n+1)-1)`
-/

namespace A023376.P17148315785856003454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A003312 (n + 1) - 1 : ℤ)

end

end A023376.P17148315785856003454

namespace A023376

/-- `2^(A003312(n+1)-1)` -/
def P17148315785856003454.Spec : Prop :=
  ∀ n, P17148315785856003454.a n = (A023376 (n + 1) : ℚ)

end A023376

/-!
# A023377: a(n+1) = a(n) converted to base 9 from base 4 (written in base 10).

The programs for A023377, there is no canonical definition to state claims against.
-/

/-! ## A023377.P5173896587960002341

`A037463(a(n-1))` with `a(0)=4`
-/

namespace A023377.P5173896587960002341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A037463 (a (n - 1)).toNat

end

end A023377.P5173896587960002341

/-! ## A023377.P16182298395575213978

`record[A037463(a(A292373(n)))]` with `a(0)=4`
-/

namespace A023377.P16182298395575213978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A037463 (f1 (A292373 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023377.P16182298395575213978

/-!
# A023378: a(n+1) = a(n) converted to base 10 from base 4 (written in base 10); a(1)=4.

The programs for A023378, there is no canonical definition to state claims against.
-/

/-! ## A023378.P4584837981357900340

`A373033(n)-1`
-/

namespace A023378.P4584837981357900340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373033 n - 1

end

end A023378.P4584837981357900340

/-! ## A023378.P14570154134432876528

`xor(A326453(n)!, A373033(n))`
-/

namespace A023378.P14570154134432876528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial (A326453 n).toNat : ℤ) (A373033 n)

end

end A023378.P14570154134432876528

/-! ## A023378.P7140228709063449734

`xor(Δ[A046100(n+1)], A373033(n))`
-/

namespace A023378.P7140228709063449734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A373033 n)

end

end A023378.P7140228709063449734

/-! ## A023378.P3567201752238327674

`xor(A118190(A153198(n)), A373033(n))`
-/

namespace A023378.P3567201752238327674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A118190 (A153198 n).toNat) (A373033 n)

end

end A023378.P3567201752238327674

/-!
# A023379: a(n+1) = a(n) converted to base 6 from base 5 (written in base 10).

The programs for A023379, there is no canonical definition to state claims against.
-/

/-! ## A023379.P2806102151850400477

`A037465(a(n-1))` with `a(0)=5`
-/

namespace A023379.P2806102151850400477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A037465 (a (n - 1)).toNat

end

end A023379.P2806102151850400477

/-! ## A023379.P7464322659190409038

`record[A037465(a(A029578(n)))]` with `a(0)=5`
-/

namespace A023379.P7464322659190409038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A037465 (f1 (A029578 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023379.P7464322659190409038

/-! ## A023379.P17993487891642365599

`A349294(A182306(n))`
-/

namespace A023379.P17993487891642365599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349294 (A182306 n).toNat

end

end A023379.P17993487891642365599

/-! ## A023379.P5082215587073038759

`A349294(A055983(n)/2)`
-/

namespace A023379.P5082215587073038759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349294 (SequenceMachineLib.roundAway ((A055983 n : ℚ) / 2)).toNat

end

end A023379.P5082215587073038759

/-! ## A023379.P4877492578557435824

`∩[A135383(n+1), A182306(n)]`
-/

namespace A023379.P4877492578557435824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182306 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023379.P4877492578557435824

/-!
# A023380: a(n+1) = a(n) converted to base 7 from base 5 (written in base 10).

The programs for A023380, there is no canonical definition to state claims against.
-/

/-! ## A023380.P531217359502803128

`A037466(a(n-1))` with `a(0)=5`
-/

namespace A023380.P531217359502803128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A037466 (a (n - 1)).toNat

end

end A023380.P531217359502803128

/-! ## A023380.P4171296195451419613

`A020657(A037465(a(n-1))+1)` with `a(0)=5`
-/

namespace A023380.P4171296195451419613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A020657 (A037465 (a (n - 1)).toNat + 1).toNat

end

end A023380.P4171296195451419613

/-!
# A023381: a(n+1) = a(n) converted to base 8 from base 5 (written in base 10).

The programs for A023381, there is no canonical definition to state claims against.
-/

/-! ## A023381.P6927391175796519648

`A037467(a(n-1))` with `a(0)=5`
-/

namespace A023381.P6927391175796519648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A037467 (a (n - 1)).toNat

end

end A023381.P6927391175796519648

/-! ## A023381.P1758635259665568178

`record[A037467(a(A008622(n)))]` with `a(0)=5`
-/

namespace A023381.P1758635259665568178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A037467 (f1 (A008622 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023381.P1758635259665568178

/-! ## A023381.P11140671744408005372

`A037471(A037465(a(n-1)))` with `a(0)=5`
-/

namespace A023381.P11140671744408005372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A037471 (A037465 (a (n - 1)).toNat).toNat

end

end A023381.P11140671744408005372

/-! ## A023381.P16739533638971985995

`A037474(A037466(a(n-1)))` with `a(0)=5`
-/

namespace A023381.P16739533638971985995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A037474 (A037466 (a (n - 1)).toNat).toNat

end

end A023381.P16739533638971985995

/-! ## A023381.P3844191364067106197

`A028903(A007091(a(n-1)))` with `a(0)=5`
-/

namespace A023381.P3844191364067106197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A028903 (A007091 (a (n - 1)).toNat).toNat

end

end A023381.P3844191364067106197

/-!
# A023382: a(n+1) = a(n) converted to base 9 from base 5 (written in base 10).

The programs for A023382, there is no canonical definition to state claims against.
-/

/-! ## A023382.P18401553295313839716

`A037468(a(n-1))` with `a(0)=5`
-/

namespace A023382.P18401553295313839716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A037468 (a (n - 1)).toNat

end

end A023382.P18401553295313839716

/-! ## A023382.P12805164580776201893

`record[A037468(a(and(n, 2*n)))]` with `a(0)=5`
-/

namespace A023382.P12805164580776201893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A037468 (f1 (Nat.land n (2 * n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023382.P12805164580776201893

/-! ## A023382.P8840231558890734549

`A037472(A037465(a(n-1)))` with `a(0)=5`
-/

namespace A023382.P8840231558890734549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A037472 (A037465 (a (n - 1)).toNat).toNat

end

end A023382.P8840231558890734549

/-! ## A023382.P8506268298733521256

`A037475(A037466(a(n-1)))` with `a(0)=5`
-/

namespace A023382.P8506268298733521256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A037475 (A037466 (a (n - 1)).toNat).toNat

end

end A023382.P8506268298733521256

/-! ## A023382.P10763671637071484705

`A037477(A037467(a(n-1)))` with `a(0)=5`
-/

namespace A023382.P10763671637071484705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A037477 (A037467 (a (n - 1)).toNat).toNat

end

end A023382.P10763671637071484705

/-!
# A023383: a(n+1) = a(n) converted to base 10 from base 5 (written in base 10).

The programs for A023383, there is no canonical definition to state claims against.
-/

/-! ## A023383.P4332178568077694479

`A007091(a(n-1))` with `a(0)=5`
-/

namespace A023383.P4332178568077694479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A007091 (a (n - 1)).toNat

end

end A023383.P4332178568077694479

/-! ## A023383.P5585700812487003268

`A014263(a(n-1)+1)/2` with `a(0)=5`
-/

namespace A023383.P5585700812487003268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  (A014263 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat : ℚ) / 2

end

end A023383.P5585700812487003268

/-! ## A023383.P12466756648723785843

`A024657(2*a(n-1))/2` with `a(0)=5`
-/

namespace A023383.P12466756648723785843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  (A024657 (SequenceMachineLib.roundAway (2 * a (n - 1))).toNat : ℚ) / 2

end

end A023383.P12466756648723785843

/-!
# A023384: a(n+1) = a(n) converted to base 7 from base 6 (written in base 10).

The programs for A023384, there is no canonical definition to state claims against.
-/

/-! ## A023384.P17816056624319299934

`A020657(a(n-1)+1)` with `a(0)=6`
-/

namespace A023384.P17816056624319299934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A020657 (a (n - 1) + 1).toNat

end

end A023384.P17816056624319299934

/-! ## A023384.P16881525904758308299

`A020658(a(n-1)+1)-1` with `a(0)=6`
-/

namespace A023384.P16881525904758308299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A020658 (a (n - 1) + 1).toNat - 1

end

end A023384.P16881525904758308299

/-! ## A023384.P1117020283560488212

`A020657(A020725(a(n-1)))` with `a(0)=6`
-/

namespace A023384.P1117020283560488212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A020657 (A020725 (a (n - 1)).toNat).toNat

end

end A023384.P1117020283560488212

/-! ## A023384.P14267341029786010188

`A020657(A065475(a(n-1)))` with `a(0)=6`
-/

namespace A023384.P14267341029786010188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A020657 (A065475 (a (n - 1)).toNat).toNat

end

end A023384.P14267341029786010188

/-! ## A023384.P8172517919249698970

`∩[A348520(n+1), A182307(n)]`
-/

namespace A023384.P8172517919249698970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182307 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023384.P8172517919249698970

/-!
# A023385: a(n+1) = a(n) converted to base 8 from base 6 (written in base 10).

The programs for A023385, there is no canonical definition to state claims against.
-/

/-! ## A023385.P9980146125825566952

`A037471(a(n-1))` with `a(0)=6`
-/

namespace A023385.P9980146125825566952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A037471 (a (n - 1)).toNat

end

end A023385.P9980146125825566952

/-! ## A023385.P12183584351133092091

`A037474(A020657(a(n-1)+1))` with `a(0)=6`
-/

namespace A023385.P12183584351133092091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A037474 (A020657 (a (n - 1) + 1).toNat).toNat

end

end A023385.P12183584351133092091

/-! ## A023385.P12756193691009823464

`Δ[A000267(A020751(n)²)]`
-/

namespace A023385.P12756193691009823464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A020751 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023385.P12756193691009823464

/-! ## A023385.P13953791171313525018

`Δ[A055086(A020751(n)²)]`
-/

namespace A023385.P13953791171313525018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A020751 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023385.P13953791171313525018

/-! ## A023385.P11601883210920820464

`A281591(A330884(n+1)+1)`
-/

namespace A023385.P11601883210920820464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281591 (A330884 (n + 1) + 1).toNat

end

end A023385.P11601883210920820464

/-!
# A023386: a(n+1) = a(n) converted to base 9 from base 6 (written in base 10).

The programs for A023386, there is no canonical definition to state claims against.
-/

/-! ## A023386.P2251554636106653724

`A037472(a(n-1))` with `a(0)=6`
-/

namespace A023386.P2251554636106653724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A037472 (a (n - 1)).toNat

end

end A023386.P2251554636106653724

/-! ## A023386.P11728081871389768446

`A028904(A007092(a(n-1)))` with `a(0)=6`
-/

namespace A023386.P11728081871389768446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A028904 (A007092 (a (n - 1)).toNat).toNat

end

end A023386.P11728081871389768446

/-! ## A023386.P2968658194227937138

`A037477(A037471(a(n-1)))` with `a(0)=6`
-/

namespace A023386.P2968658194227937138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A037477 (A037471 (a (n - 1)).toNat).toNat

end

end A023386.P2968658194227937138

/-! ## A023386.P14312321165763246204

`3*A005496(A077868(n))`
-/

namespace A023386.P14312321165763246204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005496 (A077868 n).toNat

end

end A023386.P14312321165763246204

/-!
# A023387: a(n+1) = a(n) converted to base 10 from base 6 (written in base 10).

The programs for A023387, there is no canonical definition to state claims against.
-/

/-! ## A023387.P14540639513565667304

`A007092(a(n-1))` with `a(0)=6`
-/

namespace A023387.P14540639513565667304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A007092 (a (n - 1)).toNat

end

end A023387.P14540639513565667304

/-! ## A023387.P4058158141488899006

`A007092(floor(a(A023443(n))))` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A023387.P4058158141488899006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A007092 (a (A023443 n).toNat).toNat

end

end A023387.P4058158141488899006

/-! ## A023387.P7739817028028387167

`A007092(ceil(a(A023443(n))))` with `a(0)=6`

`ceil` is left out, it is the identity on integers.
-/

namespace A023387.P7739817028028387167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A007092 (a (A023443 n).toNat).toNat

end

end A023387.P7739817028028387167

/-! ## A023387.P5126784574705668215

`A007092(round(a(A023443(n))))` with `a(0)=6`

`round` is left out, it is the identity on integers.
-/

namespace A023387.P5126784574705668215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A007092 (a (A023443 n).toNat).toNat

end

end A023387.P5126784574705668215

/-! ## A023387.P1125111085357679085

`record[A007092(a(A008611(n)))]` with `a(0)=6`
-/

namespace A023387.P1125111085357679085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A007092 (f1 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023387.P1125111085357679085

/-!
# A023388: a(n+1) = a(n) converted to base 8 from base 7 (written in base 10).

The programs for A023388, there is no canonical definition to state claims against.
-/

/-! ## A023388.P18223627788172053769

`A037474(a(n-1))` with `a(0)=7`
-/

namespace A023388.P18223627788172053769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A037474 (a (n - 1)).toNat

end

end A023388.P18223627788172053769

/-! ## A023388.P13358968234510974796

`A037474(abs(a(A023443(n))))` with `a(0)=7`
-/

namespace A023388.P13358968234510974796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A037474 |a (A023443 n).toNat|.toNat

end

end A023388.P13358968234510974796

/-! ## A023388.P14582378340591332726

`A037474(floor(a(A023443(n))))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A023388.P14582378340591332726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A037474 (a (A023443 n).toNat).toNat

end

end A023388.P14582378340591332726

/-! ## A023388.P4225942334453178321

`A037474(round(a(A023443(n))))` with `a(0)=7`

`round` is left out, it is the identity on integers.
-/

namespace A023388.P4225942334453178321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A037474 (a (A023443 n).toNat).toNat

end

end A023388.P4225942334453178321

/-! ## A023388.P6167955610398794698

`∩[A122079(n+1), A182308(n)]`
-/

namespace A023388.P6167955610398794698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182308 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023388.P6167955610398794698

/-!
# A023389: a(n+1) = a(n) converted to base 9 from base 7 (written in base 10).

The programs for A023389, there is no canonical definition to state claims against.
-/

/-! ## A023389.P3716506595727536863

`A037475(a(n-1))` with `a(0)=7`
-/

namespace A023389.P3716506595727536863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A037475 (a (n - 1)).toNat

end

end A023389.P3716506595727536863

/-! ## A023389.P11901996432572627216

`A037477(A037474(a(n-1)))` with `a(0)=7`
-/

namespace A023389.P11901996432572627216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A037477 (A037474 (a (n - 1)).toNat).toNat

end

end A023389.P11901996432572627216

/-! ## A023389.P16604782452715331000

`A028904(A007093(a(n-1)))` with `a(0)=7`
-/

namespace A023389.P16604782452715331000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A028904 (A007093 (a (n - 1)).toNat).toNat

end

end A023389.P16604782452715331000

/-! ## A023389.P17950781807724108393

`7+A080054(n+1)%A216044(n+1)`
-/

namespace A023389.P17950781807724108393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 + Int.tmod (A080054 (n + 1)) (A216044 (n + 1))

end

end A023389.P17950781807724108393

/-! ## A023389.P3027056251948995358

`A381048(A055984(n))`
-/

namespace A023389.P3027056251948995358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381048 (A055984 n).toNat

end

end A023389.P3027056251948995358

/-!
# A023390: a(n+1) = a(n) written in base 7 (read in base 10); a(1) = 7.

The programs for A023390, there is no canonical definition to state claims against.
-/

/-! ## A023390.P15506049839426151467

`A007093(a(n-1))` with `a(0)=7`
-/

namespace A023390.P15506049839426151467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A007093 (a (n - 1)).toNat

end

end A023390.P15506049839426151467

/-! ## A023390.P14152617292718135925

`A214677(a(n-1)+1)-1` with `a(0)=7`
-/

namespace A023390.P14152617292718135925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A214677 (a (n - 1) + 1).toNat - 1

end

end A023390.P14152617292718135925

/-! ## A023390.P11055464714751611460

`A007093(abs(a(A023443(n))))` with `a(0)=7`
-/

namespace A023390.P11055464714751611460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A007093 |a (A023443 n).toNat|.toNat

end

end A023390.P11055464714751611460

/-! ## A023390.P8973755613703063316

`A007093(floor(a(A023443(n))))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A023390.P8973755613703063316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A007093 (a (A023443 n).toNat).toNat

end

end A023390.P8973755613703063316

/-! ## A023390.P11695102299986285689

`A007093(round(a(A023443(n))))` with `a(0)=7`

`round` is left out, it is the identity on integers.
-/

namespace A023390.P11695102299986285689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A007093 (a (A023443 n).toNat).toNat

end

end A023390.P11695102299986285689

/-!
# A023391: a(n+1) = a(n) converted to base 9 from base 8 (written in base 10).

The programs for A023391, there is no canonical definition to state claims against.
-/

/-! ## A023391.P12104275214652580081

`A037477(a(n-1))` with `a(0)=8`
-/

namespace A023391.P12104275214652580081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A037477 (a (n - 1)).toNat

end

end A023391.P12104275214652580081

/-! ## A023391.P1444834955242544732

`A037477(abs(a(A023443(n))))` with `a(0)=8`
-/

namespace A023391.P1444834955242544732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A037477 |a (A023443 n).toNat|.toNat

end

end A023391.P1444834955242544732

/-!
# A023392: a(n+1) = a(n) converted to base 10 from base 9 (written in base 10).

The programs for A023392, there is no canonical definition to state claims against.
-/

/-! ## A023392.P13805593608179921011

`A007095(a(n-1))` with `a(0)=9`
-/

namespace A023392.P13805593608179921011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A007095 (a (n - 1)).toNat

end

end A023392.P13805593608179921011

/-! ## A023392.P10779521436474723578

`A037479(a(n-1))` with `a(0)=9`
-/

namespace A023392.P10779521436474723578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A037479 (a (n - 1)).toNat

end

end A023392.P10779521436474723578

/-! ## A023392.P17459993358774085290

`A007095(ceil(a(A023443(n))))` with `a(0)=9`

`ceil` is left out, it is the identity on integers.
-/

namespace A023392.P17459993358774085290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A007095 (a (A023443 n).toNat).toNat

end

end A023392.P17459993358774085290

/-! ## A023392.P14523847734932120686

`eq[log(A126616(n+1)), A151878(n)]`
-/

namespace A023392.P14523847734932120686
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A126616 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A023392.P14523847734932120686

/-! ## A023392.P14976156773021013356

`A088476(a(n-1)-8)` with `a(0)=9`
-/

namespace A023392.P14976156773021013356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A088476 (a (n - 1) - 8).toNat

end

end A023392.P14976156773021013356

/-!
# A023393: Maximal number of circles of radius 1 that can be packed in a circle of radius n.

The programs for A023393, there is no canonical definition to state claims against.
-/

/-! ## A023393.P1612715483269368373

`ceil(∑[n]+a(n-2)/2)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A023393.P1612715483269368373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (a (n - 2) : ℚ) / 2⌉

end

end A023393.P1612715483269368373

/-! ## A023393.P14729062643386362048

`ceil((a(n-2)+n²+n)/2)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A023393.P14729062643386362048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  ⌈(a (n - 2) + (n ^ 2 + n : ℤ) : ℚ) / 2⌉

end

end A023393.P14729062643386362048

/-! ## A023393.P17863546039868165279

`A337300(A028310(n))-A008617(n)`
-/

namespace A023393.P17863546039868165279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337300 (A028310 n).toNat - A008617 n

end

end A023393.P17863546039868165279

/-! ## A023393.P5353133760334818790

`A137735(A002620(a(n-2)+n²+n))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A023393.P5353133760334818790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A137735 (A002620 (a (n - 2) + (n ^ 2 + n : ℤ)).toNat).toNat

end

end A023393.P5353133760334818790

/-!
# A023394: Prime factors of Fermat numbers.

The programs for A023394, there is no canonical definition to state claims against.
-/

/-! ## A023394.P3597507730512338

`A307843(A077342(n+1)+1)`
-/

namespace A023394.P3597507730512338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307843 (A077342 (n + 1) + 1).toNat

end

end A023394.P3597507730512338

/-! ## A023394.P16598075554740779556

`A307843(A242474(n+1)+1)`
-/

namespace A023394.P16598075554740779556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307843 (A242474 (n + 1) + 1).toNat

end

end A023394.P16598075554740779556

/-! ## A023394.P15719960358899216166

`A307843(A351374(n+1)+1)`
-/

namespace A023394.P15719960358899216166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307843 (A351374 (n + 1) + 1).toNat

end

end A023394.P15719960358899216166

/-! ## A023394.P8543698381411297200

`A307843(A008554(n+2)+1)`
-/

namespace A023394.P8543698381411297200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307843 (A008554 (n + 2) + 1).toNat

end

end A023394.P8543698381411297200

/-! ## A023394.P15148065729126100357

`A307843(n+2)%A336679(n+1)`
-/

namespace A023394.P15148065729126100357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307843 (n + 2)) (A336679 (n + 1))

end

end A023394.P15148065729126100357

/-!
# A023396: If any odd power of 2 ends with k 1's and 2's, they must be the first k terms of this sequence in reverse order.

The programs for A023396, there is no canonical definition to state claims against.
-/

/-! ## A023396.P6979596531708455485

`A023407(n+1)/3`
-/

namespace A023396.P6979596531708455485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023407 (n + 1) : ℚ) / 3

end

end A023396.P6979596531708455485

/-! ## A023396.P5924856465652354645

`gcd(A001504(n), A023407(n+1))`
-/

namespace A023396.P5924856465652354645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001504 n) (A023407 (n + 1))

end

end A023396.P5924856465652354645

/-! ## A023396.P17618837868229540974

`A201603(n+1)%A023414(n+1)`
-/

namespace A023396.P17618837868229540974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201603 (n + 1)) (A023414 (n + 1))

end

end A023396.P17618837868229540974

/-! ## A023396.P6160997093982775306

`(A017653(n)*A023407(n+1))%4`
-/

namespace A023396.P6160997093982775306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017653 n * A023407 (n + 1)) 4

end

end A023396.P6160997093982775306

/-! ## A023396.P13006626619838625581

`gcd(2, A023407(n+1)*A214865(n+1))`
-/

namespace A023396.P13006626619838625581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A023407 (n + 1) * A214865 (n + 1))

end

end A023396.P13006626619838625581

/-! ## A023396.P16674821612925234762

`1-(A023414(n+1)-A023414(a(n-1)+1))` with `a(0)=2`
-/

namespace A023396.P16674821612925234762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  1 - (A023414 (n + 1) - A023414 (a (n - 1) + 1).toNat)

end

end A023396.P16674821612925234762

/-! ## A023396.P8236638253980552041

`val(A023407(n+1)!, A023407(A008619(n)))`
-/

namespace A023396.P8236638253980552041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (A023407 (n + 1)).toNat) (A023407 (A008619 n).toNat).toNat

end

end A023396.P8236638253980552041

/-!
# A023397: In base 10, if any power of 2 ends with k 2's and 3's, they must be the first k terms of this sequence in reverse order.

The programs for A023397, there is no canonical definition to state claims against.
-/

/-! ## A023397.P1997008447700927258

`A023410(n+1)/3`
-/

namespace A023397.P1997008447700927258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023410 (n + 1) : ℚ) / 3

end

end A023397.P1997008447700927258

/-! ## A023397.P2437005540624043292

`A052369(A023410(n+1)-2*a(n-1)+1)` with `a(0)=2`
-/

namespace A023397.P2437005540624043292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A052369 (A023410 (n + 1) - 2 * a (n - 1) + 1).toNat

end

end A023397.P2437005540624043292

/-! ## A023397.P8978270347400519142

`A052369(A023410(n+1)-a(n-1)-a(n-1)+1)` with `a(0)=2`
-/

namespace A023397.P8978270347400519142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A052369 (A023410 (n + 1) - a (n - 1) - a (n - 1) + 1).toNat

end

end A023397.P8978270347400519142

/-! ## A023397.P7505060601459875040

`A020639((A020639(n+1)+n)*A023410(n+1))`
-/

namespace A023397.P7505060601459875040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((A020639 (n + 1) + (n : ℤ)) * A023410 (n + 1)).toNat

end

end A023397.P7505060601459875040

/-! ## A023397.P17624574979689531233

`A007318(A023410(n+1)-A141056(2*n+1))`
-/

namespace A023397.P17624574979689531233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A023410 (n + 1) - A141056 (2 * n + 1)).toNat

end

end A023397.P17624574979689531233

/-! ## A023397.P10601400904788756321

`A034463(A023410(n+1)-A266303(n+n))`
-/

namespace A023397.P10601400904788756321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034463 (A023410 (n + 1) - A266303 (n + n)).toNat

end

end A023397.P10601400904788756321

/-! ## A023397.P6931790777772735837

`A020639(A023410(n+1)*A155494(A057944(n)))`
-/

namespace A023397.P6931790777772735837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A023410 (n + 1) * A155494 (A057944 n).toNat).toNat

end

end A023397.P6931790777772735837

/-!
# A023398: If any power of 2 ends with k 2's and 5's, they must be the first k terms of this sequence in reverse order.

The programs for A023398, there is no canonical definition to state claims against.
-/

/-! ## A023398.P10926938295956575940

`floor(A053317(n+1)/A011557(n))`
-/

namespace A023398.P10926938295956575940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053317 (n + 1) : ℚ) / (A011557 n : ℚ)⌋

end

end A023398.P10926938295956575940

/-! ## A023398.P15944922452838064189

`floor(A000079(n+1)*A055880(n+1)/A011557(n))`
-/

namespace A023398.P15944922452838064189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 (n + 1) * A055880 (n + 1) : ℚ) / (A011557 n : ℚ)⌋

end

end A023398.P15944922452838064189

/-!
# A023399: If any power of 2 ends with k 2's and 7's, they must be the first k terms of this sequence in reverse order.

The programs for A023399, there is no canonical definition to state claims against.
-/

/-! ## A023399.P8690522042797199634

`-xor(2, -A023403(n+2))`
-/

namespace A023399.P8690522042797199634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 2 (-A023403 (n + 2))

end

end A023399.P8690522042797199634

/-! ## A023399.P2615445673230624543

`A020639(A023403(n+2)+A020639(2*(n+1)))`
-/

namespace A023399.P2615445673230624543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A023403 (n + 2) + A020639 (2 * (n + 1))).toNat

end

end A023399.P2615445673230624543

/-! ## A023399.P3606235332553456821

`7%A256970(A325013(n+1))`
-/

namespace A023399.P3606235332553456821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A256970 (A325013 (n + 1)).toNat)

end

end A023399.P3606235332553456821

/-! ## A023399.P16369950668326567655

`p?[dr(and(20, A177677(n+1)))]`
-/

namespace A023399.P16369950668326567655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.land 20 (A177677 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023399.P16369950668326567655

/-! ## A023399.P167621339513975459

`A155212(and(A000051(n), A008832(n+2)))`
-/

namespace A023399.P167621339513975459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 (Int.land (A000051 n) (A008832 (n + 2))).toNat

end

end A023399.P167621339513975459

