import SequenceMachineLib.Basic
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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A200000: Number of meanders filling out an n X n grid, reduced for symmetry.

The programs for A200000, there is no canonical definition to state claims against.
-/

/-! ## A200000.P8209112109473964359

`A200893(∑[n+1])`
-/

namespace A200000.P8209112109473964359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200893 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200000.P8209112109473964359

/-! ## A200000.P15408059155514882877

`A200893(A000217(n+1))+A056965(n)`
-/

namespace A200000.P15408059155514882877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200893 (A000217 (n + 1)).toNat + A056965 n

end

end A200000.P15408059155514882877

/-! ## A200000.P1283271256304103978

`A200893(A000217(n+1))+A064458(n)`
-/

namespace A200000.P1283271256304103978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200893 (A000217 (n + 1)).toNat + A064458 n

end

end A200000.P1283271256304103978

/-!
# A200001: Numbers that are the product of distinct decimal digits.

The programs for A200001, there is no canonical definition to state claims against.
-/

/-! ## A200001.P18404710631313506965

`lt[A003714(A232989(n)), A025375(n+1)]`
-/

namespace A200001.P18404710631313506965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A232989 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025375 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A200001.P18404710631313506965

/-! ## A200001.P5941454058385271883

`lt[A100486(A232989(n)), A025375(3*n+2)]`
-/

namespace A200001.P5941454058385271883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100486 (A232989 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025375 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A200001.P5941454058385271883

/-! ## A200001.P3568062426119271800

`lt[A232988(n), A000217(A038822(n))]`
-/

namespace A200001.P3568062426119271800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232988 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A038822 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A200001.P3568062426119271800

/-! ## A200001.P9118076584560146852

`∩[A174995(n+1), A334140(n+1)]`
-/

namespace A200001.P9118076584560146852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A200001.P9118076584560146852

/-! ## A200001.P13727995982094058466

`lt[A245766(A347471(n)), A068140(3*n+2)]`
-/

namespace A200001.P13727995982094058466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245766 (A347471 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068140 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A200001.P13727995982094058466

/-!
# A200002: G.f.: exp( Sum_{n>=1} C(2*n,n)^n/2^n * x^n/n ).

The programs for A200002, there is no canonical definition to state claims against.
-/

/-! ## A200002.P16489624589301980219

`A224732(n)/A000079(n)`
-/

namespace A200002.P16489624589301980219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224732 n : ℚ) / (A000079 n : ℚ)

end

end A200002.P16489624589301980219

/-! ## A200002.P1572687894261524362

`A224732(n)/∑[A011782(n)]`
-/

namespace A200002.P1572687894261524362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224732 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A200002.P1572687894261524362

/-! ## A200002.P911076549072332196

`A224732(n)/Δ[A000225(n)]`
-/

namespace A200002.P911076549072332196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224732 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A200002.P911076549072332196

/-! ## A200002.P7172563636809650017

`A224732(n)/Δ[A000918(n)]`
-/

namespace A200002.P7172563636809650017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224732 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A200002.P7172563636809650017

/-! ## A200002.P13924514271552982494

`A224732(n)/A001057(A126646(n))`
-/

namespace A200002.P13924514271552982494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224732 n : ℚ) / (A001057 (A126646 n).toNat : ℚ)

end

end A200002.P13924514271552982494

/-!
# A200028: G.f. satisfies: A(x) = 1 + x*A(x)^3 + 2*x^2*A(x)^2 + x^3*A(x).

The programs for A200028, there is no canonical definition to state claims against.
-/

/-! ## A200028.P18260367418924874108

`A008620(n*A229741(n))`
-/

namespace A200028.P18260367418924874108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 ((n : ℤ) * A229741 n).toNat

end

end A200028.P18260367418924874108

/-! ## A200028.P3773477667714540228

`A367237(n)+A321107(A054382(n))`
-/

namespace A200028.P3773477667714540228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367237 n + A321107 (A054382 n).toNat

end

end A200028.P3773477667714540228

/-!
# A200029: G.f. satisfies: A(x) = 1 + x*A(x)^3 + x^2*A(x)^2 + x^3*A(x).

The programs for A200029, there is no canonical definition to state claims against.
-/

/-! ## A200029.P9385972728018472393

`A090735(A005809(n)+1)`
-/

namespace A200029.P9385972728018472393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090735 (A005809 n + 1).toNat

end

end A200029.P9385972728018472393

/-! ## A200029.P15445899331232690238

`A036234(A127085(n+2)+1)-A008930(n+2)`
-/

namespace A200029.P15445899331232690238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A127085 (n + 2) + 1).toNat - A008930 (n + 2)

end

end A200029.P15445899331232690238

/-!
# A200030: G.f. satisfies: A(x) = 1 + x*A(x)^3 - 2*x^2*A(x)^2 + x^3*A(x).

The programs for A200030, there is no canonical definition to state claims against.
-/

/-! ## A200030.P7538304107687819846

`or(A008687(n!), A117641(n))`
-/

namespace A200030.P7538304107687819846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008687 (Nat.factorial n)) (A117641 n)

end

end A200030.P7538304107687819846

/-! ## A200030.P1283657508645884410

`or(A117641(n), A165276(n!))`
-/

namespace A200030.P1283657508645884410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A117641 n) (A165276 (Nat.factorial n))

end

end A200030.P1283657508645884410

/-! ## A200030.P5947964847419128025

`A342023(A017955(n))+A117641(n)`
-/

namespace A200030.P5947964847419128025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342023 (A017955 n).toNat + A117641 n

end

end A200030.P5947964847419128025

/-! ## A200030.P7601350785078955201

`or(A006968(A001710(n)), A117641(n))`
-/

namespace A200030.P7601350785078955201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006968 (A001710 n).toNat) (A117641 n)

end

end A200030.P7601350785078955201

/-!
# A200031: G.f. satisfies: A(x) = 1 + x + 3*x*A(x) + x*A(x)^2.

The programs for A200031, there is no canonical definition to state claims against.
-/

/-! ## A200031.P9015306679083633847

`∏{e}[A003945(n), A107265(#)]`
-/

namespace A200031.P9015306679083633847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A107265 (Nat.factorization (f1 n).natAbs p)

end

end A200031.P9015306679083633847

/-! ## A200031.P1686063069627392064

`∏{e}[A025192(n), A107265(#)]`
-/

namespace A200031.P1686063069627392064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A107265 (Nat.factorization (f1 n).natAbs p)

end

end A200031.P1686063069627392064

/-! ## A200031.P15993014088957616708

`∏{e}[A196661(n), A107265(#)]`
-/

namespace A200031.P15993014088957616708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A107265 (Nat.factorization (f1 n).natAbs p)

end

end A200031.P15993014088957616708

/-!
# A200032: Number of -2..2 arrays x(0..n-1) of n elements with sum zero and with zeroth through n-1st differences all nonzero.

The programs for A200032, there is no canonical definition to state claims against.
-/

/-! ## A200032.P1052568410201401678

`A199937(n+1)-A200159(n+1)`
-/

namespace A200032.P1052568410201401678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199937 (n + 1) - A200159 (n + 1)

end

end A200032.P1052568410201401678

/-! ## A200032.P14093091171867708122

`A199937(A000027(n+1))%A200159(n+1)`
-/

namespace A200032.P14093091171867708122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199937 (A000027 (n + 1)).toNat) (A200159 (n + 1))

end

end A200032.P14093091171867708122

/-! ## A200032.P12962786371245300105

`A200038(∑[n+2])`
-/

namespace A200032.P12962786371245300105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200032.P12962786371245300105

/-! ## A200032.P4070383139645017246

`lcm(2, A200038(A117142(2*(n+1))))`
-/

namespace A200032.P4070383139645017246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A200038 (A117142 (2 * (n + 1))).toNat)

end

end A200032.P4070383139645017246

/-! ## A200032.P6016171602784773476

`A199943(∑[n+2])-A200159(n+1)`
-/

namespace A200032.P6016171602784773476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (∑ j ∈ Finset.range (n + 1), f1 j) - A200159 (n + 1)

end

end A200032.P6016171602784773476

/-!
# A200033: Number of -3..3 arrays x(0..n-1) of n elements with sum zero and with zeroth through n-1st differences all nonzero.

The programs for A200033, there is no canonical definition to state claims against.
-/

/-! ## A200033.P14527267086356373293

`A199938(n+1)-A200160(n+1)`
-/

namespace A200033.P14527267086356373293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199938 (n + 1) - A200160 (n + 1)

end

end A200033.P14527267086356373293

/-! ## A200033.P9458902204387850339

`A199938(n+1)%(A200160(n+1)/A000002(n+1))`
-/

namespace A200033.P9458902204387850339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199938 (n + 1)) (SequenceMachineLib.roundAway ((A200160 (n + 1) : ℚ) / (A000002 (n + 1) : ℚ)))

end

end A200033.P9458902204387850339

/-! ## A200033.P10811103507914613519

`A200038(∑[n+3]+1)`
-/

namespace A200033.P10811103507914613519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200033.P10811103507914613519

/-! ## A200033.P3295315972264465767

`record[A200038(A198464(n+1))]`
-/

namespace A200033.P3295315972264465767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200033.P3295315972264465767

/-! ## A200033.P16761712751677895563

`record[char[A055998(n)]*A200038(n+1)]`
-/

namespace A200033.P16761712751677895563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A200038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200033.P16761712751677895563

/-!
# A200034: Number of -4..4 arrays x(0..n-1) of n elements with sum zero and with zeroth through n-1st differences all nonzero.

The programs for A200034, there is no canonical definition to state claims against.
-/

/-! ## A200034.P1887107150973155693

`A200038(∑[n+4]+3)`
-/

namespace A200034.P1887107150973155693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A200034.P1887107150973155693

/-! ## A200034.P10989797702981043861

`and(-1, A200038(A141214(n+1)))`
-/

namespace A200034.P10989797702981043861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A200038 (A141214 (n + 1)).toNat)

end

end A200034.P10989797702981043861

/-! ## A200034.P4200137234837034718

`A199939(n+1)-A200161(n+1)`
-/

namespace A200034.P4200137234837034718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199939 (n + 1) - A200161 (n + 1)

end

end A200034.P4200137234837034718

/-! ## A200034.P13246837746787438

`A199939(A000027(n+1))%A200161(n+1)`
-/

namespace A200034.P13246837746787438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199939 (A000027 (n + 1)).toNat) (A200161 (n + 1))

end

end A200034.P13246837746787438

/-! ## A200034.P15139645315065142792

`A199939(A132263(n+1))%A200161(n+1)`
-/

namespace A200034.P15139645315065142792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199939 (A132263 (n + 1)).toNat) (A200161 (n + 1))

end

end A200034.P15139645315065142792

/-!
# A200035: Number of -5..5 arrays x(0..n-1) of n elements with sum zero and with zeroth through n-1st differences all nonzero.

The programs for A200035, there is no canonical definition to state claims against.
-/

/-! ## A200035.P15183134527407881912

`A200038(Δ[A264443(n)])`
-/

namespace A200035.P15183134527407881912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (f1 (n + 1) - f1 n).toNat

end

end A200035.P15183134527407881912

/-! ## A200035.P2728961889325363225

`A200038(A046691(n+3))`
-/

namespace A200035.P2728961889325363225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (A046691 (n + 3)).toNat

end

end A200035.P2728961889325363225

/-! ## A200035.P9788329978473301096

`A200038(A056115(n)+11)`
-/

namespace A200035.P9788329978473301096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (A056115 n + 11).toNat

end

end A200035.P9788329978473301096

/-! ## A200035.P11895852783377957025

`A200038(eq[2, A092921(n)])`
-/

namespace A200035.P11895852783377957025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200035.P11895852783377957025

/-! ## A200035.P16201681262093457885

`A200038(eq[3, A152157(n)])`
-/

namespace A200035.P16201681262093457885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200035.P16201681262093457885

/-!
# A200036: Number of -6..6 arrays x(0..n-1) of n elements with sum zero and with zeroth through n-1st differences all nonzero.

The programs for A200036, there is no canonical definition to state claims against.
-/

/-! ## A200036.P3111983090440593371

`A200038(A052905(n+3))`
-/

namespace A200036.P3111983090440593371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (A052905 (n + 3)).toNat

end

end A200036.P3111983090440593371

/-! ## A200036.P3019787116186243511

`A200038(A056119(n)+16)`
-/

namespace A200036.P3019787116186243511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (A056119 n + 16).toNat

end

end A200036.P3019787116186243511

/-! ## A200036.P3078945016557271218

`A200038(eq[3, A219347(n)])`
-/

namespace A200036.P3078945016557271218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200036.P3078945016557271218

/-! ## A200036.P1753794431483876520

`A200038(eq[5, A152157(n)])`
-/

namespace A200036.P1753794431483876520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200036.P1753794431483876520

/-! ## A200036.P3608375060481712246

`A200038(eq[5, A193592(n)])`
-/

namespace A200036.P3608375060481712246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200036.P3608375060481712246

/-!
# A200037: Number of -7..7 arrays x(0..n-1) of n elements with sum zero and with zeroth through n-1st differences all nonzero.

The programs for A200037, there is no canonical definition to state claims against.
-/

/-! ## A200037.P4346249062794800638

`A200038(C(n+7, 2)+n+1)`
-/

namespace A200037.P4346249062794800638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (Nat.choose (n + 7) 2 + n + 1)

end

end A200037.P4346249062794800638

/-! ## A200037.P3831992558737109218

`A200038(A055999(n+4))`
-/

namespace A200037.P3831992558737109218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (A055999 (n + 4)).toNat

end

end A200037.P3831992558737109218

/-! ## A200037.P2416040403668417805

`A200038(eq[4, A219347(n)])`
-/

namespace A200037.P2416040403668417805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200037.P2416040403668417805

/-! ## A200037.P7109594190606843507

`A200038(eq[5, A332954(n)])`
-/

namespace A200037.P7109594190606843507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200037.P7109594190606843507

/-! ## A200037.P15500737743241627984

`A200038(eq[6, A193592(n)])`
-/

namespace A200037.P15500737743241627984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200037.P15500737743241627984

/-!
# A200038: T(n,k)=Number of -k..k arrays x(0..n-1) of n elements with sum zero and with zeroth through n-1st differences all nonzero.

The programs for A200038, there is no canonical definition to state claims against.
-/

/-! ## A200038.P9358048433130767935

`A199943(n+1)-A200165(n+1)`
-/

namespace A200038.P9358048433130767935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (n + 1) - A200165 (n + 1)

end

end A200038.P9358048433130767935

/-! ## A200038.P14650866029653723932

`and(A153126(A035530(n)), A200192(n+1))`
-/

namespace A200038.P14650866029653723932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153126 (A035530 n).toNat) (A200192 (n + 1))

end

end A200038.P14650866029653723932

/-! ## A200038.P13121391329404407179

`and(A143823(A193580(n)), A200192(n+1))`
-/

namespace A200038.P13121391329404407179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143823 (A193580 n).toNat) (A200192 (n + 1))

end

end A200038.P13121391329404407179

/-! ## A200038.P426113534972202548

`and(A014635(A075829(n+1)), A200192(n+1))`
-/

namespace A200038.P426113534972202548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014635 (A075829 (n + 1)).toNat) (A200192 (n + 1))

end

end A200038.P426113534972202548

/-!
# A200039: Number of -n..n arrays x(0..2) of 3 elements with sum zero and with zeroth through 2nd differences all nonzero.

The programs for A200039, the canonical program `A200039.P13130355510944201552` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200039 has offset 1).

The definition of A200039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200039.P13130355510944201552

`∑[xor(2, 6*n)-2]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A200039

/-- `∑[xor(2, 6*n)-2]` -/
def P13130355510944201552.Spec : Prop :=
  ∀ n, P13130355510944201552.a n = A200039 (n + 1)

theorem P13130355510944201552.correct : P13130355510944201552.Spec := by
  intro n
  simp only [A200039, Nat.add_sub_cancel]

end A200039

/-! ## A200039.P18395954296434353319

`and(3*n², -3)+n`
-/

namespace A200039.P18395954296434353319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n ^ 2 : ℤ) (-3) + (n : ℤ)

end

end A200039.P18395954296434353319

namespace A200039

/-- `and(3*n², -3)+n` -/
def P18395954296434353319.Spec : Prop :=
  ∀ n, P18395954296434353319.a n = A200039 (n + 1)

end A200039

/-! ## A200039.P4778476685247797122

`∑[a(n-2)+12]` with `a(0)=0, a(1)=2`
-/

namespace A200039.P4778476685247797122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200039.P4778476685247797122

namespace A200039

/-- `∑[a(n-2)+12]` -/
def P4778476685247797122.Spec : Prop :=
  ∀ n, (P4778476685247797122.a n : ℤ) = A200039 (n + 1)

end A200039

/-! ## A200039.P6921443486747944958

`∑[∑[12-a(n-1)]]` with `a(0)=0, a(1)=2`
-/

namespace A200039.P6921443486747944958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  12 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200039.P6921443486747944958

namespace A200039

/-- `∑[∑[12-a(n-1)]]` -/
def P6921443486747944958.Spec : Prop :=
  ∀ n, P6921443486747944958.a n = A200039 (n + 1)

end A200039

/-! ## A200039.P17063193326025741841

`xor(1, 3*n²)-1+n`
-/

namespace A200039.P17063193326025741841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (3 * n ^ 2) : ℤ) - 1 + (n : ℤ)

end

end A200039.P17063193326025741841

namespace A200039

/-- `xor(1, 3*n²)-1+n` -/
def P17063193326025741841.Spec : Prop :=
  ∀ n, P17063193326025741841.a n = A200039 (n + 1)

end A200039

/-! ## A200039.P13568295197989854895

`xor(1, 3*n²)-(1-n)`
-/

namespace A200039.P13568295197989854895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (3 * n ^ 2) : ℤ) - (1 - (n : ℤ))

end

end A200039.P13568295197989854895

namespace A200039

/-- `xor(1, 3*n²)-(1-n)` -/
def P13568295197989854895.Spec : Prop :=
  ∀ n, P13568295197989854895.a n = A200039 (n + 1)

end A200039

/-! ## A200039.P15522619519370759915

`or(2, 3*n²)-2+n`
-/

namespace A200039.P15522619519370759915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (3 * n ^ 2) : ℤ) - 2 + (n : ℤ)

end

end A200039.P15522619519370759915

namespace A200039

/-- `or(2, 3*n²)-2+n` -/
def P15522619519370759915.Spec : Prop :=
  ∀ n, P15522619519370759915.a n = A200039 (n + 1)

end A200039

/-! ## A200039.P4440829242197243635

`xor(1, xor(1, 3*n²)+n)`
-/

namespace A200039.P4440829242197243635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.xor 1 (3 * n ^ 2) + n)

end

end A200039.P4440829242197243635

namespace A200039

/-- `xor(1, xor(1, 3*n²)+n)` -/
def P4440829242197243635.Spec : Prop :=
  ∀ n, (P4440829242197243635.a n : ℤ) = A200039 (n + 1)

end A200039

/-! ## A200039.P4080557935119495260

`∑[2*(2*or(1, n)+n-2)]`
-/

namespace A200039.P4080557935119495260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 * Nat.lor 1 n : ℤ) + ((n : ℤ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200039.P4080557935119495260

namespace A200039

/-- `∑[2*(2*or(1, n)+n-2)]` -/
def P4080557935119495260.Spec : Prop :=
  ∀ n, P4080557935119495260.a n = A200039 (n + 1)

end A200039

/-! ## A200039.P4431255721789244908

`Δ[(n+1)*(1-n)²-gcd(2, n)]`
-/

namespace A200039.P4431255721789244908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - (n : ℤ)) ^ 2 - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200039.P4431255721789244908

namespace A200039

/-- `Δ[(n+1)*(1-n)²-gcd(2, n)]` -/
def P4431255721789244908.Spec : Prop :=
  ∀ n, P4431255721789244908.a n = A200039 (n + 1)

end A200039

/-! ## A200039.P13239094434125289315

`Δ[(n-1)*n²]-2*and(1, n)`
-/

namespace A200039.P13239094434125289315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (2 * Nat.land 1 n : ℤ)

end

end A200039.P13239094434125289315

namespace A200039

/-- `Δ[(n-1)*n²]-2*and(1, n)` -/
def P13239094434125289315.Spec : Prop :=
  ∀ n, P13239094434125289315.a n = A200039 (n + 1)

end A200039

/-! ## A200039.P2151368963136042466

`Δ[or(1, (n-1)*(n+1)*(n-1))]`
-/

namespace A200039.P2151368963136042466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((n : ℤ) - 1) * ((n + 1 : ℤ) * ((n : ℤ) - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200039.P2151368963136042466

namespace A200039

/-- `Δ[or(1, (n-1)*(n+1)*(n-1))]` -/
def P2151368963136042466.Spec : Prop :=
  ∀ n, P2151368963136042466.a n = A200039 (n + 1)

end A200039

/-! ## A200039.P6725761363793818977

`(2*n+n-2)*2*n-a(n-1)` with `a(0)=0`
-/

namespace A200039.P6725761363793818977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((2 * n : ℤ) + ((n : ℤ) - 2)) * (2 * n : ℤ) - a (n - 1)

end

end A200039.P6725761363793818977

namespace A200039

/-- `(2*n+n-2)*2*n-a(n-1)` -/
def P6725761363793818977.Spec : Prop :=
  ∀ n, P6725761363793818977.a n = A200039 (n + 1)

end A200039

/-! ## A200039.P4183263742568071947

`(2*n)²-(a(n-1)-(n-2)*2*n)` with `a(0)=0`
-/

namespace A200039.P4183263742568071947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((2 * n) ^ 2 : ℤ) - (a (n - 1) - ((n : ℤ) - 2) * (2 * n : ℤ))

end

end A200039.P4183263742568071947

namespace A200039

/-- `(2*n)²-(a(n-1)-(n-2)*2*n)` -/
def P4183263742568071947.Spec : Prop :=
  ∀ n, P4183263742568071947.a n = A200039 (n + 1)

end A200039

/-! ## A200039.P10025866223887483628

`A195143(n)+n`
-/

namespace A200039.P10025866223887483628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195143 n + (n : ℤ)

end

end A200039.P10025866223887483628

namespace A200039

/-- `A195143(n)+n` -/
def P10025866223887483628.Spec : Prop :=
  ∀ n, P10025866223887483628.a n = A200039 (n + 1)

end A200039

/-! ## A200039.P12217757930246530631

`∑[A146512(n+1)-1]`
-/

namespace A200039.P12217757930246530631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146512 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200039.P12217757930246530631

namespace A200039

/-- `∑[A146512(n+1)-1]` -/
def P12217757930246530631.Spec : Prop :=
  ∀ n, P12217757930246530631.a n = A200039 (n + 1)

end A200039

/-! ## A200039.P16452181173551402881

`∑[2*A047225(n+1)]`
-/

namespace A200039.P16452181173551402881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200039.P16452181173551402881

namespace A200039

/-- `∑[2*A047225(n+1)]` -/
def P16452181173551402881.Spec : Prop :=
  ∀ n, P16452181173551402881.a n = A200039 (n + 1)

end A200039

/-! ## A200039.P12420953358861954270

`∑[A092242(n+1)-5]`
-/

namespace A200039.P12420953358861954270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092242 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200039.P12420953358861954270

namespace A200039

/-- `∑[A092242(n+1)-5]` -/
def P12420953358861954270.Spec : Prop :=
  ∀ n, P12420953358861954270.a n = A200039 (n + 1)

end A200039

/-! ## A200039.P10139417951257307455

`∑[A197652(n+1)+n]`
-/

namespace A200039.P10139417951257307455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200039.P10139417951257307455

namespace A200039

/-- `∑[A197652(n+1)+n]` -/
def P10139417951257307455.Spec : Prop :=
  ∀ n, P10139417951257307455.a n = A200039 (n + 1)

end A200039

/-! ## A200039.P10339416128669910324

`A202963(n+1)-2*(n+1)`
-/

namespace A200039.P10339416128669910324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202963 (n + 1) - (2 * (n + 1) : ℤ)

end

end A200039.P10339416128669910324

namespace A200039

/-- `A202963(n+1)-2*(n+1)` -/
def P10339416128669910324.Spec : Prop :=
  ∀ n, P10339416128669910324.a n = A200039 (n + 1)

end A200039

/-!
# A200040: Number of -n..n arrays x(0..3) of 4 elements with sum zero and with zeroth through 3rd differences all nonzero.

The programs for A200040, there is no canonical definition to state claims against.
-/

/-! ## A200040.P8511804070508980227

`A199945(n+1)-A200167(n+1)`
-/

namespace A200040.P8511804070508980227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199945 (n + 1) - A200167 (n + 1)

end

end A200040.P8511804070508980227

/-! ## A200040.P1412749334362443581

`A200038(∑[n+3]+7)`
-/

namespace A200040.P1412749334362443581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A200040.P1412749334362443581

/-! ## A200040.P7770659598392566095

`A199943(∑[n+3]+7)-A200167(n+1)`
-/

namespace A200040.P7770659598392566095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (∑ j ∈ Finset.range (n + 1), f1 j + 7) - A200167 (n + 1)

end

end A200040.P7770659598392566095

/-! ## A200040.P1680433053344561187

`A199945(n+1)-A200165(A141214(n)+7)`
-/

namespace A200040.P1680433053344561187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199945 (n + 1) - A200165 (A141214 n + 7).toNat

end

end A200040.P1680433053344561187

/-! ## A200040.P320040294263926291

`A199945(n+1)-A200165(A052905(n)+9)`
-/

namespace A200040.P320040294263926291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199945 (n + 1) - A200165 (A052905 n + 9).toNat

end

end A200040.P320040294263926291

/-!
# A200041: Number of -n..n arrays x(0..4) of 5 elements with sum zero and with zeroth through 4th differences all nonzero.

The programs for A200041, there is no canonical definition to state claims against.
-/

/-! ## A200041.P15262898533233892956

`A199946(n+1)-A200168(n+1)`
-/

namespace A200041.P15262898533233892956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199946 (n + 1) - A200168 (n + 1)

end

end A200041.P15262898533233892956

/-! ## A200041.P10740264990505131150

`A199946(A000027(n+1))%A200168(n+1)`
-/

namespace A200041.P10740264990505131150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199946 (A000027 (n + 1)).toNat) (A200168 (n + 1))

end

end A200041.P10740264990505131150

/-! ## A200041.P14101802611924545394

`A199946(A028310(n)+1)%A200168(n+1)`
-/

namespace A200041.P14101802611924545394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199946 (A028310 n + 1).toNat) (A200168 (n + 1))

end

end A200041.P14101802611924545394

/-! ## A200041.P1875544475223175805

`A199946(A064680(2*n)+1)%A200168(n+1)`
-/

namespace A200041.P1875544475223175805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199946 (A064680 (2 * n) + 1).toNat) (A200168 (n + 1))

end

end A200041.P1875544475223175805

/-! ## A200041.P13522869961923308415

`A199946(A283616(3*n+5)+n+1)%A200168(n+1)`
-/

namespace A200041.P13522869961923308415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199946 (A283616 (3 * n + 5) + (n + 1 : ℤ)).toNat) (A200168 (n + 1))

end

end A200041.P13522869961923308415

/-!
# A200042: Number of -n..n arrays x(0..5) of 6 elements with sum zero and with zeroth through 5th differences all nonzero.

The programs for A200042, there is no canonical definition to state claims against.
-/

/-! ## A200042.P131055304409306519

`A199947(n+1)-A200169(n+1)`
-/

namespace A200042.P131055304409306519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199947 (n + 1) - A200169 (n + 1)

end

end A200042.P131055304409306519

/-! ## A200042.P13267000643025476

`A199947(n+1)+A008683(A142921(n+1))*A200169(n+1)`
-/

namespace A200042.P13267000643025476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199947 (n + 1) + A008683 (A142921 (n + 1)).toNat * A200169 (n + 1)

end

end A200042.P13267000643025476

/-! ## A200042.P11898515699085237176

`A200038(A166136(n+4))`
-/

namespace A200042.P11898515699085237176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (A166136 (n + 4)).toNat

end

end A200042.P11898515699085237176

/-! ## A200042.P16307964079418745118

`A200038(A056115(n)+21)`
-/

namespace A200042.P16307964079418745118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (A056115 n + 21).toNat

end

end A200042.P16307964079418745118

/-! ## A200042.P8157255270471376070

`A200038(A167499(n+4)+1)`
-/

namespace A200042.P8157255270471376070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (A167499 (n + 4) + 1).toNat

end

end A200042.P8157255270471376070

/-!
# A200043: Number of -n..n arrays x(0..6) of 7 elements with sum zero and with zeroth through 6th differences all nonzero.

The programs for A200043, there is no canonical definition to state claims against.
-/

/-! ## A200043.P16288929809358079657

`A199948(n+1)-A200170(n+1)`
-/

namespace A200043.P16288929809358079657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199948 (n + 1) - A200170 (n + 1)

end

end A200043.P16288929809358079657

/-! ## A200043.P3205164313732873436

`A199948(A000027(n+1))%A200170(n+1)`
-/

namespace A200043.P3205164313732873436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199948 (A000027 (n + 1)).toNat) (A200170 (n + 1))

end

end A200043.P3205164313732873436

/-! ## A200043.P2321463558344971983

`A200038(A056119(n)+28)`
-/

namespace A200043.P2321463558344971983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (A056119 n + 28).toNat

end

end A200043.P2321463558344971983

/-! ## A200043.P636839336795044852

`A200038(eq[11, A066657(n)])`
-/

namespace A200043.P636839336795044852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200043.P636839336795044852

/-! ## A200043.P11957334362865866214

`A200038(A167499(n+5)+2)`
-/

namespace A200043.P11957334362865866214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (A167499 (n + 5) + 2).toNat

end

end A200043.P11957334362865866214

/-!
# A200046: Numbers n such that the equation x^n + (x+1)^n = (x+2)^n (mod n), x = 0..n-1 has no solution.

The programs for A200046, there is no canonical definition to state claims against.
-/

/-! ## A200046.P11945526879018683579

`eq[0, A200219(n+4)]+4`
-/

namespace A200046.P11945526879018683579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200219 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 4

end

end A200046.P11945526879018683579

/-! ## A200046.P8466734023589132117

`eq[0, A200219(A028310(n))]`
-/

namespace A200046.P8466734023589132117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200219 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A200046.P8466734023589132117

/-! ## A200046.P15692282181292214753

`A004442(eq[0, A200219(n+1)])`
-/

namespace A200046.P15692282181292214753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200046.P15692282181292214753

/-! ## A200046.P9296651010276552467

`A109613(eq[0, A200219(n+1)])`
-/

namespace A200046.P9296651010276552467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200046.P9296651010276552467

/-! ## A200046.P1246648317387657055

`A131738(eq[0, A200219(n+1)])`
-/

namespace A200046.P1246648317387657055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200046.P1246648317387657055

/-! ## A200046.P2962980162689870389

`eq[0, A200219(A233583(n+1))]`
-/

namespace A200046.P2962980162689870389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200219 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A200046.P2962980162689870389

/-!
# A200047: Number of compositions of n having smallest part equal to 2.

The programs for A200047, the canonical program `A200047.P2011833773881079819` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200047 has offset 1).

The definition of A200047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200047.P2011833773881079819

`A000045(n)-Δ[A000930(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A200047

/-- `A000045(n)-Δ[A000930(n)]` -/
def P2011833773881079819.Spec : Prop :=
  ∀ n, P2011833773881079819.a n = A200047 (n + 1)

theorem P2011833773881079819.correct : P2011833773881079819.Spec := by
  intro n
  simp only [A200047, Nat.add_sub_cancel]

end A200047

/-! ## A200047.P6137042334339985792

`A000045(n)-A078012(n+1)`
-/

namespace A200047.P6137042334339985792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A078012 (n + 1)

end

end A200047.P6137042334339985792

namespace A200047

/-- `A000045(n)-A078012(n+1)` -/
def P6137042334339985792.Spec : Prop :=
  ∀ n, P6137042334339985792.a n = A200047 (n + 1)

end A200047

/-! ## A200047.P5021628457921254608

`A000045(n)-A135851(n+3)`
-/

namespace A200047.P5021628457921254608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A135851 (n + 3)

end

end A200047.P5021628457921254608

namespace A200047

/-- `A000045(n)-A135851(n+3)` -/
def P5021628457921254608.Spec : Prop :=
  ∀ n, P5021628457921254608.a n = A200047 (n + 1)

end A200047

/-! ## A200047.P17094435174345962850

`A103609(2*n)-A226916(2*n+3)`
-/

namespace A200047.P17094435174345962850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) - A226916 (2 * n + 3)

end

end A200047.P17094435174345962850

namespace A200047

/-- `A103609(2*n)-A226916(2*n+3)` -/
def P17094435174345962850.Spec : Prop :=
  ∀ n, P17094435174345962850.a n = A200047 (n + 1)

end A200047

/-! ## A200047.P6766645716436514261

`A000045(n)+A058278(n)-A000930(n)`
-/

namespace A200047.P6766645716436514261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A058278 n - A000930 n)

end

end A200047.P6766645716436514261

namespace A200047

/-- `A000045(n)+A058278(n)-A000930(n)` -/
def P6766645716436514261.Spec : Prop :=
  ∀ n, P6766645716436514261.a n = A200047 (n + 1)

end A200047

/-! ## A200047.P7202299125548075855

`A000045(n)+A000930(n)-A068921(n)`
-/

namespace A200047.P7202299125548075855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A000930 n - A068921 n)

end

end A200047.P7202299125548075855

namespace A200047

/-- `A000045(n)+A000930(n)-A068921(n)` -/
def P7202299125548075855.Spec : Prop :=
  ∀ n, P7202299125548075855.a n = A200047 (n + 1)

end A200047

/-! ## A200047.P17223782120534273969

`A000045(n)+A107458(n)-A013979(n)`
-/

namespace A200047.P17223782120534273969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A107458 n - A013979 n)

end

end A200047.P17223782120534273969

namespace A200047

/-- `A000045(n)+A107458(n)-A013979(n)` -/
def P17223782120534273969.Spec : Prop :=
  ∀ n, P17223782120534273969.a n = A200047 (n + 1)

end A200047

/-! ## A200047.P5969004405526707299

`A000045(n)+A000930(n)-A000930(n+1)`
-/

namespace A200047.P5969004405526707299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A000930 n - A000930 (n + 1))

end

end A200047.P5969004405526707299

namespace A200047

/-- `A000045(n)+A000930(n)-A000930(n+1)` -/
def P5969004405526707299.Spec : Prop :=
  ∀ n, P5969004405526707299.a n = A200047 (n + 1)

theorem P5969004405526707299.correct : P5969004405526707299.Spec := by
  intro n
  simp only [A200047, Nat.add_sub_cancel, A200047.P5969004405526707299.a, A200047.P2011833773881079819.f1, A200047.P2011833773881079819.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A200047

/-! ## A200047.P441600840031289610

`Δ[A000071(n+1)-A000930(n)]`
-/

namespace A200047.P441600840031289610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) - A000930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200047.P441600840031289610

namespace A200047

/-- `Δ[A000071(n+1)-A000930(n)]` -/
def P441600840031289610.Spec : Prop :=
  ∀ n, P441600840031289610.a n = A200047 (n + 1)

end A200047

/-! ## A200047.P10120680105300974573

`Δ[Δ[A143281(n)]]`
-/

namespace A200047.P10120680105300974573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143281 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200047.P10120680105300974573

namespace A200047

/-- `Δ[Δ[A143281(n)]]` -/
def P10120680105300974573.Spec : Prop :=
  ∀ n, P10120680105300974573.a n = A200047 (n + 1)

end A200047

/-! ## A200047.P9746311966438242777

`Δ[Δ[a(n-1)+A000045(n-2)+a(n-3)]]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A200047.P9746311966438242777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f2 =>
  f2 (n - 1) + (A000045 (n - 2) + f2 (n - 3))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200047.P9746311966438242777

namespace A200047

/-- `Δ[Δ[a(n-1)+A000045(n-2)+a(n-3)]]` -/
def P9746311966438242777.Spec : Prop :=
  ∀ n, P9746311966438242777.a n = A200047 (n + 1)

end A200047

/-! ## A200047.P17461925735215298421

`Δ[Δ[A115339(2*n+1)-A000930(n+2)]]`
-/

namespace A200047.P17461925735215298421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (2 * n + 1) - A000930 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200047.P17461925735215298421

namespace A200047

/-- `Δ[Δ[A115339(2*n+1)-A000930(n+2)]]` -/
def P17461925735215298421.Spec : Prop :=
  ∀ n, P17461925735215298421.a n = A200047 (n + 1)

end A200047

/-! ## A200047.P3897806594043589207

`Δ[Δ[A118645(n)-A008466(n)]]`
-/

namespace A200047.P3897806594043589207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118645 n - A008466 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200047.P3897806594043589207

namespace A200047

/-- `Δ[Δ[A118645(n)-A008466(n)]]` -/
def P3897806594043589207.Spec : Prop :=
  ∀ n, P3897806594043589207.a n = A200047 (n + 1)

end A200047

/-!
# A200048: Number of real singularities on a family of degree-3n algebraic surfaces.

The programs for A200048, there is no canonical definition to state claims against.
-/

/-! ## A200048.P12548651065467632356

`A352746(A348654(3*n+1))+A057870(3*(n+1))`
-/

namespace A200048.P12548651065467632356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352746 (A348654 (3 * n + 1)).toNat + A057870 (3 * (n + 1))

end

end A200048.P12548651065467632356

/-!
# A200049: Positions of squares of odd primes among odd powerful numbers A062739.

The programs for A200049, there is no canonical definition to state claims against.
-/

/-! ## A200049.P8815232725028827816

`eq[2, A001222(A062739(n+1))]+1`
-/

namespace A200049.P8815232725028827816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A062739 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A200049.P8815232725028827816

/-!
# A200050: a(2) = 1, then (p-1)*(p-4)/2, with p = prime(n), n > 2.

The programs for A200050, the canonical program `A200050.P8139159985617875123` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200050 has offset 2).

The definition of A200050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200050.P10800756208503715698

`abs(1-C(∑[A001223(n+1)], 2))`
-/

namespace A200050.P10800756208503715698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 : ℤ)|

end

end A200050.P10800756208503715698

namespace A200050

/-- `abs(1-C(∑[A001223(n+1)], 2))` -/
def P10800756208503715698.Spec : Prop :=
  ∀ n, P10800756208503715698.a n = A200050 (n + 2)

end A200050

/-! ## A200050.P8139159985617875123

`abs(C(A156037(n+2), 2)-A156037(n+2))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A200050

/-- `abs(C(A156037(n+2), 2)-A156037(n+2))` -/
def P8139159985617875123.Spec : Prop :=
  ∀ n, P8139159985617875123.a n = A200050 (n + 2)

theorem P8139159985617875123.correct : P8139159985617875123.Spec := by
  intro n
  simp only [A200050, Nat.add_sub_cancel]

end A200050

/-! ## A200050.P4244353741083577642

`abs(1-A000217(A000040(n+2)-3))`
-/

namespace A200050.P4244353741083577642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A000217 (A000040 (n + 2) - 3).toNat|

end

end A200050.P4244353741083577642

namespace A200050

/-- `abs(1-A000217(A000040(n+2)-3))` -/
def P4244353741083577642.Spec : Prop :=
  ∀ n, P4244353741083577642.a n = A200050 (n + 2)

end A200050

/-! ## A200050.P2118414639960331920

`record[A000217(A000010(n+1))-2*n]`
-/

namespace A200050.P2118414639960331920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000010 (n + 1)).toNat - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200050.P2118414639960331920

namespace A200050

/-- `record[A000217(A000010(n+1))-2*n]` -/
def P2118414639960331920.Spec : Prop :=
  ∀ n, P2118414639960331920.a n = A200050 (n + 2)

end A200050

/-! ## A200050.P16841870811743136384

`record[A000217(gcd(n, A000010(n+2)))-n]`
-/

namespace A200050.P16841870811743136384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.gcd (n : ℤ) (A000010 (n + 2))) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200050.P16841870811743136384

namespace A200050

/-- `record[A000217(gcd(n, A000010(n+2)))-n]` -/
def P16841870811743136384.Spec : Prop :=
  ∀ n, P16841870811743136384.a n = A200050 (n + 2)

end A200050

/-! ## A200050.P5599008131425365602

`abs(A014107(A175540(n+1)-n))`
-/

namespace A200050.P5599008131425365602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014107 (A175540 (n + 1) - (n : ℤ)).toNat|

end

end A200050.P5599008131425365602

namespace A200050

/-- `abs(A014107(A175540(n+1)-n))` -/
def P5599008131425365602.Spec : Prop :=
  ∀ n, P5599008131425365602.a n = A200050 (n + 2)

end A200050

/-! ## A200050.P14830147556789378900

`record[A090780(n+1)-2*n]`
-/

namespace A200050.P14830147556789378900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090780 (n + 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200050.P14830147556789378900

namespace A200050

/-- `record[A090780(n+1)-2*n]` -/
def P14830147556789378900.Spec : Prop :=
  ∀ n, P14830147556789378900.a n = A200050 (n + 2)

end A200050

/-! ## A200050.P1636848842753096265

`A107386(A165972(n+1))`
-/

namespace A200050.P1636848842753096265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107386 (A165972 (n + 1)).toNat

end

end A200050.P1636848842753096265

namespace A200050

/-- `A107386(A165972(n+1))` -/
def P1636848842753096265.Spec : Prop :=
  ∀ n, P1636848842753096265.a n = A200050 (n + 2)

end A200050

/-! ## A200050.P279918940921904628

`A212342(A154115(n+1))`
-/

namespace A200050.P279918940921904628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212342 (A154115 (n + 1)).toNat

end

end A200050.P279918940921904628

namespace A200050

/-- `A212342(A154115(n+1))` -/
def P279918940921904628.Spec : Prop :=
  ∀ n, P279918940921904628.a n = A200050 (n + 2)

end A200050

/-! ## A200050.P14912224362349337601

`A107386(A006093(n+2))`
-/

namespace A200050.P14912224362349337601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107386 (A006093 (n + 2)).toNat

end

end A200050.P14912224362349337601

namespace A200050

/-- `A107386(A006093(n+2))` -/
def P14912224362349337601.Spec : Prop :=
  ∀ n, P14912224362349337601.a n = A200050 (n + 2)

end A200050

/-! ## A200050.P7939784445645036483

`A107386(A039915(n+2))`
-/

namespace A200050.P7939784445645036483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107386 (A039915 (n + 2)).toNat

end

end A200050.P7939784445645036483

namespace A200050

/-- `A107386(A039915(n+2))` -/
def P7939784445645036483.Spec : Prop :=
  ∀ n, P7939784445645036483.a n = A200050 (n + 2)

end A200050

/-! ## A200050.P13725637182490847141

`A107386(A156037(n+2))`
-/

namespace A200050.P13725637182490847141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107386 (A156037 (n + 2)).toNat

end

end A200050.P13725637182490847141

namespace A200050

/-- `A107386(A156037(n+2))` -/
def P13725637182490847141.Spec : Prop :=
  ∀ n, P13725637182490847141.a n = A200050 (n + 2)

end A200050

/-! ## A200050.P3879680956700001798

`A212342(A086801(n+2))`
-/

namespace A200050.P3879680956700001798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212342 (A086801 (n + 2)).toNat

end

end A200050.P3879680956700001798

namespace A200050

/-- `A212342(A086801(n+2))` -/
def P3879680956700001798.Spec : Prop :=
  ∀ n, P3879680956700001798.a n = A200050 (n + 2)

end A200050

/-! ## A200050.P13764553198000107261

`record[A107386(A000010(n+1))]`
-/

namespace A200050.P13764553198000107261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107386 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200050.P13764553198000107261

namespace A200050

/-- `record[A107386(A000010(n+1))]` -/
def P13764553198000107261.Spec : Prop :=
  ∀ n, P13764553198000107261.a n = A200050 (n + 2)

end A200050

/-! ## A200050.P7405074029273519722

`A107386(A000040(n+2)-1)`
-/

namespace A200050.P7405074029273519722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107386 (A000040 (n + 2) - 1).toNat

end

end A200050.P7405074029273519722

namespace A200050

/-- `A107386(A000040(n+2)-1)` -/
def P7405074029273519722.Spec : Prop :=
  ∀ n, P7405074029273519722.a n = A200050 (n + 2)

end A200050

/-! ## A200050.P7699687765205309652

`record[A000217(A058026(n+1))-n]`
-/

namespace A200050.P7699687765205309652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A058026 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200050.P7699687765205309652

namespace A200050

/-- `record[A000217(A058026(n+1))-n]` -/
def P7699687765205309652.Spec : Prop :=
  ∀ n, P7699687765205309652.a n = A200050 (n + 2)

end A200050

/-! ## A200050.P8980108413207367671

`record[A000010(n+1)²-A000096(n)]`
-/

namespace A200050.P8980108413207367671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ 2 - A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200050.P8980108413207367671

namespace A200050

/-- `record[A000010(n+1)²-A000096(n)]` -/
def P8980108413207367671.Spec : Prop :=
  ∀ n, P8980108413207367671.a n = A200050 (n + 2)

end A200050

/-! ## A200050.P7798043183095390993

`record[A126335(n+1)%A126286(n+1)]`
-/

namespace A200050.P7798043183095390993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126335 (n + 1)) (A126286 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200050.P7798043183095390993

namespace A200050

/-- `record[A126335(n+1)%A126286(n+1)]` -/
def P7798043183095390993.Spec : Prop :=
  ∀ n, P7798043183095390993.a n = A200050 (n + 2)

end A200050

/-! ## A200050.P16438309889550444842

`record[A266221(A109606(n+1))-3*n+n]`
-/

namespace A200050.P16438309889550444842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266221 (A109606 (n + 1)).toNat - (3 * n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200050.P16438309889550444842

namespace A200050

/-- `record[A266221(A109606(n+1))-3*n+n]` -/
def P16438309889550444842.Spec : Prop :=
  ∀ n, P16438309889550444842.a n = A200050 (n + 2)

end A200050

/-! ## A200050.P6811092041185966297

`A339410(A115392(n+2))`
-/

namespace A200050.P6811092041185966297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339410 (A115392 (n + 2)).toNat

end

end A200050.P6811092041185966297

namespace A200050

/-- `A339410(A115392(n+2))` -/
def P6811092041185966297.Spec : Prop :=
  ∀ n, P6811092041185966297.a n = A200050 (n + 2)

end A200050

/-!
# A200051: Number of -2..2 arrays x(0..n-1) of n elements with zero sum and elements alternately strictly increasing and strictly decreasing.

The programs for A200051, there is no canonical definition to state claims against.
-/

/-! ## A200051.P16228324454368702284

`A200057(∑[n+2])`
-/

namespace A200051.P16228324454368702284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200051.P16228324454368702284

/-! ## A200051.P10364084588119160770

`record[gcd(A105422(n), A200057(n+1))]`
-/

namespace A200051.P10364084588119160770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105422 n) (A200057 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200051.P10364084588119160770

/-! ## A200051.P11481044751662174290

`record[A200057(A000096(A065648(n)))]`
-/

namespace A200051.P11481044751662174290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A000096 (A065648 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200051.P11481044751662174290

/-! ## A200051.P5085066411086392571

`record[A200057(A000096(A133310(n)))]`
-/

namespace A200051.P5085066411086392571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A000096 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200051.P5085066411086392571

/-! ## A200051.P7992403092906777973

`record[A200057(A000096(A154958(n)))]`
-/

namespace A200051.P7992403092906777973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A000096 (A154958 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200051.P7992403092906777973

/-!
# A200052: Number of -3..3 arrays x(0..n-1) of n elements with zero sum and elements alternately strictly increasing and strictly decreasing.

The programs for A200052, there is no canonical definition to state claims against.
-/

/-! ## A200052.P11441064949834882429

`A200057(∑[n+3]+1)`
-/

namespace A200052.P11441064949834882429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200052.P11441064949834882429

/-! ## A200052.P8010368031202181061

`A200057(A034856(n+2))+A025444(n)`
-/

namespace A200052.P8010368031202181061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A034856 (n + 2)).toNat + A025444 n

end

end A200052.P8010368031202181061

/-! ## A200052.P15874478876270934794

`or(A000007(n), A200057(A034856(n+2)))`
-/

namespace A200052.P15874478876270934794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A200057 (A034856 (n + 2)).toNat)

end

end A200052.P15874478876270934794

/-! ## A200052.P16004034010434752215

`A200057(A034856(n+2))+A000007(n+1)`
-/

namespace A200052.P16004034010434752215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A200052.P16004034010434752215

/-! ## A200052.P17206549180045456432

`A200057(A034856(n+2))%A016146(n+1)`
-/

namespace A200052.P17206549180045456432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200057 (A034856 (n + 2)).toNat) (A016146 (n + 1))

end

end A200052.P17206549180045456432

/-!
# A200053: Number of -4..4 arrays X (0..n-1) of n elements with zero sum and elements alternately strictly increasing and strictly decreasing.

The programs for A200053, there is no canonical definition to state claims against.
-/

/-! ## A200053.P16727790355205431582

`A200057(A027379(n+2))`
-/

namespace A200053.P16727790355205431582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A027379 (n + 2)).toNat

end

end A200053.P16727790355205431582

/-! ## A200053.P2250115097615130317

`A200057(A055998(n+2))`
-/

namespace A200053.P2250115097615130317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A055998 (n + 2)).toNat

end

end A200053.P2250115097615130317

/-! ## A200053.P15328342589578162410

`A200057(A155212(n)+5)`
-/

namespace A200053.P15328342589578162410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A155212 n + 5).toNat

end

end A200053.P15328342589578162410

/-! ## A200053.P6176550508226757758

`A200057(A056000(n)+7)`
-/

namespace A200053.P6176550508226757758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A056000 n + 7).toNat

end

end A200053.P6176550508226757758

/-! ## A200053.P4813750990577929540

`A200057(A052905(n+1)+2)`
-/

namespace A200053.P4813750990577929540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A052905 (n + 1) + 2).toNat

end

end A200053.P4813750990577929540

/-!
# A200054: Number of -5..5 arrays x(0..n-1) of n elements with zero sum and elements alternately strictly increasing and strictly decreasing.

The programs for A200054, there is no canonical definition to state claims against.
-/

/-! ## A200054.P2237424350138222606

`A200057(A046691(n+3))`
-/

namespace A200054.P2237424350138222606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A046691 (n + 3)).toNat

end

end A200054.P2237424350138222606

/-! ## A200054.P6435912459771752909

`A200057(Δ[A023545(n+1)])`
-/

namespace A200054.P6435912459771752909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (f1 (n + 1) - f1 n).toNat

end

end A200054.P6435912459771752909

/-! ## A200054.P9788232682963638066

`A200057(A000217(n+5)-4)`
-/

namespace A200054.P9788232682963638066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A000217 (n + 5) - 4).toNat

end

end A200054.P9788232682963638066

/-! ## A200054.P11603551202163403391

`record[A200057(A038722(A167499(n)))]`
-/

namespace A200054.P11603551202163403391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A038722 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200054.P11603551202163403391

/-! ## A200054.P16095649891250822065

`A200057(A180486(n+1)+A167614(n+1))`
-/

namespace A200054.P16095649891250822065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A180486 (n + 1) + A167614 (n + 1)).toNat

end

end A200054.P16095649891250822065

/-!
# A200055: Number of -6..6 arrays x(0..n-1) of n elements with zero sum and elements alternately strictly increasing and strictly decreasing.

The programs for A200055, there is no canonical definition to state claims against.
-/

/-! ## A200055.P17091097931179183142

`A200057(A052905(n+3))`
-/

namespace A200055.P17091097931179183142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A052905 (n + 3)).toNat

end

end A200055.P17091097931179183142

/-! ## A200055.P15559915032238374797

`A200057(A074171(n+6)+1)`
-/

namespace A200055.P15559915032238374797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A074171 (n + 6) + 1).toNat

end

end A200055.P15559915032238374797

/-! ## A200055.P17157053939214949799

`A200057(Δ[Δ[A006504(n+1)]])`
-/

namespace A200055.P17157053939214949799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (f1 (n + 1) - f1 n).toNat

end

end A200055.P17157053939214949799

/-! ## A200055.P2377081921720878645

`A200057(Δ[A023545(n+2)]-1)`
-/

namespace A200055.P2377081921720878645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (f1 (n + 1) - f1 n - 1).toNat

end

end A200055.P2377081921720878645

/-! ## A200055.P16996692592709696960

`A200057(A000217(n+5)+n+1)`
-/

namespace A200055.P16996692592709696960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A000217 (n + 5) + (n + 1 : ℤ)).toNat

end

end A200055.P16996692592709696960

/-!
# A200056: Number of -7..7 arrays x(0..n-1) of n elements with zero sum and elements alternately strictly increasing and strictly decreasing.

The programs for A200056, there is no canonical definition to state claims against.
-/

/-! ## A200056.P9407715441690919404

`A200057(A055999(n+4))`
-/

namespace A200056.P9407715441690919404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A055999 (n + 4)).toNat

end

end A200056.P9407715441690919404

/-! ## A200056.P516730011850011028

`A200057(A074171(n+7))`
-/

namespace A200056.P516730011850011028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A074171 (n + 7)).toNat

end

end A200056.P516730011850011028

/-! ## A200056.P526418297021675284

`A200057(A000124(n+7)-7)`
-/

namespace A200056.P526418297021675284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A000124 (n + 7) - 7).toNat

end

end A200056.P526418297021675284

/-! ## A200056.P16688759354736323639

`A200057(A000096(n+5)+n+2)`
-/

namespace A200056.P16688759354736323639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A200056.P16688759354736323639

/-! ## A200056.P4467723210129927291

`A200057(A133263(n+6)+n-1)`
-/

namespace A200056.P4467723210129927291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A133263 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A200056.P4467723210129927291

/-!
# A200057: T(n,k)=Number of -k..k arrays x(0..n-1) of n elements with zero sum and elements alternately strictly increasing and strictly decreasing.

The programs for A200057, there is no canonical definition to state claims against.
-/

/-! ## A200057.P6883455690175782374

`A337243(A294609(n))+A193451(n)`
-/

namespace A200057.P6883455690175782374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337243 (A294609 n).toNat + A193451 n

end

end A200057.P6883455690175782374

/-! ## A200057.P2155835797386850500

`A013609(n)-A051903(A287021(n))`
-/

namespace A200057.P2155835797386850500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n - A051903 (A287021 n).toNat

end

end A200057.P2155835797386850500

/-! ## A200057.P8656635109315414400

`A178691(A294609(n))+A093190(n+1)`
-/

namespace A200057.P8656635109315414400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178691 (A294609 n).toNat + A093190 (n + 1)

end

end A200057.P8656635109315414400

/-! ## A200057.P3728674376391764063

`A353331(A001997(n)+1)+A172431(n+1)`
-/

namespace A200057.P3728674376391764063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353331 (A001997 n + 1).toNat + A172431 (n + 1)

end

end A200057.P3728674376391764063

/-! ## A200057.P5160050038195096895

`A179801(∑[A048991(n+1)])+A093190(n+1)`
-/

namespace A200057.P5160050038195096895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179801 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A093190 (n + 1)

end

end A200057.P5160050038195096895

/-!
# A200058: Number of -n..n arrays x(0..3) of 4 elements with zero sum and elements alternately strictly increasing and strictly decreasing.

The programs for A200058, the canonical program `A200058.P1204123493912984667` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200058 has offset 1).

The definition of A200058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200058.P1204123493912984667

`∑[2*(A194275(Δ[n²])+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A200058

/-- `∑[2*(A194275(Δ[n²])+1)]` -/
def P1204123493912984667.Spec : Prop :=
  ∀ n, P1204123493912984667.a n = A200058 (n + 1)

theorem P1204123493912984667.correct : P1204123493912984667.Spec := by
  intro n
  simp only [A200058, Nat.add_sub_cancel]

end A200058

/-! ## A200058.P7145375133059392805

`∑[2*ceil(A005891(2*n+1)/3)]`
-/

namespace A200058.P7145375133059392805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(A005891 (2 * n + 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200058.P7145375133059392805

namespace A200058

/-- `∑[2*ceil(A005891(2*n+1)/3)]` -/
def P7145375133059392805.Spec : Prop :=
  ∀ n, P7145375133059392805.a n = A200058 (n + 1)

end A200058

/-! ## A200058.P2193292317934723444

`2*∑[A194275(A005408(n))+1]`
-/

namespace A200058.P2193292317934723444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194275 (A005408 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200058.P2193292317934723444

namespace A200058

/-- `2*∑[A194275(A005408(n))+1]` -/
def P2193292317934723444.Spec : Prop :=
  ∀ n, P2193292317934723444.a n = A200058 (n + 1)

end A200058

/-! ## A200058.P13914134484375182063

`2*∑[A194275(Δ[A002522(n)])+1]`
-/

namespace A200058.P13914134484375182063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194275 (f2 (n + 1) - f2 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200058.P13914134484375182063

namespace A200058

/-- `2*∑[A194275(Δ[A002522(n)])+1]` -/
def P13914134484375182063.Spec : Prop :=
  ∀ n, P13914134484375182063.a n = A200058 (n + 1)

end A200058

/-! ## A200058.P3896285324339881388

`∑[A316357(2*n+1)]-A000035(n+1)`
-/

namespace A200058.P3896285324339881388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316357 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000035 (n + 1)

end

end A200058.P3896285324339881388

namespace A200058

/-- `∑[A316357(2*n+1)]-A000035(n+1)` -/
def P3896285324339881388.Spec : Prop :=
  ∀ n, P3896285324339881388.a n = A200058 (n + 1)

end A200058

/-! ## A200058.P16705066229469489722

`∑[A316357(2*n+1)-A062157(n+1)]`
-/

namespace A200058.P16705066229469489722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316357 (2 * n + 1) - A062157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200058.P16705066229469489722

namespace A200058

/-- `∑[A316357(2*n+1)-A062157(n+1)]` -/
def P16705066229469489722.Spec : Prop :=
  ∀ n, P16705066229469489722.a n = A200058 (n + 1)

end A200058

/-! ## A200058.P5412721056569388609

`∑[A316357(2*n+1)-A056594(2*n)]`
-/

namespace A200058.P5412721056569388609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316357 (2 * n + 1) - A056594 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200058.P5412721056569388609

namespace A200058

/-- `∑[A316357(2*n+1)-A056594(2*n)]` -/
def P5412721056569388609.Spec : Prop :=
  ∀ n, P5412721056569388609.a n = A200058 (n + 1)

end A200058

/-! ## A200058.P18269490564124992902

`A227347(2*(n+1))+A010761(2*(n+1))`
-/

namespace A200058.P18269490564124992902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227347 (2 * (n + 1)) + A010761 (2 * (n + 1))

end

end A200058.P18269490564124992902

namespace A200058

/-- `A227347(2*(n+1))+A010761(2*(n+1))` -/
def P18269490564124992902.Spec : Prop :=
  ∀ n, P18269490564124992902.a n = A200058 (n + 1)

end A200058

/-! ## A200058.P10576255881906143623

`∑[A103517(A194275(2*n+1))]`
-/

namespace A200058.P10576255881906143623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A194275 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200058.P10576255881906143623

namespace A200058

/-- `∑[A103517(A194275(2*n+1))]` -/
def P10576255881906143623.Spec : Prop :=
  ∀ n, P10576255881906143623.a n = A200058 (n + 1)

end A200058

/-! ## A200058.P5630461455501013074

`∑[A005843(A194275(2*n+1)+1)]`
-/

namespace A200058.P5630461455501013074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A194275 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200058.P5630461455501013074

namespace A200058

/-- `∑[A005843(A194275(2*n+1)+1)]` -/
def P5630461455501013074.Spec : Prop :=
  ∀ n, P5630461455501013074.a n = A200058 (n + 1)

end A200058

/-!
# A200059: Number of -n..n arrays x(0..4) of 5 elements with zero sum and elements alternately strictly increasing and strictly decreasing.

The programs for A200059, there is no canonical definition to state claims against.
-/

/-! ## A200059.P11458564532031557235

`A200057(A167499(n+3))`
-/

namespace A200059.P11458564532031557235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A167499 (n + 3)).toNat

end

end A200059.P11458564532031557235

/-! ## A200059.P6808754960177006331

`record[A200057(A167614(n+1)+2)]`
-/

namespace A200059.P6808754960177006331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A167614 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200059.P6808754960177006331

/-! ## A200059.P12614845446659366086

`record[A200057(A167499(A005378(n)))]`
-/

namespace A200059.P12614845446659366086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A167499 (A005378 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200059.P12614845446659366086

/-! ## A200059.P1845661174190994370

`record[A200057(A167499(A008619(n)))]`
-/

namespace A200059.P1845661174190994370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A167499 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200059.P1845661174190994370

/-! ## A200059.P970166168669969344

`record[A200057(A167499(A028242(n)))]`
-/

namespace A200059.P970166168669969344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A167499 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200059.P970166168669969344

/-!
# A200060: Number of -n..n arrays x(0..5) of 6 elements with zero sum and elements alternately strictly increasing and strictly decreasing.

The programs for A200060, there is no canonical definition to state claims against.
-/

/-! ## A200060.P15367767706156809201

`A200057(A166136(n+4))`
-/

namespace A200060.P15367767706156809201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A166136 (n + 4)).toNat

end

end A200060.P15367767706156809201

/-! ## A200060.P10710132923655804822

`A200057(A133263(n+5)+4)`
-/

namespace A200060.P10710132923655804822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A133263 (n + 5) + 4).toNat

end

end A200060.P10710132923655804822

/-! ## A200060.P7407664033942900900

`A200057(A000217(n+5)+6)`
-/

namespace A200060.P7407664033942900900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A000217 (n + 5) + 6).toNat

end

end A200060.P7407664033942900900

/-! ## A200060.P14549239843436842399

`record[A200057(A167499(n+1)+1)]`
-/

namespace A200060.P14549239843436842399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A167499 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200060.P14549239843436842399

/-! ## A200060.P18124589090974706628

`record[A200057(A167614(n+1)+3)]`
-/

namespace A200060.P18124589090974706628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A167614 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200060.P18124589090974706628

/-!
# A200061: Number of -n..n arrays x(0..6) of 7 elements with zero sum and elements alternately strictly increasing and strictly decreasing.

The programs for A200061, there is no canonical definition to state claims against.
-/

/-! ## A200061.P2551411934843064231

`A200057(A166136(n+5)+1)`
-/

namespace A200061.P2551411934843064231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A166136 (n + 5) + 1).toNat

end

end A200061.P2551411934843064231

/-! ## A200061.P16805556965121631914

`A200057(A000124(n+6)+6)`
-/

namespace A200061.P16805556965121631914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A000124 (n + 6) + 6).toNat

end

end A200061.P16805556965121631914

/-! ## A200061.P17598544636901155456

`A200057(A000217(n+6)+7)`
-/

namespace A200061.P17598544636901155456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A000217 (n + 6) + 7).toNat

end

end A200061.P17598544636901155456

/-! ## A200061.P4423583458479349546

`A200057(A052905(n+3)+12)`
-/

namespace A200061.P4423583458479349546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A052905 (n + 3) + 12).toNat

end

end A200061.P4423583458479349546

/-! ## A200061.P8798789806324096272

`A200057(A167614(n+3)+A005408(n+7))`
-/

namespace A200061.P8798789806324096272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (A167614 (n + 3) + A005408 (n + 7)).toNat

end

end A200061.P8798789806324096272

/-!
# A200062: Meanders of length n and central angle < 360 degrees.

The programs for A200062, there is no canonical definition to state claims against.
-/

/-! ## A200062.P7207312260432313003

`A199932(n+1)-2^n`
-/

namespace A200062.P7207312260432313003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199932 (n + 1) - (2 ^ n : ℤ)

end

end A200062.P7207312260432313003

/-! ## A200062.P15351449899445331663

`A199932(n+1)%A000079(n)`
-/

namespace A200062.P15351449899445331663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199932 (n + 1)) (A000079 n)

end

end A200062.P15351449899445331663

/-! ## A200062.P10367566557880158288

`and(A000225(n), A199932(n+1))`
-/

namespace A200062.P10367566557880158288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A199932 (n + 1))

end

end A200062.P10367566557880158288

/-! ## A200062.P18236322697823653205

`and(A086224(n), A199932(n+1))`
-/

namespace A200062.P18236322697823653205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086224 n) (A199932 (n + 1))

end

end A200062.P18236322697823653205

/-! ## A200062.P3544412253066539170

`and(A086225(n), A199932(n+1))`
-/

namespace A200062.P3544412253066539170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086225 n) (A199932 (n + 1))

end

end A200062.P3544412253066539170

/-!
# A200063: Indices n where A079878(n) = n.

The programs for A200063, there is no canonical definition to state claims against.
-/

/-! ## A200063.P10401534378247085396

`A252669(A295973(n+1)-2)`
-/

namespace A200063.P10401534378247085396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252669 (A295973 (n + 1) - 2).toNat

end

end A200063.P10401534378247085396

/-! ## A200063.P12411043273356329726

`record[(A079878(n+1)-n)*A079878(n+1)]`
-/

namespace A200063.P12411043273356329726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079878 (n + 1) - (n : ℤ)) * A079878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200063.P12411043273356329726

/-!
# A200067: Maximum sum of all products of absolute differences and distances between element pairs among the integer partitions of n.

The programs for A200067, the canonical program `A200067.P5475478222933441891` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200067 has offset 0).

The definition of A200067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200067.P15821081765039996970

`∑[floor(n/3)*∑[(char[2]+n)²%3]]`
-/

namespace A200067.P15821081765039996970
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = n then 1 else 0) + n) ^ 2 % 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200067.P15821081765039996970

namespace A200067

/-- `∑[floor(n/3)*∑[(char[2]+n)²%3]]` -/
def P15821081765039996970.Spec : Prop :=
  ∀ n, P15821081765039996970.a n = A200067 n

end A200067

/-! ## A200067.P5475478222933441891

`A190798(n-1)-a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A200067

/-- `A190798(n-1)-a(n-1)` -/
def P5475478222933441891.Spec : Prop :=
  ∀ n, P5475478222933441891.a n = A200067 n

theorem P5475478222933441891.correct : P5475478222933441891.Spec := by
  intro n
  simp only [A200067]

end A200067

/-! ## A200067.P251291309373826770

`∑[∑[n]-n]-A140462(n+1)`
-/

namespace A200067.P251291309373826770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A140462 (n + 1)

end

end A200067.P251291309373826770

namespace A200067

/-- `∑[∑[n]-n]-A140462(n+1)` -/
def P251291309373826770.Spec : Prop :=
  ∀ n, P251291309373826770.a n = A200067 n

end A200067

/-! ## A200067.P2747350687507823534

`∑[A002264(n)*A131737(n)]`
-/

namespace A200067.P2747350687507823534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n * A131737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200067.P2747350687507823534

namespace A200067

/-- `∑[A002264(n)*A131737(n)]` -/
def P2747350687507823534.Spec : Prop :=
  ∀ n, P2747350687507823534.a n = A200067 n

end A200067

/-! ## A200067.P4790981451744001689

`∑[2*A008133(n)]-A008133(n)`
-/

namespace A200067.P4790981451744001689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008133 n

end

end A200067.P4790981451744001689

namespace A200067

/-- `∑[2*A008133(n)]-A008133(n)` -/
def P4790981451744001689.Spec : Prop :=
  ∀ n, P4790981451744001689.a n = A200067 n

end A200067

/-! ## A200067.P14666860218012990500

`∑[(n-A008620(n))*A002264(n)]`
-/

namespace A200067.P14666860218012990500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A008620 n) * A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200067.P14666860218012990500

namespace A200067

/-- `∑[(n-A008620(n))*A002264(n)]` -/
def P14666860218012990500.Spec : Prop :=
  ∀ n, P14666860218012990500.a n = A200067 n

end A200067

/-! ## A200067.P9380994169680640535

`A002264(n)*A161680(n-A002264(n))`
-/

namespace A200067.P9380994169680640535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n * A161680 ((n : ℤ) - A002264 n).toNat

end

end A200067.P9380994169680640535

namespace A200067

/-- `A002264(n)*A161680(n-A002264(n))` -/
def P9380994169680640535.Spec : Prop :=
  ∀ n, P9380994169680640535.a n = A200067 n

end A200067

/-! ## A200067.P2524586747411492476

`(n-A004396(n))*A161680(A004396(n))`
-/

namespace A200067.P2524586747411492476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A004396 n) * A161680 (A004396 n).toNat

end

end A200067.P2524586747411492476

namespace A200067

/-- `(n-A004396(n))*A161680(A004396(n))` -/
def P2524586747411492476.Spec : Prop :=
  ∀ n, P2524586747411492476.a n = A200067 n

end A200067

/-! ## A200067.P8321704718867442454

`∑[(A004523(n+1)-1)*A002264(n)]`
-/

namespace A200067.P8321704718867442454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004523 (n + 1) - 1) * A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200067.P8321704718867442454

namespace A200067

/-- `∑[(A004523(n+1)-1)*A002264(n)]` -/
def P8321704718867442454.Spec : Prop :=
  ∀ n, P8321704718867442454.a n = A200067 n

end A200067

/-! ## A200067.P17727569171785210155

`∑[A002264(n)*A002264(A004273(n))]`
-/

namespace A200067.P17727569171785210155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n * A002264 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200067.P17727569171785210155

namespace A200067

/-- `∑[A002264(n)*A002264(A004273(n))]` -/
def P17727569171785210155.Spec : Prop :=
  ∀ n, P17727569171785210155.a n = A200067 n

end A200067

/-! ## A200067.P16785498648152951007

`A008615(2*n+1)*A211534(2*n+1)`
-/

namespace A200067.P16785498648152951007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * n + 1) * A211534 (2 * n + 1)

end

end A200067.P16785498648152951007

namespace A200067

/-- `A008615(2*n+1)*A211534(2*n+1)` -/
def P16785498648152951007.Spec : Prop :=
  ∀ n, P16785498648152951007.a n = A200067 n

end A200067

/-! ## A200067.P6549358083392172209

`C(A002264(2*n+1), 2)*A002264(n+1)`
-/

namespace A200067.P6549358083392172209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A002264 (2 * n + 1)).toNat 2 : ℤ) * A002264 (n + 1)

end

end A200067.P6549358083392172209

namespace A200067

/-- `C(A002264(2*n+1), 2)*A002264(n+1)` -/
def P6549358083392172209.Spec : Prop :=
  ∀ n, P6549358083392172209.a n = A200067 n

end A200067

/-! ## A200067.P15464098341141928761

`A002264(n+1)*A161680(A002264(2*n+1))`
-/

namespace A200067.P15464098341141928761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 1) * A161680 (A002264 (2 * n + 1)).toNat

end

end A200067.P15464098341141928761

namespace A200067

/-- `A002264(n+1)*A161680(A002264(2*n+1))` -/
def P15464098341141928761.Spec : Prop :=
  ∀ n, P15464098341141928761.a n = A200067 n

end A200067

/-! ## A200067.P11647661802274940672

`(A086161(2*n+1)-A086161(n+1))*A211534(2*n+1)`
-/

namespace A200067.P11647661802274940672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086161 (2 * n + 1) - A086161 (n + 1)) * A211534 (2 * n + 1)

end

end A200067.P11647661802274940672

namespace A200067

/-- `(A086161(2*n+1)-A086161(n+1))*A211534(2*n+1)` -/
def P11647661802274940672.Spec : Prop :=
  ∀ n, P11647661802274940672.a n = A200067 n

end A200067

/-! ## A200067.P15482082154409218756

`A034828(n)-A308265(n+1)`
-/

namespace A200067.P15482082154409218756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 n - A308265 (n + 1)

end

end A200067.P15482082154409218756

namespace A200067

/-- `A034828(n)-A308265(n+1)` -/
def P15482082154409218756.Spec : Prop :=
  ∀ n, P15482082154409218756.a n = A200067 n

end A200067

/-! ## A200067.P11563941104150457701

`A062707(A171452(n))`
-/

namespace A200067.P11563941104150457701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 (A171452 n).toNat

end

end A200067.P11563941104150457701

namespace A200067

/-- `A062707(A171452(n))` -/
def P11563941104150457701.Spec : Prop :=
  ∀ n, P11563941104150457701.a n = A200067 n

end A200067

/-!
# A200068: Irregular triangle read by rows: T(n,k), n>=0, 0<=k<=A200067(n), is number of compositions of n such that the sum of weighted inversions equals k and weights are products of absolute differences and distances between the element pairs which are not in sorted order.

The programs for A200068, there is no canonical definition to state claims against.
-/

/-! ## A200068.P3057531879155144291

`A000688(A241035(n)+A089068(n+3))`
-/

namespace A200068.P3057531879155144291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A241035 n + A089068 (n + 3)).toNat

end

end A200068.P3057531879155144291

/-!
# A200069: a(n) = 4*a(n-1) + 13*a(n-2) for n>2, a(1)=1, a(2)=4.

The programs for A200069, the canonical program `A200069.P4010690251819971858` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200069 has offset 1).

The definition of A200069 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+13*a(n-2)` (program `A200069.P4010690251819971858`, by `A200069.P4010690251819971858.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A200069.P4010690251819971858

`4*a(n-1)+13*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A200069

/-- `4*a(n-1)+13*a(n-2)` -/
def P4010690251819971858.Spec : Prop :=
  ∀ n, (P4010690251819971858.a n : ℤ) = A200069 (n + 1)

theorem P4010690251819971858.correct : P4010690251819971858.Spec := by
  intro n
  simp only [A200069, Nat.add_sub_cancel]

end A200069

/-!
# A200073: Coefficients of a generalized Jaco-Lucas polynomial (odd indices) read by rows.

The programs for A200073, there is no canonical definition to state claims against.
-/

/-! ## A200073.P11120938109726181669

`A245962(C(comp[∑[n]]-n, 2)+n)`
-/

namespace A200073.P11120938109726181669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245962 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + n)

end

end A200073.P11120938109726181669

/-! ## A200073.P15637149394387784222

`A245962(A064801(n+1))`
-/

namespace A200073.P15637149394387784222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245962 (A064801 (n + 1)).toNat

end

end A200073.P15637149394387784222

/-! ## A200073.P3068389426130193925

`A245962(A004202(n+1)-1)`
-/

namespace A200073.P3068389426130193925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245962 (A004202 (n + 1) - 1).toNat

end

end A200073.P3068389426130193925

/-! ## A200073.P6620646207440077446

`2*A060921(n)-A060920(n)`
-/

namespace A200073.P6620646207440077446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060921 n - A060920 n

end

end A200073.P6620646207440077446

/-! ## A200073.P7049104255802158214

`A004277(A060921(n))-A060920(n)`
-/

namespace A200073.P7049104255802158214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A060921 n).toNat - A060920 n

end

end A200073.P7049104255802158214

/-!
# A200074: G.f. satisfies A(x) = (1 + x*A(x)^2)*(1 + x^2*A(x)).

The programs for A200074, there is no canonical definition to state claims against.
-/

/-! ## A200074.P13759409577768608659

`A008611(A281347(n+1)-A281363(n+1))`
-/

namespace A200074.P13759409577768608659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A281347 (n + 1) - A281363 (n + 1)).toNat

end

end A200074.P13759409577768608659

/-! ## A200074.P2399317155793392056

`∑[A008616(A172012(n))]`
-/

namespace A200074.P2399317155793392056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A172012 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200074.P2399317155793392056

/-! ## A200074.P2989237548909115611

`A195174(A149983(n+1))`
-/

namespace A200074.P2989237548909115611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A149983 (n + 1)).toNat

end

end A200074.P2989237548909115611

/-!
# A200075: G.f. satisfies A(x) = (1 + x*A(x)^2)*(1 + x^2*A(x)^3).

The programs for A200075, there is no canonical definition to state claims against.
-/

/-! ## A200075.P10857686473464066736

`A004526(A006318(n)+A002816(n+1))`
-/

namespace A200075.P10857686473464066736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A006318 n + A002816 (n + 1)).toNat

end

end A200075.P10857686473464066736

/-! ## A200075.P10612526794134483514

`A056039(A006318(n)+A002816(n+1))`
-/

namespace A200075.P10612526794134483514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056039 (A006318 n + A002816 (n + 1)).toNat

end

end A200075.P10612526794134483514

/-! ## A200075.P6618291412544115200

`A004525(A213333(n+1)+A049177(n+1))`
-/

namespace A200075.P6618291412544115200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A213333 (n + 1) + A049177 (n + 1)).toNat

end

end A200075.P6618291412544115200

/-! ## A200075.P2766602553728205717

`A026741(A213333(n+1)+A049177(n+1))`
-/

namespace A200075.P2766602553728205717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A213333 (n + 1) + A049177 (n + 1)).toNat

end

end A200075.P2766602553728205717

/-!
# A200076: Number of 0..2 arrays x(0..n) of n+1 elements with zero n-1st differences.

The programs for A200076, there is no canonical definition to state claims against.
-/

/-! ## A200076.P9825979164019345305

`A200082(∑[n+2])`
-/

namespace A200076.P9825979164019345305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200076.P9825979164019345305

/-! ## A200076.P176258360886813206

`or(1, A200082(A000096(n+1)))`
-/

namespace A200076.P176258360886813206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A200082 (A000096 (n + 1)).toNat)

end

end A200076.P176258360886813206

/-! ## A200076.P12406424033786315872

`∑{d}[A200082(A000096(n+1)), A000010(#)]`
-/

namespace A200076.P12406424033786315872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (A000096 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A200076.P12406424033786315872

/-! ## A200076.P11840596522646724017

`∏{d}[A200082(A000096(n+1)), A014963(#)]`
-/

namespace A200076.P11840596522646724017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (A000096 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A200076.P11840596522646724017

/-! ## A200076.P7226155481108295748

`A200082(A000096(n+1))%A000108(n+2)`
-/

namespace A200076.P7226155481108295748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200082 (A000096 (n + 1)).toNat) (A000108 (n + 2))

end

end A200076.P7226155481108295748

/-!
# A200077: Number of 0..3 arrays x(0..n) of n+1 elements with zero n-1st differences.

The programs for A200077, there is no canonical definition to state claims against.
-/

/-! ## A200077.P5057627054994499988

`A200082(∑[n+3]+1)`
-/

namespace A200077.P5057627054994499988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200077.P5057627054994499988

/-! ## A200077.P7791826480546969800

`A200082(Δ[A008778(n)])+char[34]`
-/

namespace A200077.P7791826480546969800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200077.P7791826480546969800

/-! ## A200077.P6470200056580292650

`A200082(Δ[A008778(n)])%A000108(n+2)`
-/

namespace A200077.P6470200056580292650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200082 (f1 (n + 1) - f1 n).toNat) (A000108 (n + 2))

end

end A200077.P6470200056580292650

/-! ## A200077.P13072428022419270471

`A200082(Δ[A008778(n)])/A014963(6*(n+1))`
-/

namespace A200077.P13072428022419270471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200082 (f1 (n + 1) - f1 n).toNat : ℚ) / (A014963 (6 * (n + 1)) : ℚ)

end

end A200077.P13072428022419270471

/-! ## A200077.P13511545634403027193

`A200082(Δ[A008778(n)])^(A000040(n+1)%2)`
-/

namespace A200077.P13511545634403027193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200082 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A200077.P13511545634403027193

/-!
# A200078: Number of 0..4 arrays x(0..n) of n+1 elements with zero n-1st differences.

The programs for A200078, there is no canonical definition to state claims against.
-/

/-! ## A200078.P2471458781307248383

`A200082(∑[n+4]+3)`
-/

namespace A200078.P2471458781307248383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A200078.P2471458781307248383

/-! ## A200078.P9014241380312904025

`or(1, A200082(A141214(n+1)))`
-/

namespace A200078.P9014241380312904025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A200082 (A141214 (n + 1)).toNat)

end

end A200078.P9014241380312904025

/-! ## A200078.P12619829512296870804

`or(1, A200082(A027379(n+2)))`
-/

namespace A200078.P12619829512296870804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A200082 (A027379 (n + 2)).toNat)

end

end A200078.P12619829512296870804

/-! ## A200078.P3707993602663378829

`or(1, A200082(eq[4, A002262(n+7)]))`
-/

namespace A200078.P3707993602663378829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A200082 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A200078.P3707993602663378829

/-! ## A200078.P11919595860160409508

`A200082(A027379(n+2))+A185264(n)`
-/

namespace A200078.P11919595860160409508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (A027379 (n + 2)).toNat + A185264 n

end

end A200078.P11919595860160409508

/-!
# A200079: Number of 0..5 arrays x(0..n) of n+1 elements with zero n-1st differences.

The programs for A200079, there is no canonical definition to state claims against.
-/

/-! ## A200079.P10349043244510043208

`A200082(∑[n+5]+6)`
-/

namespace A200079.P10349043244510043208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A200079.P10349043244510043208

/-! ## A200079.P17770698284251551923

`A200082(A046691(n+3))+char[20]`
-/

namespace A200079.P17770698284251551923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (A046691 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200079.P17770698284251551923

/-! ## A200079.P11600424642658481571

`A200082(A046691(n+3))%A000108(n+3)`
-/

namespace A200079.P11600424642658481571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200082 (A046691 (n + 3)).toNat) (A000108 (n + 3))

end

end A200079.P11600424642658481571

/-! ## A200079.P3619552396608588051

`lcm(A001221(n+2), A200082(A046691(n+3)))`
-/

namespace A200079.P3619552396608588051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 2)) (A200082 (A046691 (n + 3)).toNat)

end

end A200079.P3619552396608588051

/-! ## A200079.P9156202862181606164

`A007318(C(2, n))*A200082(A046691(n+3))`
-/

namespace A200079.P9156202862181606164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A200082 (A046691 (n + 3)).toNat

end

end A200079.P9156202862181606164

/-!
# A200080: Number of 0..6 arrays x(0..n) of n+1 elements with zero n-1st differences.

The programs for A200080, there is no canonical definition to state claims against.
-/

/-! ## A200080.P3247961268715801703

`A200082(A052905(n+3))`
-/

namespace A200080.P3247961268715801703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (A052905 (n + 3)).toNat

end

end A200080.P3247961268715801703

/-! ## A200080.P17261867983279710884

`A200082(A056119(n)+16)`
-/

namespace A200080.P17261867983279710884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (A056119 n + 16).toNat

end

end A200080.P17261867983279710884

/-! ## A200080.P11776597523326720935

`A200082(eq[3, A219347(n)])`
-/

namespace A200080.P11776597523326720935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200080.P11776597523326720935

/-! ## A200080.P2587372733075936849

`A200082(eq[5, A152157(n)])`
-/

namespace A200080.P2587372733075936849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200080.P2587372733075936849

/-! ## A200080.P7178032782267928141

`A200082(eq[5, A193592(n)])`
-/

namespace A200080.P7178032782267928141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200080.P7178032782267928141

/-!
# A200081: Number of 0..7 arrays x(0..n) of n+1 elements with zero n-1st differences.

The programs for A200081, there is no canonical definition to state claims against.
-/

/-! ## A200081.P3497576619163328809

`A200082(A055999(n+4))`
-/

namespace A200081.P3497576619163328809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (A055999 (n + 4)).toNat

end

end A200081.P3497576619163328809

/-! ## A200081.P496832085103308438

`A200082(eq[4, A219347(n)])`
-/

namespace A200081.P496832085103308438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200081.P496832085103308438

/-! ## A200081.P12612213317516169935

`A200082(eq[6, A193592(n)])`
-/

namespace A200081.P12612213317516169935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200081.P12612213317516169935

/-! ## A200081.P9984626336148366334

`A200082(eq[7, A152157(n)])`
-/

namespace A200081.P9984626336148366334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200081.P9984626336148366334

/-! ## A200081.P13421429100430323201

`A200082(Δ[A023551(n+2)])`
-/

namespace A200081.P13421429100430323201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (f1 (n + 1) - f1 n).toNat

end

end A200081.P13421429100430323201

/-!
# A200082: T(n,k)=Number of 0..k arrays x(0..n) of n+1 elements with zero n-1st differences.

The programs for A200082, there is no canonical definition to state claims against.
-/

/-! ## A200082.P5935572859855279018

`xor(A200370(A242474(n+1)), A299905(n))`
-/

namespace A200082.P5935572859855279018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A200370 (A242474 (n + 1)).toNat) (A299905 n)

end

end A200082.P5935572859855279018

/-! ## A200082.P14450322460636888160

`A259100(n)%A093006(3*n+1)+1`
-/

namespace A200082.P14450322460636888160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259100 n) (A093006 (3 * n + 1)) + 1

end

end A200082.P14450322460636888160

/-! ## A200082.P13229654423063601318

`A259100(n)+A019425(A033430(n))`
-/

namespace A200082.P13229654423063601318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259100 n + A019425 (A033430 n).toNat

end

end A200082.P13229654423063601318

/-! ## A200082.P4119713517924355065

`A316829(A058959(n+1))+A259100(n)`
-/

namespace A200082.P4119713517924355065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 (A058959 (n + 1)).toNat + A259100 n

end

end A200082.P4119713517924355065

/-! ## A200082.P8277799545713057561

`A259100(n)+A019425(10*A000045(n))`
-/

namespace A200082.P8277799545713057561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259100 n + A019425 (10 * A000045 n).toNat

end

end A200082.P8277799545713057561

/-!
# A200083: Number of 0..n arrays x(0..4) of 5 elements with zero 3rd differences.

The programs for A200083, there is no canonical definition to state claims against.
-/

/-! ## A200083.P5116129001750146512

`A200082(∑[n+3]+7)`
-/

namespace A200083.P5116129001750146512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A200083.P5116129001750146512

/-! ## A200083.P3739389250173971886

`A200082(A167614(n+2)+1)+char[20]`
-/

namespace A200083.P3739389250173971886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200083.P3739389250173971886

/-! ## A200083.P13299805821230584357

`or(char[1], A200082(A000217(n+3)+4))`
-/

namespace A200083.P13299805821230584357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A200082 (A000217 (n + 3) + 4).toNat)

end

end A200083.P13299805821230584357

/-! ## A200083.P17148280890368213026

`∑{d}[A200082(A167614(n+2)+1), A000010(#)]`
-/

namespace A200083.P17148280890368213026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (A167614 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A200083.P17148280890368213026

/-! ## A200083.P16076579998890431109

`∑{d}[A200082(A000217(n+3)+4), A000010(#)]`
-/

namespace A200083.P16076579998890431109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (A000217 (n + 3) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A200083.P16076579998890431109

/-!
# A200084: Number of 0..n arrays x(0..5) of 6 elements with zero 4th differences.

The programs for A200084, there is no canonical definition to state claims against.
-/

/-! ## A200084.P2311185476960840623

`A200082(∑[n+4]+11)`
-/

namespace A200084.P2311185476960840623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A200084.P2311185476960840623

/-! ## A200084.P5261358633397899216

`∑[A161929(record[A036040(n+1)])]`
-/

namespace A200084.P5261358633397899216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161929 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200084.P5261358633397899216

/-!
# A200085: Number of 0..n arrays x(0..6) of 7 elements with zero 5th differences.

The programs for A200085, there is no canonical definition to state claims against.
-/

/-! ## A200085.P8034590547447974083

`A200082(A166136(n+4))`
-/

namespace A200085.P8034590547447974083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (A166136 (n + 4)).toNat

end

end A200085.P8034590547447974083

/-! ## A200085.P4174236046647881740

`A200082(A056115(n)+21)`
-/

namespace A200085.P4174236046647881740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (A056115 n + 21).toNat

end

end A200085.P4174236046647881740

/-! ## A200085.P10230116268230939285

`A200082(A167499(n+4)+1)`
-/

namespace A200085.P10230116268230939285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (A167499 (n + 4) + 1).toNat

end

end A200085.P10230116268230939285

/-! ## A200085.P14904935231215678218

`A200082(A167614(n+4)+3)`
-/

namespace A200085.P14904935231215678218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (A167614 (n + 4) + 3).toNat

end

end A200085.P14904935231215678218

/-! ## A200085.P18287538448351001941

`A200082(A000124(n+5)+5)`
-/

namespace A200085.P18287538448351001941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (A000124 (n + 5) + 5).toNat

end

end A200085.P18287538448351001941

/-!
# A200086: Number of 0..n arrays x(0..7) of 8 elements with zero 6th differences.

The programs for A200086, there is no canonical definition to state claims against.
-/

/-! ## A200086.P11205776436250800447

`A200082(A056119(n)+28)`
-/

namespace A200086.P11205776436250800447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (A056119 n + 28).toNat

end

end A200086.P11205776436250800447

/-! ## A200086.P1576549626316853924

`A200082(A167499(n+5)+2)`
-/

namespace A200086.P1576549626316853924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (A167499 (n + 5) + 2).toNat

end

end A200086.P1576549626316853924

/-! ## A200086.P1520056428226440495

`A200082(A000124(n+6)+6)`
-/

namespace A200086.P1520056428226440495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (A000124 (n + 6) + 6).toNat

end

end A200086.P1520056428226440495

/-! ## A200086.P7431701828774233442

`A200082(A000096(n+5)+8)`
-/

namespace A200086.P7431701828774233442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (A000096 (n + 5) + 8).toNat

end

end A200086.P7431701828774233442

/-! ## A200086.P1412597628556337543

`A200082(A000217(n+6)+7)`
-/

namespace A200086.P1412597628556337543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200082 (A000217 (n + 6) + 7).toNat

end

end A200086.P1412597628556337543

/-!
# A200091: The number of ways of putting n labeled items into k labeled boxes so that each box receives at least 2 objects.

The programs for A200091, there is no canonical definition to state claims against.
-/

/-! ## A200091.P15921087859299791940

`A122197(n+1)!*A008299(n+2)`
-/

namespace A200091.P15921087859299791940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A122197 (n + 1)).toNat : ℤ) * A008299 (n + 2)

end

end A200091.P15921087859299791940

/-! ## A200091.P8225569911937171128

`A008299(n+2)*A166350(A056536(n+1))`
-/

namespace A200091.P8225569911937171128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008299 (n + 2) * A166350 (A056536 (n + 1)).toNat

end

end A200091.P8225569911937171128

/-! ## A200091.P16058359386735906279

`A122197(n+1)!*A134991(A056536(n+1))`
-/

namespace A200091.P16058359386735906279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A122197 (n + 1)).toNat : ℤ) * A134991 (A056536 (n + 1)).toNat

end

end A200091.P16058359386735906279

/-! ## A200091.P5355858145453896901

`A122197(n+1)!*A134991(A091018(n)+1)`
-/

namespace A200091.P5355858145453896901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A122197 (n + 1)).toNat : ℤ) * A134991 (A091018 n + 1).toNat

end

end A200091.P5355858145453896901

/-! ## A200091.P14396469740368932384

`A134991(A091018(n)+1)*A166350(A056536(n+1))`
-/

namespace A200091.P14396469740368932384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134991 (A091018 n + 1).toNat * A166350 (A056536 (n + 1)).toNat

end

end A200091.P14396469740368932384

/-!
# A200092: The number of ways of putting n labeled items into k labeled boxes so that each box receives at least 3 objects.

The programs for A200092, there is no canonical definition to state claims against.
-/

/-! ## A200092.P15684582590290531944

`(A073189(n)+1)*A225800(A146085(n+1))`
-/

namespace A200092.P15684582590290531944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073189 n + 1) * A225800 (A146085 (n + 1)).toNat

end

end A200092.P15684582590290531944

/-! ## A200092.P15512387763827576931

`A059022(n+3)*A352517(A192476(n+1))`
-/

namespace A200092.P15512387763827576931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059022 (n + 3) * A352517 (A192476 (n + 1)).toNat

end

end A200092.P15512387763827576931

/-! ## A200092.P4976902950312909246

`A059022(n+3)*A227736(A091696(2*n+1))`
-/

namespace A200092.P4976902950312909246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059022 (n + 3) * A227736 (A091696 (2 * n + 1)).toNat

end

end A200092.P4976902950312909246

/-! ## A200092.P2643499227015747696

`A059022(n+3)*A293460(A076732(3*n+1))`
-/

namespace A200092.P2643499227015747696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059022 (n + 3) * A293460 (A076732 (3 * n + 1)).toNat

end

end A200092.P2643499227015747696

/-! ## A200092.P13841633104218845100

`A000034(A073189(n))*A225800(A146085(n+1))`
-/

namespace A200092.P13841633104218845100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A073189 n).toNat * A225800 (A146085 (n + 1)).toNat

end

end A200092.P13841633104218845100

