import SequenceMachineLib.Basic
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
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A318501: a(n) = SumXOR_{d|n} [moebius(n/d) > 0]*(sigma(d)-d).

The programs for A318501, there is no canonical definition to state claims against.
-/

/-! ## A318501.P12993033566711334841

`xor(A318502(n+1), A318503(n+1))`
-/

namespace A318501.P12993033566711334841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A318502 (n + 1)) (A318503 (n + 1))

end

end A318501.P12993033566711334841

/-! ## A318501.P4371912735703251875

`A318325(n+1)-A000122(A327100(2*(n+1)))`
-/

namespace A318501.P4371912735703251875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318325 (n + 1) - A000122 (A327100 (2 * (n + 1))).toNat

end

end A318501.P4371912735703251875

/-! ## A318501.P8063886289632969896

`xor(∑{d}[n+1, #]-(n+1), A335446(A100587(n+1)))`
-/

namespace A318501.P8063886289632969896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ)) (A335446 (A100587 (n + 1)).toNat)

end

end A318501.P8063886289632969896

/-! ## A318501.P4263284799418950183

`xor(∑{d}[n+1, #%(n+1)], A185284(A100577(n+1)))`
-/

namespace A318501.P4263284799418950183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ d ∈ Nat.divisors (f1 n), d % (n + 1) : ℕ) : ℤ) (A185284 (A100577 (n + 1)).toNat)

end

end A318501.P4263284799418950183

/-! ## A318501.P12762983846630756601

`xor(A001065(n+1), A257994(A344628(n+1)))`
-/

namespace A318501.P12762983846630756601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001065 (n + 1)) (A257994 (A344628 (n + 1)).toNat)

end

end A318501.P12762983846630756601

/-!
# A318502: a(n) = SumXOR_{d|n} [moebius(n/d) < 0]*(sigma(d)-d).

The programs for A318502, there is no canonical definition to state claims against.
-/

/-! ## A318502.P11041921904106520166

`xor(A318501(n+1), A318503(n+1))`
-/

namespace A318502.P11041921904106520166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A318501 (n + 1)) (A318503 (n + 1))

end

end A318502.P11041921904106520166

/-! ## A318502.P508591752692321311

`A307707(A285190(A235388(n+1))^A007913(n+1))`
-/

namespace A318502.P508591752692321311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (SequenceMachineLib.roundAway ((A285190 (A235388 (n + 1)).toNat : ℚ) ^ (A007913 (n + 1) : ℤ))).toNat

end

end A318502.P508591752692321311

/-! ## A318502.P6781591440717189099

`floor(n/2)%A000688(A020478(n+1))`
-/

namespace A318502.P6781591440717189099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n : ℚ) / 2⌋ (A000688 (A020478 (n + 1)).toNat)

end

end A318502.P6781591440717189099

/-! ## A318502.P10594512902704354837

`A031971(3*n+1)%A281118(n+1)`
-/

namespace A318502.P10594512902704354837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031971 (3 * n + 1)) (A281118 (n + 1))

end

end A318502.P10594512902704354837

/-! ## A318502.P15360393779056049663

`Δ[n*floor(n/2)]%A000188(A316148(n+1))`
-/

namespace A318502.P15360393779056049663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000188 (A316148 (n + 1)).toNat)

end

end A318502.P15360393779056049663

/-!
# A318503: Xor-Moebius transform of A001065, the sum of proper divisors.

The programs for A318503, there is no canonical definition to state claims against.
-/

/-! ## A318503.P16681395783549376521

`xor(A256739(n+1), A378226(n+1))`
-/

namespace A318503.P16681395783549376521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A256739 (n + 1)) (A378226 (n + 1))

end

end A318503.P16681395783549376521

/-! ## A318503.P11852168491632949865

`xor(A318501(n+1), A318502(n+1))`
-/

namespace A318503.P11852168491632949865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A318501 (n + 1)) (A318502 (n + 1))

end

end A318503.P11852168491632949865

/-! ## A318503.P9362476791183342925

`xor(A001065(n+1), A244963(A325709(n+1)))`
-/

namespace A318503.P9362476791183342925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001065 (n + 1)) (A244963 (A325709 (n + 1)).toNat)

end

end A318503.P9362476791183342925

/-! ## A318503.P2182192102674369767

`xor(A001065(n+1), A244963(A187829(n+1)))`
-/

namespace A318503.P2182192102674369767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001065 (n + 1)) (A244963 (A187829 (n + 1)).toNat)

end

end A318503.P2182192102674369767

/-!
# A318504: SumXOR of divisors of n, up to, but not including the second largest of them A032742(n); a(1) = 0 by convention.

The programs for A318504, there is no canonical definition to state claims against.
-/

/-! ## A318504.P10630975439629033074

`A004526(xor(2*A227320(n+1), A286472(n+1)))`
-/

namespace A318504.P10630975439629033074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.xor (2 * A227320 (n + 1)) (A286472 (n + 1))).toNat

end

end A318504.P10630975439629033074

/-! ## A318504.P16597301241293897081

`xor(A001065(n+1)-A318505(n+1), A227320(n+1))`
-/

namespace A318504.P16597301241293897081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001065 (n + 1) - A318505 (n + 1)) (A227320 (n + 1))

end

end A318504.P16597301241293897081

/-! ## A318504.P17711106370726305936

`xor(A032742(n+1)%A005100(n+1), A227320(n+1))`
-/

namespace A318504.P17711106370726305936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A032742 (n + 1)) (A005100 (n + 1))) (A227320 (n + 1))

end

end A318504.P17711106370726305936

/-! ## A318504.P7497742810271136795

`xor(A004526(A286472(n+1)), A227320(n+1))`
-/

namespace A318504.P7497742810271136795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004526 (A286472 (n + 1)).toNat) (A227320 (n + 1))

end

end A318504.P7497742810271136795

/-! ## A318504.P9595910679530416003

`xor(A032742(n+1), A227320(n+1))%A178910(n+1)`
-/

namespace A318504.P9595910679530416003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (A032742 (n + 1)) (A227320 (n + 1))) (A178910 (n + 1))

end

end A318504.P9595910679530416003

/-! ## A318504.P8381026454624033503

`xor(A106409(n+1), A178910(n+1))%A178910(n+1)`
-/

namespace A318504.P8381026454624033503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (A106409 (n + 1)) (A178910 (n + 1))) (A178910 (n + 1))

end

end A318504.P8381026454624033503

/-!
# A318505: Sum of divisors of n, up to, but not including the second largest of them A032742(n); a(1) = 0 by convention.

The programs for A318505, there is no canonical definition to state claims against.
-/

/-! ## A318505.P13439450409866174648

`∑{d}[n+1, #%((n+1)/A020639(n+1))]`
-/

namespace A318505.P13439450409866174648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (d : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ)))

end

end A318505.P13439450409866174648

/-! ## A318505.P10241307537367770130

`A173455(n+1)-A032742(n+1)`
-/

namespace A318505.P10241307537367770130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 1) - A032742 (n + 1)

end

end A318505.P10241307537367770130

/-! ## A318505.P12157619071214750370

`A326061(n+1)-A087156(n+1)`
-/

namespace A318505.P12157619071214750370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326061 (n + 1) - A087156 (n + 1)

end

end A318505.P12157619071214750370

/-! ## A318505.P4211677844245759457

`xor(A032742(n+1), A318507(n+1))`
-/

namespace A318505.P4211677844245759457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A032742 (n + 1)) (A318507 (n + 1))

end

end A318505.P4211677844245759457

/-! ## A318505.P11368650005180689517

`A048050(n+1)+1-A032742(n+1)`
-/

namespace A318505.P11368650005180689517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1) + (1 - A032742 (n + 1))

end

end A318505.P11368650005180689517

/-! ## A318505.P9841218939782781645

`xor(n+1-A060681(n+1), A318507(n+1))`
-/

namespace A318505.P9841218939782781645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 1 : ℤ) - A060681 (n + 1)) (A318507 (n + 1))

end

end A318505.P9841218939782781645

/-! ## A318505.P17119140630293701156

`xor((n+1)/A020639(n+1), A318507(n+1))`
-/

namespace A318505.P17119140630293701156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))) (A318507 (n + 1))

end

end A318505.P17119140630293701156

/-! ## A318505.P18019334878674731482

`A333783(n+1)+A006022(A032742(n+1))`
-/

namespace A318505.P18019334878674731482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333783 (n + 1) + A006022 (A032742 (n + 1)).toNat

end

end A318505.P18019334878674731482

/-! ## A318505.P8561178875318133992

`A318506(n+1)+A318508(n+1)-A032742(n+1)`
-/

namespace A318505.P8561178875318133992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318506 (n + 1) + (A318508 (n + 1) - A032742 (n + 1))

end

end A318505.P8561178875318133992

/-! ## A318505.P10298059771816995023

`A001065(n+1)-A001065(A020639(n+1))*A032742(n+1)`
-/

namespace A318505.P10298059771816995023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A001065 (A020639 (n + 1)).toNat * A032742 (n + 1)

end

end A318505.P10298059771816995023

/-! ## A318505.P6852555714009844320

`xor(A283464(A266645(n+1)), A318507(n+1))`
-/

namespace A318505.P6852555714009844320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A283464 (A266645 (n + 1)).toNat) (A318507 (n + 1))

end

end A318505.P6852555714009844320

/-! ## A318505.P14479121602623269343

`xor(A283463(A266646(n+1)), A318507(n+1))`
-/

namespace A318505.P14479121602623269343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A283463 (A266646 (n + 1)).toNat) (A318507 (n + 1))

end

end A318505.P14479121602623269343

/-!
# A318506: a(n) = A032742(n) OR A001065(n)-A032742(n), where OR is bitwise-or (A003986) and A001065 = sum of proper divisors and A032742 = the largest proper divisor of n.

The programs for A318506, there is no canonical definition to state claims against.
-/

/-! ## A318506.P2991986871583086431

`or(A318505(n+1), A032742(n+1))`
-/

namespace A318506.P2991986871583086431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A318505 (n + 1)) (A032742 (n + 1))

end

end A318506.P2991986871583086431

/-! ## A318506.P15555562845333931093

`A318508(n+1)+A318507(n+1)`
-/

namespace A318506.P15555562845333931093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318508 (n + 1) + A318507 (n + 1)

end

end A318506.P15555562845333931093

/-! ## A318506.P8056248539839134503

`A173455(n+1)-A318508(n+1)`
-/

namespace A318506.P8056248539839134503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 1) - A318508 (n + 1)

end

end A318506.P8056248539839134503

/-! ## A318506.P6752622024493749667

`or(A032742(n+1), A318507(n+1))`
-/

namespace A318506.P6752622024493749667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032742 (n + 1)) (A318507 (n + 1))

end

end A318506.P6752622024493749667

/-! ## A318506.P14553450103782623799

`or(A318505(n+1), A318507(n+1))`
-/

namespace A318506.P14553450103782623799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A318505 (n + 1)) (A318507 (n + 1))

end

end A318506.P14553450103782623799

/-! ## A318506.P16678178219818071286

`or(n+1-A060681(n+1), A318505(n+1))`
-/

namespace A318506.P16678178219818071286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n + 1 : ℤ) - A060681 (n + 1)) (A318505 (n + 1))

end

end A318506.P16678178219818071286

/-! ## A318506.P10537091371503591587

`or(n+1-A060681(n+1), A318507(n+1))`
-/

namespace A318506.P10537091371503591587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n + 1 : ℤ) - A060681 (n + 1)) (A318507 (n + 1))

end

end A318506.P10537091371503591587

/-! ## A318506.P6334676595263343251

`or((n+1)/A020639(n+1), A318505(n+1))`
-/

namespace A318506.P6334676595263343251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))) (A318505 (n + 1))

end

end A318506.P6334676595263343251

/-! ## A318506.P18385020726017831374

`or((n+1)/A020639(n+1), A318507(n+1))`
-/

namespace A318506.P18385020726017831374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))) (A318507 (n + 1))

end

end A318506.P18385020726017831374

/-! ## A318506.P16929088565357391689

`or(xor(n+1, A106409(n+1)), A318507(n+1))`
-/

namespace A318506.P16929088565357391689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.xor (n + 1 : ℤ) (A106409 (n + 1))) (A318507 (n + 1))

end

end A318506.P16929088565357391689

/-! ## A318506.P2267851224389155838

`A318516(A318507(n+1)+A001065(n+1))`
-/

namespace A318506.P2267851224389155838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (A318507 (n + 1) + A001065 (n + 1)).toNat

end

end A318506.P2267851224389155838

/-! ## A318506.P15676460061469773886

`A032742(n+1)+A318505(n+1)-A318508(n+1)`
-/

namespace A318506.P15676460061469773886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) + (A318505 (n + 1) - A318508 (n + 1))

end

end A318506.P15676460061469773886

/-! ## A318506.P13887560420911507503

`or(A001065(n+1)-A318508(n+1), A032742(n+1))`
-/

namespace A318506.P13887560420911507503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001065 (n + 1) - A318508 (n + 1)) (A032742 (n + 1))

end

end A318506.P13887560420911507503

/-! ## A318506.P14492808007926375662

`A032742(A318507(n+1)+A001065(n+1))`
-/

namespace A318506.P14492808007926375662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A318507 (n + 1) + A001065 (n + 1)).toNat

end

end A318506.P14492808007926375662

/-! ## A318506.P16107925846429701041

`A032742(A032742(n+1)+A318507(n+1)+A318505(n+1))`
-/

namespace A318506.P16107925846429701041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A032742 (n + 1) + (A318507 (n + 1) + A318505 (n + 1))).toNat

end

end A318506.P16107925846429701041

/-!
# A318507: a(n) = A032742(n) XOR A001065(n)-A032742(n), where XOR is bitwise-or (A003987) and A001065 = sum of proper divisors and A032742 = the largest proper divisor of n.

The programs for A318507, there is no canonical definition to state claims against.
-/

/-! ## A318507.P7275549313912529555

`xor(A318505(n+1), A032742(n+1))`
-/

namespace A318507.P7275549313912529555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A318505 (n + 1)) (A032742 (n + 1))

end

end A318507.P7275549313912529555

/-! ## A318507.P8894931211386464278

`A318506(n+1)-A318508(n+1)`
-/

namespace A318507.P8894931211386464278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318506 (n + 1) - A318508 (n + 1)

end

end A318507.P8894931211386464278

/-! ## A318507.P3394929056298660422

`2*A318506(n+1)-A173455(n+1)`
-/

namespace A318507.P3394929056298660422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318506 (n + 1) - A173455 (n + 1)

end

end A318507.P3394929056298660422

/-! ## A318507.P10886759721971570602

`A173455(n+1)-2*A318508(n+1)`
-/

namespace A318507.P10886759721971570602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 1) - 2 * A318508 (n + 1)

end

end A318507.P10886759721971570602

/-! ## A318507.P13743314858502324221

`xor(n+1-A060681(n+1), A318505(n+1))`
-/

namespace A318507.P13743314858502324221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 1 : ℤ) - A060681 (n + 1)) (A318505 (n + 1))

end

end A318507.P13743314858502324221

/-! ## A318507.P5004085826752243841

`xor((n+1)/A020639(n+1), A318505(n+1))`
-/

namespace A318507.P5004085826752243841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))) (A318505 (n + 1))

end

end A318507.P5004085826752243841

/-! ## A318507.P16617754148804759844

`or(A032742(n+1), A318505(n+1))-A318508(n+1)`
-/

namespace A318507.P16617754148804759844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032742 (n + 1)) (A318505 (n + 1)) - A318508 (n + 1)

end

end A318507.P16617754148804759844

/-! ## A318507.P17927267765211754695

`xor(A283464(A266645(n+1)), A318505(n+1))`
-/

namespace A318507.P17927267765211754695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A283464 (A266645 (n + 1)).toNat) (A318505 (n + 1))

end

end A318507.P17927267765211754695

/-!
# A318508: a(n) = A032742(n) AND A001065(n)-A032742(n), where AND is bitwise-and (A004198) and A001065 = sum of proper divisors and A032742 = the largest proper divisor of n.

The programs for A318508, there is no canonical definition to state claims against.
-/

/-! ## A318508.P11649629682521694096

`and(A318505(n+1), A032742(n+1))`
-/

namespace A318508.P11649629682521694096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A318505 (n + 1)) (A032742 (n + 1))

end

end A318508.P11649629682521694096

/-! ## A318508.P5366434911557523021

`A173455(n+1)-A318506(n+1)`
-/

namespace A318508.P5366434911557523021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 1) - A318506 (n + 1)

end

end A318508.P5366434911557523021

/-! ## A318508.P15150383458643249804

`A318506(n+1)-A318507(n+1)`
-/

namespace A318508.P15150383458643249804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318506 (n + 1) - A318507 (n + 1)

end

end A318508.P15150383458643249804

/-! ## A318508.P8627927399076373522

`and(A117818(n+1), A318505(n+1))`
-/

namespace A318508.P8627927399076373522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117818 (n + 1)) (A318505 (n + 1))

end

end A318508.P8627927399076373522

/-! ## A318508.P13883054121444068092

`and(A220096(n+1), A318505(n+1))`
-/

namespace A318508.P13883054121444068092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A220096 (n + 1)) (A318505 (n + 1))

end

end A318508.P13883054121444068092

/-! ## A318508.P14289301806600876215

`and(A318505(n+1), A322982(n+1))`
-/

namespace A318508.P14289301806600876215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A318505 (n + 1)) (A322982 (n + 1))

end

end A318508.P14289301806600876215

/-! ## A318508.P9364667230228613842

`and((n+1)/A020639(n+1), A318505(n+1))`
-/

namespace A318508.P9364667230228613842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))) (A318505 (n + 1))

end

end A318508.P9364667230228613842

/-! ## A318508.P8598547995170660726

`and(gcd(n+1, A060681(n+1)), A318505(n+1))`
-/

namespace A318508.P8598547995170660726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.gcd (n + 1 : ℤ) (A060681 (n + 1)) : ℤ) (A318505 (n + 1))

end

end A318508.P8598547995170660726

/-! ## A318508.P4247839028864813586

`A032742(n+1)+A318505(n+1)-A318506(n+1)`
-/

namespace A318508.P4247839028864813586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) + (A318505 (n + 1) - A318506 (n + 1))

end

end A318508.P4247839028864813586

/-! ## A318508.P1732475524189805751

`A318505(n+1)-and(A318505(n+1), A318507(n+1))`
-/

namespace A318508.P1732475524189805751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318505 (n + 1) - Int.land (A318505 (n + 1)) (A318507 (n + 1))

end

end A318508.P1732475524189805751

/-! ## A318508.P7783762237522532288

`or(A032742(n+1), A318507(n+1))-A318507(n+1)`
-/

namespace A318508.P7783762237522532288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032742 (n + 1)) (A318507 (n + 1)) - A318507 (n + 1)

end

end A318508.P7783762237522532288

/-! ## A318508.P7608371137656065825

`A318516(A318507(n+1)+A001065(n+1))-A318507(n+1)`
-/

namespace A318508.P7608371137656065825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (A318507 (n + 1) + A001065 (n + 1)).toNat - A318507 (n + 1)

end

end A318508.P7608371137656065825

/-! ## A318508.P7174161671143908604

`A032742(A318507(n+1)+A001065(n+1))-A318507(n+1)`
-/

namespace A318508.P7174161671143908604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A318507 (n + 1) + A001065 (n + 1)).toNat - A318507 (n + 1)

end

end A318508.P7174161671143908604

/-!
# A318509: Completely multiplicative with a(p) = A002487(p).

The programs for A318509, the canonical program `A318509.P16676407723879251455` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318509 has offset 1).

The definition of A318509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318509.P8220243042711017800

`A318510(A064989(n+1))`
-/

namespace A318509.P8220243042711017800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318510 (A064989 (n + 1)).toNat

end

end A318509.P8220243042711017800

namespace A318509

/-- `A318510(A064989(n+1))` -/
def P8220243042711017800.Spec : Prop :=
  ∀ n, P8220243042711017800.a n = A318509 (n + 1)

end A318509

/-! ## A318509.P16676407723879251455

`∏{d}[n+1, A002487(A014963(#))]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A318509

/-- `∏{d}[n+1, A002487(A014963(#))]` -/
def P16676407723879251455.Spec : Prop :=
  ∀ n, P16676407723879251455.a n = A318509 (n + 1)

theorem P16676407723879251455.correct : P16676407723879251455.Spec := by
  intro n
  simp only [A318509, Nat.add_sub_cancel]

end A318509

/-! ## A318509.P3173268598764673414

`A319687(n+1)+A002487(n+1)`
-/

namespace A318509.P3173268598764673414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319687 (n + 1) + A002487 (n + 1)

end

end A318509.P3173268598764673414

namespace A318509

/-- `A319687(n+1)+A002487(n+1)` -/
def P3173268598764673414.Spec : Prop :=
  ∀ n, P3173268598764673414.a n = A318509 (n + 1)

end A318509

/-! ## A318509.P9875589660867723085

`A317839(n+1)+A319687(n+1)+A317840(n+1)`
-/

namespace A318509.P9875589660867723085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317839 (n + 1) + (A319687 (n + 1) + A317840 (n + 1))

end

end A318509.P9875589660867723085

namespace A318509

/-- `A317839(n+1)+A319687(n+1)+A317840(n+1)` -/
def P9875589660867723085.Spec : Prop :=
  ∀ n, P9875589660867723085.a n = A318509 (n + 1)

end A318509

/-! ## A318509.P4137549313844266480

`A317838(n+1)+A319687(n+1)-A317837(n+1)`
-/

namespace A318509.P4137549313844266480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317838 (n + 1) + (A319687 (n + 1) - A317837 (n + 1))

end

end A318509.P4137549313844266480

namespace A318509

/-- `A317838(n+1)+A319687(n+1)-A317837(n+1)` -/
def P4137549313844266480.Spec : Prop :=
  ∀ n, P4137549313844266480.a n = A318509 (n + 1)

end A318509

/-! ## A318509.P7871284570797145033

`A319687(n+1)+A323365(n+1)-A317843(n+1)`
-/

namespace A318509.P7871284570797145033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319687 (n + 1) + (A323365 (n + 1) - A317843 (n + 1))

end

end A318509.P7871284570797145033

namespace A318509

/-- `A319687(n+1)+A323365(n+1)-A317843(n+1)` -/
def P7871284570797145033.Spec : Prop :=
  ∀ n, P7871284570797145033.a n = A318509 (n + 1)

end A318509

/-! ## A318509.P14125829506154040825

`A319687(n+1)+A317840(2*(n+1))`
-/

namespace A318509.P14125829506154040825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319687 (n + 1) + A317840 (2 * (n + 1))

end

end A318509.P14125829506154040825

namespace A318509

/-- `A319687(n+1)+A317840(2*(n+1))` -/
def P14125829506154040825.Spec : Prop :=
  ∀ n, P14125829506154040825.a n = A318509 (n + 1)

end A318509

/-! ## A318509.P2878075505502652185

`A319687(n+1)-A070990(2*n+1)`
-/

namespace A318509.P2878075505502652185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319687 (n + 1) - A070990 (2 * n + 1)

end

end A318509.P2878075505502652185

namespace A318509

/-- `A319687(n+1)-A070990(2*n+1)` -/
def P2878075505502652185.Spec : Prop :=
  ∀ n, P2878075505502652185.a n = A318509 (n + 1)

end A318509

/-! ## A318509.P5909663960532844405

`A323365(4*(n+1))+A319687(n+1)`
-/

namespace A318509.P5909663960532844405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323365 (4 * (n + 1)) + A319687 (n + 1)

end

end A318509.P5909663960532844405

namespace A318509

/-- `A323365(4*(n+1))+A319687(n+1)` -/
def P5909663960532844405.Spec : Prop :=
  ∀ n, P5909663960532844405.a n = A318509 (n + 1)

end A318509

/-! ## A318509.P4149943945688581702

`A319687(n+1)+A309014(2*n+1)`
-/

namespace A318509.P4149943945688581702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319687 (n + 1) + A309014 (2 * n + 1)

end

end A318509.P4149943945688581702

namespace A318509

/-- `A319687(n+1)+A309014(2*n+1)` -/
def P4149943945688581702.Spec : Prop :=
  ∀ n, P4149943945688581702.a n = A318509 (n + 1)

end A318509

/-!
# A318510: Completely multiplicative with a(prime(k)) = A002487(prime(k+1)).

The programs for A318510, the canonical program `A318510.P6431562738860432705` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318510 has offset 1).

The definition of A318510 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A318509, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318510.P6431562738860432705

`A318509(A003961(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A318510

/-- `A318509(A003961(n+1))` -/
def P6431562738860432705.Spec : Prop :=
  ∀ n, P6431562738860432705.a n = A318510 (n + 1)

theorem P6431562738860432705.correct : P6431562738860432705.Spec := by
  intro n
  simp only [A318510, Nat.add_sub_cancel]

end A318510

/-! ## A318510.P7644033148686357508

`A318509(A045965(n+1))`
-/

namespace A318510.P7644033148686357508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (A045965 (n + 1)).toNat

end

end A318510.P7644033148686357508

namespace A318510

/-- `A318509(A045965(n+1))` -/
def P7644033148686357508.Spec : Prop :=
  ∀ n, P7644033148686357508.a n = A318510 (n + 1)

end A318510

/-! ## A318510.P11000757065395405098

`A318509(A253885(n)+1)`
-/

namespace A318510.P11000757065395405098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (A253885 n + 1).toNat

end

end A318510.P11000757065395405098

namespace A318510

/-- `A318509(A253885(n)+1)` -/
def P11000757065395405098.Spec : Prop :=
  ∀ n, P11000757065395405098.a n = A318510 (n + 1)

end A318510

/-! ## A318510.P1355178884055526941

`A318509(2*A048673(n+1)-1)`
-/

namespace A318510.P1355178884055526941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (2 * A048673 (n + 1) - 1).toNat

end

end A318510.P1355178884055526941

namespace A318510

/-- `A318509(2*A048673(n+1)-1)` -/
def P1355178884055526941.Spec : Prop :=
  ∀ n, P1355178884055526941.a n = A318510 (n + 1)

end A318510

/-! ## A318510.P16569818283240403747

`A318509(A048673(n+1)+A048673(n+1)-1)`
-/

namespace A318510.P16569818283240403747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (A048673 (n + 1) + (A048673 (n + 1) - 1)).toNat

end

end A318510.P16569818283240403747

namespace A318510

/-- `A318509(A048673(n+1)+A048673(n+1)-1)` -/
def P16569818283240403747.Spec : Prop :=
  ∀ n, P16569818283240403747.a n = A318510 (n + 1)

end A318510

/-! ## A318510.P3629622687625674495

`A318509(A283980(n+1))`
-/

namespace A318510.P3629622687625674495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (A283980 (n + 1)).toNat

end

end A318510.P3629622687625674495

namespace A318510

/-- `A318509(A283980(n+1))` -/
def P3629622687625674495.Spec : Prop :=
  ∀ n, P3629622687625674495.a n = A318510 (n + 1)

end A318510

/-!
# A318511: Numerators of the sequence whose Dirichlet convolution with itself yields A064549, n * Product_{primes p|n} p.

The programs for A318511, there is no canonical definition to state claims against.
-/

/-! ## A318511.P8641899672774418527

`gcd(n+1, A318649(n+1))*A318653(n+1)`
-/

namespace A318511.P8641899672774418527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A318649 (n + 1)) : ℤ) * A318653 (n + 1)

end

end A318511.P8641899672774418527

/-! ## A318511.P7203415447571056864

`A318512(n+1)/A299150(n+1)*A318680(n+1)`
-/

namespace A318511.P7203415447571056864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318512 (n + 1) : ℚ) / (A299150 (n + 1) : ℚ) * (A318680 (n + 1) : ℚ)

end

end A318511.P7203415447571056864

/-! ## A318511.P7281260904809752882

`A318649(n+1)/A299149(n+1)*A318653(n+1)`
-/

namespace A318511.P7281260904809752882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318649 (n + 1) : ℚ) / (A299149 (n + 1) : ℚ) * (A318653 (n + 1) : ℚ)

end

end A318511.P7281260904809752882

/-! ## A318511.P16500145287278165689

`A318649(n+1)*A318680(n+1)/A318681(n+1)`
-/

namespace A318511.P16500145287278165689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318649 (n + 1) * A318680 (n + 1) : ℚ) / (A318681 (n + 1) : ℚ)

end

end A318511.P16500145287278165689

/-! ## A318511.P3334132831958822599

`A318680(n+1)/gcd(A299150(n+1), A318681(n+1))`
-/

namespace A318511.P3334132831958822599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318680 (n + 1) : ℚ) / (Int.gcd (A299150 (n + 1)) (A318681 (n + 1)) : ℚ)

end

end A318511.P3334132831958822599

/-!
# A318512: Denominators (in their lowest terms) of the sequence whose Dirichlet convolution with itself yields squares (A000290), or equally A064549.

The programs for A318512, the canonical program `A318512.P17152244906020944566` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318512 has offset 1).

The definition of A318512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318512.P6352580089979813877

`2^A318513(n+1)`
-/

namespace A318512.P6352580089979813877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A318513 (n + 1) : ℤ)

end

end A318512.P6352580089979813877

namespace A318512

/-- `2^A318513(n+1)` -/
def P6352580089979813877.Spec : Prop :=
  ∀ n, P6352580089979813877.a n = (A318512 (n + 1) : ℚ)

end A318512

/-! ## A318512.P2639004025385900654

`A046644(n+1)/A318651(n+1)`
-/

namespace A318512.P2639004025385900654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046644 (n + 1) : ℚ) / (A318651 (n + 1) : ℚ)

end

end A318512.P2639004025385900654

namespace A318512

/-- `A046644(n+1)/A318651(n+1)` -/
def P2639004025385900654.Spec : Prop :=
  ∀ n, P2639004025385900654.a n = (A318512 (n + 1) : ℚ)

end A318512

/-! ## A318512.P17245890636115187609

`lcm(n+1, A299150(n+1))/(n+1)`
-/

namespace A318512.P17245890636115187609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A299150 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A318512.P17245890636115187609

namespace A318512

/-- `lcm(n+1, A299150(n+1))/(n+1)` -/
def P17245890636115187609.Spec : Prop :=
  ∀ n, P17245890636115187609.a n = (A318512 (n + 1) : ℚ)

end A318512

/-! ## A318512.P179149917547462683

`A000079(A318513(n+1))`
-/

namespace A318512.P179149917547462683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A318513 (n + 1)).toNat

end

end A318512.P179149917547462683

namespace A318512

/-- `A000079(A318513(n+1))` -/
def P179149917547462683.Spec : Prop :=
  ∀ n, P179149917547462683.a n = A318512 (n + 1)

end A318512

/-! ## A318512.P17152244906020944566

`ceil(A299150(n+1)/A006519(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A318512

/-- `ceil(A299150(n+1)/A006519(n+1))` -/
def P17152244906020944566.Spec : Prop :=
  ∀ n, P17152244906020944566.a n = A318512 (n + 1)

theorem P17152244906020944566.correct : P17152244906020944566.Spec := by
  intro n
  simp only [A318512, Nat.add_sub_cancel]

end A318512

/-! ## A318512.P17338719825630251395

`A046644(n+1)/gcd(A046644(n+1), A130665(n))`
-/

namespace A318512.P17338719825630251395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046644 (n + 1) : ℚ) / (Int.gcd (A046644 (n + 1)) (A130665 n) : ℚ)

end

end A318512.P17338719825630251395

namespace A318512

/-- `A046644(n+1)/gcd(A046644(n+1), A130665(n))` -/
def P17338719825630251395.Spec : Prop :=
  ∀ n, P17338719825630251395.a n = (A318512 (n + 1) : ℚ)

end A318512

/-! ## A318512.P1001367129599877495

`A299150(n+1)*A318511(n+1)/A318680(n+1)`
-/

namespace A318512.P1001367129599877495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299150 (n + 1) * A318511 (n + 1) : ℚ) / (A318680 (n + 1) : ℚ)

end

end A318512.P1001367129599877495

namespace A318512

/-- `A299150(n+1)*A318511(n+1)/A318680(n+1)` -/
def P1001367129599877495.Spec : Prop :=
  ∀ n, P1001367129599877495.a n = (A318512 (n + 1) : ℚ)

end A318512

/-! ## A318512.P2507123615980057025

`A299150(n+1)*A318649(n+1)/A318681(n+1)`
-/

namespace A318512.P2507123615980057025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299150 (n + 1) * A318649 (n + 1) : ℚ) / (A318681 (n + 1) : ℚ)

end

end A318512.P2507123615980057025

namespace A318512

/-- `A299150(n+1)*A318649(n+1)/A318681(n+1)` -/
def P2507123615980057025.Spec : Prop :=
  ∀ n, P2507123615980057025.a n = (A318512 (n + 1) : ℚ)

end A318512

/-!
# A318513: The 2-adic valuation of A318512.

The programs for A318513, the canonical program `A318513.P17793607305187104594` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318513 has offset 1).

The definition of A318513 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318512, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318513.P1269522289693333221

`val(A318512(n+1), 2)`
-/

namespace A318513.P1269522289693333221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318512 (n + 1)).toNat 2

end

end A318513.P1269522289693333221

namespace A318513

/-- `val(A318512(n+1), 2)` -/
def P1269522289693333221.Spec : Prop :=
  ∀ n, (P1269522289693333221.a n : ℤ) = A318513 (n + 1)

end A318513

/-! ## A318513.P17793607305187104594

`A007814(A318512(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A318513

/-- `A007814(A318512(n+1))` -/
def P17793607305187104594.Spec : Prop :=
  ∀ n, P17793607305187104594.a n = A318513 (n + 1)

theorem P17793607305187104594.correct : P17793607305187104594.Spec := by
  intro n
  simp only [A318513, Nat.add_sub_cancel]

end A318513

/-! ## A318513.P7243821554285740695

`∑{d}[A318512(n+1), A001221(#)]`
-/

namespace A318513.P7243821554285740695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A318513.P7243821554285740695

namespace A318513

/-- `∑{d}[A318512(n+1), A001221(#)]` -/
def P7243821554285740695.Spec : Prop :=
  ∀ n, P7243821554285740695.a n = A318513 (n + 1)

end A318513

/-! ## A318513.P9235887714081125083

`∑{e}[A318512(n+1), A318535(#)]`
-/

namespace A318513.P9235887714081125083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A318535 (Nat.factorization (f1 n).natAbs p)

end

end A318513.P9235887714081125083

namespace A318513

/-- `∑{e}[A318512(n+1), A318535(#)]` -/
def P9235887714081125083.Spec : Prop :=
  ∀ n, P9235887714081125083.a n = A318513 (n + 1)

end A318513

/-! ## A318513.P16496164035546366112

`A000005(2*A318512(n+1))-2`
-/

namespace A318513.P16496164035546366112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A318512 (n + 1)).toNat - 2

end

end A318513.P16496164035546366112

namespace A318513

/-- `A000005(2*A318512(n+1))-2` -/
def P16496164035546366112.Spec : Prop :=
  ∀ n, P16496164035546366112.a n = A318513 (n + 1)

end A318513

/-! ## A318513.P4966218392156250120

`A046645(n+1)-A318652(n+1)`
-/

namespace A318513.P4966218392156250120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - A318652 (n + 1)

end

end A318513.P4966218392156250120

namespace A318513

/-- `A046645(n+1)-A318652(n+1)` -/
def P4966218392156250120.Spec : Prop :=
  ∀ n, P4966218392156250120.a n = A318513 (n + 1)

end A318513

/-! ## A318513.P15948449018831025074

`A318655(n+1)-A318656(n+1)`
-/

namespace A318513.P15948449018831025074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318655 (n + 1) - A318656 (n + 1)

end

end A318513.P15948449018831025074

namespace A318513

/-- `A318655(n+1)-A318656(n+1)` -/
def P15948449018831025074.Spec : Prop :=
  ∀ n, P15948449018831025074.a n = A318513 (n + 1)

end A318513

/-! ## A318513.P13018527939790512971

`A000120(A318512(n+1)-1)`
-/

namespace A318513.P13018527939790512971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A318512 (n + 1) - 1).toNat

end

end A318513.P13018527939790512971

namespace A318513

/-- `A000120(A318512(n+1)-1)` -/
def P13018527939790512971.Spec : Prop :=
  ∀ n, P13018527939790512971.a n = A318513 (n + 1)

end A318513

/-! ## A318513.P2549222212832375526

`A159918(A318512(n+1)-1)`
-/

namespace A318513.P2549222212832375526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (A318512 (n + 1) - 1).toNat

end

end A318513.P2549222212832375526

namespace A318513

/-- `A159918(A318512(n+1)-1)` -/
def P2549222212832375526.Spec : Prop :=
  ∀ n, P2549222212832375526.a n = A318513 (n + 1)

end A318513

/-! ## A318513.P3306602705358614481

`A087179(2*A318512(n+1))-1`
-/

namespace A318513.P3306602705358614481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087179 (2 * A318512 (n + 1)).toNat - 1

end

end A318513.P3306602705358614481

namespace A318513

/-- `A087179(2*A318512(n+1))-1` -/
def P3306602705358614481.Spec : Prop :=
  ∀ n, P3306602705358614481.a n = A318513 (n + 1)

end A318513

/-! ## A318513.P1178836537596528414

`A169611(A318512(2*n+1-n))`
-/

namespace A318513.P1178836537596528414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A318512 (2 * n + 1 - n)).toNat

end

end A318513.P1178836537596528414

namespace A318513

/-- `A169611(A318512(2*n+1-n))` -/
def P1178836537596528414.Spec : Prop :=
  ∀ n, P1178836537596528414.a n = A318513 (n + 1)

end A318513

/-! ## A318513.P5547629710056644756

`∑{d}[A318512(n+1), A014963(#)-1]`
-/

namespace A318513.P5547629710056644756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A014963 d - 1)

end

end A318513.P5547629710056644756

namespace A318513

/-- `∑{d}[A318512(n+1), A014963(#)-1]` -/
def P5547629710056644756.Spec : Prop :=
  ∀ n, P5547629710056644756.a n = A318513 (n + 1)

end A318513

/-! ## A318513.P17180583246221550923

`∑{d}[A318512(n+1), A318512(#)]-1`
-/

namespace A318513.P17180583246221550923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A318512 d - 1

end

end A318513.P17180583246221550923

namespace A318513

/-- `∑{d}[A318512(n+1), A318512(#)]-1` -/
def P17180583246221550923.Spec : Prop :=
  ∀ n, P17180583246221550923.a n = A318513 (n + 1)

end A318513

/-! ## A318513.P10253548712312079611

`A087179(abs(1-A318512(n+1))+1)`
-/

namespace A318513.P10253548712312079611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087179 (|1 - A318512 (n + 1)| + 1).toNat

end

end A318513.P10253548712312079611

namespace A318513

/-- `A087179(abs(1-A318512(n+1))+1)` -/
def P10253548712312079611.Spec : Prop :=
  ∀ n, P10253548712312079611.a n = A318513 (n + 1)

end A318513

/-! ## A318513.P1067573985072124298

`A007814(A046644(n+1)/A318651(n+1))`
-/

namespace A318513.P1067573985072124298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((A046644 (n + 1) : ℚ) / (A318651 (n + 1) : ℚ))).toNat

end

end A318513.P1067573985072124298

namespace A318513

/-- `A007814(A046644(n+1)/A318651(n+1))` -/
def P1067573985072124298.Spec : Prop :=
  ∀ n, P1067573985072124298.a n = A318513 (n + 1)

end A318513

/-! ## A318513.P3706591416776480361

`∑{d}[A318512(n+1), A194244(A014963(#)+1)]`
-/

namespace A318513.P3706591416776480361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A194244 (A014963 d + 1).toNat

end

end A318513.P3706591416776480361

namespace A318513

/-- `∑{d}[A318512(n+1), A194244(A014963(#)+1)]` -/
def P3706591416776480361.Spec : Prop :=
  ∀ n, P3706591416776480361.a n = A318513 (n + 1)

end A318513

/-! ## A318513.P6660286364995543388

`A000005(A318512(n+1)²)-A000005(A318512(n+1))`
-/

namespace A318513.P6660286364995543388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A318512 (n + 1) ^ 2).toNat - A000005 (A318512 (n + 1)).toNat

end

end A318513.P6660286364995543388

namespace A318513

/-- `A000005(A318512(n+1)²)-A000005(A318512(n+1))` -/
def P6660286364995543388.Spec : Prop :=
  ∀ n, P6660286364995543388.a n = A318513 (n + 1)

end A318513

/-! ## A318513.P1392889587346916467

`A007814(A046644(n+1))-A318652(n+1)`
-/

namespace A318513.P1392889587346916467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A046644 (n + 1)).toNat - A318652 (n + 1)

end

end A318513.P1392889587346916467

namespace A318513

/-- `A007814(A046644(n+1))-A318652(n+1)` -/
def P1392889587346916467.Spec : Prop :=
  ∀ n, P1392889587346916467.a n = A318513 (n + 1)

end A318513

/-! ## A318513.P5613232190828686343

`A046645(n+1)-A007814(A318651(n+1))`
-/

namespace A318513.P5613232190828686343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - A007814 (A318651 (n + 1)).toNat

end

end A318513.P5613232190828686343

namespace A318513

/-- `A046645(n+1)-A007814(A318651(n+1))` -/
def P5613232190828686343.Spec : Prop :=
  ∀ n, P5613232190828686343.a n = A318513 (n + 1)

end A318513

/-! ## A318513.P9539848480377215522

`A087179(A318512(n+1)²)/2`
-/

namespace A318513.P9539848480377215522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087179 (A318512 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A318513.P9539848480377215522

namespace A318513

/-- `A087179(A318512(n+1)²)/2` -/
def P9539848480377215522.Spec : Prop :=
  ∀ n, P9539848480377215522.a n = (A318513 (n + 1) : ℚ)

end A318513

/-!
# A318514: a(n) = n OR (greatest proper divisor of n).

The programs for A318514, there is no canonical definition to state claims against.
-/

/-! ## A318514.P13813149064592769308

`or(n+1, A032742(n+1))`
-/

namespace A318514.P13813149064592769308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A032742 (n + 1))

end

end A318514.P13813149064592769308

/-! ## A318514.P6103334844578762719

`n+1+A032742(n+1)-A318515(n+1)`
-/

namespace A318514.P6103334844578762719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A032742 (n + 1) - A318515 (n + 1)

end

end A318514.P6103334844578762719

/-! ## A318514.P13911381808585941861

`or(n+1, A106409(n+1))`
-/

namespace A318514.P13911381808585941861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A106409 (n + 1))

end

end A318514.P13911381808585941861

/-! ## A318514.P3325299624624219555

`or(n+1, A220096(n+1))`
-/

namespace A318514.P3325299624624219555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A220096 (n + 1))

end

end A318514.P3325299624624219555

/-! ## A318514.P14015389038873178688

`or(n+1-A060681(n+1), n+1)`
-/

namespace A318514.P14015389038873178688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n + 1 : ℤ) - A060681 (n + 1)) (n + 1 : ℤ)

end

end A318514.P14015389038873178688

/-! ## A318514.P11974201071758592688

`or(n+1, (n+1)/A020639(n+1))`
-/

namespace A318514.P11974201071758592688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ)))

end

end A318514.P11974201071758592688

/-! ## A318514.P1774417739833464509

`A318515(n+1)+A106409(n+1)`
-/

namespace A318514.P1774417739833464509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318515 (n + 1) + A106409 (n + 1)

end

end A318514.P1774417739833464509

/-! ## A318514.P6342027665235536046

`or(n+1, A054576(2*(n+1)))`
-/

namespace A318514.P6342027665235536046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A054576 (2 * (n + 1)))

end

end A318514.P6342027665235536046

/-! ## A318514.P13095765376103970168

`or(n+1, A283464(A266645(n+1)))`
-/

namespace A318514.P13095765376103970168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A283464 (A266645 (n + 1)).toNat)

end

end A318514.P13095765376103970168

/-! ## A318514.P14227408594048712119

`or(n+1, A283463(A266646(n+1)))`
-/

namespace A318514.P14227408594048712119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A283463 (A266646 (n + 1)).toNat)

end

end A318514.P14227408594048712119

/-!
# A318515: a(n) = n AND A032742(n), where AND is bitwise-and (A004198) and A032742 = the largest proper divisor of n.

The programs for A318515, there is no canonical definition to state claims against.
-/

/-! ## A318515.P12307081633949653117

`and(n+1, A032742(n+1))`
-/

namespace A318515.P12307081633949653117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A032742 (n + 1))

end

end A318515.P12307081633949653117

/-! ## A318515.P7156442222707858700

`n+1+A032742(n+1)-A318514(n+1)`
-/

namespace A318515.P7156442222707858700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A032742 (n + 1) - A318514 (n + 1)

end

end A318515.P7156442222707858700

/-! ## A318515.P5609686584535383297

`(n+1+A032742(n+1)-A106409(n+1))/2`
-/

namespace A318515.P5609686584535383297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) + A032742 (n + 1) - A106409 (n + 1) : ℚ) / 2

end

end A318515.P5609686584535383297

/-! ## A318515.P13042886004762403109

`and(n+1, n+1-A060681(n+1))`
-/

namespace A318515.P13042886004762403109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((n + 1 : ℤ) - A060681 (n + 1))

end

end A318515.P13042886004762403109

/-! ## A318515.P13928141421697757205

`and(n+1, (n+1)/A020639(n+1))`
-/

namespace A318515.P13928141421697757205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ)))

end

end A318515.P13928141421697757205

/-! ## A318515.P8184086742315566334

`and(n+1, (n+1)/(A061228(n+1)-(n+1)))`
-/

namespace A318515.P8184086742315566334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A061228 (n + 1) - (n + 1 : ℤ) : ℚ)))

end

end A318515.P8184086742315566334

/-! ## A318515.P573765822622522832

`and(A032742(n+1), A071262(n))`
-/

namespace A318515.P573765822622522832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032742 (n + 1)) (A071262 n)

end

end A318515.P573765822622522832

/-! ## A318515.P15468666326741809428

`A318514(n+1)-A106409(n+1)`
-/

namespace A318515.P15468666326741809428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318514 (n + 1) - A106409 (n + 1)

end

end A318515.P15468666326741809428

/-! ## A318515.P10767842224140761467

`and(n+1, xor(A318505(n+1), A318507(n+1)))`
-/

namespace A318515.P10767842224140761467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (Int.xor (A318505 (n + 1)) (A318507 (n + 1)))

end

end A318515.P10767842224140761467

/-! ## A318515.P1593300893606050318

`and(n+1, A054576(2*(n+1)))`
-/

namespace A318515.P1593300893606050318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A054576 (2 * (n + 1)))

end

end A318515.P1593300893606050318

/-! ## A318515.P8214610349671033139

`and(A032742(A242112(2*n)), A242112(2*n))`
-/

namespace A318515.P8214610349671033139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032742 (A242112 (2 * n)).toNat) (A242112 (2 * n))

end

end A318515.P8214610349671033139

/-! ## A318515.P11101497586176665894

`and(n+1, A027751(A002541(n+1)+1))`
-/

namespace A318515.P11101497586176665894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A027751 (A002541 (n + 1) + 1).toNat)

end

end A318515.P11101497586176665894

/-! ## A318515.P2303035752426071247

`and(A032742(n+1), A135854(n))`
-/

namespace A318515.P2303035752426071247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032742 (n + 1)) (A135854 n)

end

end A318515.P2303035752426071247

/-! ## A318515.P11761425495052951244

`and(A032742(n+1), A048504(n))`
-/

namespace A318515.P11761425495052951244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032742 (n + 1)) (A048504 n)

end

end A318515.P11761425495052951244

/-!
# A318516: a(n) = A032742(n) OR n-A032742(n), where OR is bitwise-or (A003986) and A032742 = the largest proper divisor of n.

The programs for A318516, there is no canonical definition to state claims against.
-/

/-! ## A318516.P2544043130040845813

`n+1-A318518(n+1)`
-/

namespace A318516.P2544043130040845813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A318518 (n + 1)

end

end A318516.P2544043130040845813

/-! ## A318516.P1334445550587010981

`or(A032742(n+1), n+1-A032742(n+1))`
-/

namespace A318516.P1334445550587010981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032742 (n + 1)) ((n + 1 : ℤ) - A032742 (n + 1))

end

end A318516.P1334445550587010981

/-! ## A318516.P9349007150349550478

`(A318517(n+1)+1+n)/2`
-/

namespace A318516.P9349007150349550478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318517 (n + 1) + 1 + (n : ℤ) : ℚ) / 2

end

end A318516.P9349007150349550478

/-! ## A318516.P8882122948795374600

`A024000(A318518(n+1))+n`
-/

namespace A318516.P8882122948795374600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A318518 (n + 1)).toNat + (n : ℤ)

end

end A318516.P8882122948795374600

/-! ## A318516.P5303888860381160352

`A302042(A318517(n+1)+1+n)`
-/

namespace A318516.P5303888860381160352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A318517 (n + 1) + 1 + (n : ℤ)).toNat

end

end A318516.P5303888860381160352

/-! ## A318516.P13770376683734426485

`A302043(A318517(n+1)+1+n)`
-/

namespace A318516.P13770376683734426485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302043 (A318517 (n + 1) + 1 + (n : ℤ)).toNat

end

end A318516.P13770376683734426485

/-! ## A318516.P5001992563443139546

`A318518(A318517(n+1)+1+n)`
-/

namespace A318516.P5001992563443139546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A318517 (n + 1) + 1 + (n : ℤ)).toNat

end

end A318516.P5001992563443139546

/-! ## A318516.P7037877178195184214

`or(A032742(n+1), A060681(n+1))`
-/

namespace A318516.P7037877178195184214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032742 (n + 1)) (A060681 (n + 1))

end

end A318516.P7037877178195184214

/-! ## A318516.P10467807658872642175

`or(A032742(n+1), A318517(n+1))`
-/

namespace A318516.P10467807658872642175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032742 (n + 1)) (A318517 (n + 1))

end

end A318516.P10467807658872642175

/-! ## A318516.P13211921858431747922

`or(A060681(n+1), A318517(n+1))`
-/

namespace A318516.P13211921858431747922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060681 (n + 1)) (A318517 (n + 1))

end

end A318516.P13211921858431747922

/-! ## A318516.P13299970206013405026

`or((n+1)/A020639(n+1), A060681(n+1))`
-/

namespace A318516.P13299970206013405026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))) (A060681 (n + 1))

end

end A318516.P13299970206013405026

/-! ## A318516.P3983945683768885317

`or(A000027(n+1-A060681(n+1)), A060681(n+1))`
-/

namespace A318516.P3983945683768885317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000027 ((n + 1 : ℤ) - A060681 (n + 1)).toNat) (A060681 (n + 1))

end

end A318516.P3983945683768885317

/-! ## A318516.P16063699470288818045

`or(n+1-A060681(n+1), A060681(A326139(2*(n+1))))`
-/

namespace A318516.P16063699470288818045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n + 1 : ℤ) - A060681 (n + 1)) (A060681 (A326139 (2 * (n + 1))).toNat)

end

end A318516.P16063699470288818045

/-! ## A318516.P16702129496985854451

`A008619(A318517(n+1)+n)`
-/

namespace A318516.P16702129496985854451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A318517 (n + 1) + (n : ℤ)).toNat

end

end A318516.P16702129496985854451

/-! ## A318516.P18181849887584241484

`A152271(A318517(n+1)+n)`
-/

namespace A318516.P18181849887584241484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A318517 (n + 1) + (n : ℤ)).toNat

end

end A318516.P18181849887584241484

/-! ## A318516.P17663773541094192889

`A026741(A318517(n+1)+1+n)`
-/

namespace A318516.P17663773541094192889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A318517 (n + 1) + 1 + (n : ℤ)).toNat

end

end A318516.P17663773541094192889

/-! ## A318516.P9810537066488537825

`A032742(A318517(n+1)+1+n)`
-/

namespace A318516.P9810537066488537825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A318517 (n + 1) + 1 + (n : ℤ)).toNat

end

end A318516.P9810537066488537825

/-! ## A318516.P16077571163823193588

`A060681(A318517(n+1)+1+n)`
-/

namespace A318516.P16077571163823193588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A318517 (n + 1) + 1 + (n : ℤ)).toNat

end

end A318516.P16077571163823193588

/-! ## A318516.P10893493408040050196

`A078898(A318517(n+1)+1+n)`
-/

namespace A318516.P10893493408040050196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A318517 (n + 1) + 1 + (n : ℤ)).toNat

end

end A318516.P10893493408040050196

/-! ## A318516.P2891830913197657575

`A249738(A318517(n+1)+n+3)`
-/

namespace A318516.P2891830913197657575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (A318517 (n + 1) + (n + 3 : ℤ)).toNat

end

end A318516.P2891830913197657575

/-!
# A318517: a(n) = A032742(n) XOR n-A032742(n), where XOR is bitwise-xor (A003987) and A032742 = the largest proper divisor of n.

The programs for A318517, there is no canonical definition to state claims against.
-/

/-! ## A318517.P1670273026053307854

`n+1-2*A318518(n+1)`
-/

namespace A318517.P1670273026053307854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A318518 (n + 1)

end

end A318517.P1670273026053307854

/-! ## A318517.P12120821033888586253

`xor(A032742(n+1), n+1-A032742(n+1))`
-/

namespace A318517.P12120821033888586253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A032742 (n + 1)) ((n + 1 : ℤ) - A032742 (n + 1))

end

end A318517.P12120821033888586253

/-! ## A318517.P17099246543497975592

`2*A318516(n+1)-(n+1)`
-/

namespace A318517.P17099246543497975592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318516 (n + 1) - (n + 1 : ℤ)

end

end A318517.P17099246543497975592

/-! ## A318517.P8282793390741685814

`A004277(A318516(n+1))-(n+1)`
-/

namespace A318517.P8282793390741685814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A318516 (n + 1)).toNat - (n + 1 : ℤ)

end

end A318517.P8282793390741685814

/-! ## A318517.P6502583245362184187

`A318516(n+1)-A318518(n+1)`
-/

namespace A318517.P6502583245362184187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (n + 1) - A318518 (n + 1)

end

end A318517.P6502583245362184187

/-! ## A318517.P7809523843632262539

`xor(A032742(n+1), A060681(n+1))`
-/

namespace A318517.P7809523843632262539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A032742 (n + 1)) (A060681 (n + 1))

end

end A318517.P7809523843632262539

/-! ## A318517.P18094582935190935169

`xor(n+1-A220096(n+1), A220096(n+1))`
-/

namespace A318517.P18094582935190935169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 1 : ℤ) - A220096 (n + 1)) (A220096 (n + 1))

end

end A318517.P18094582935190935169

/-! ## A318517.P8799494105902817369

`xor((n+1)/A020639(n+1), A060681(n+1))`
-/

namespace A318517.P8799494105902817369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))) (A060681 (n + 1))

end

end A318517.P8799494105902817369

/-! ## A318517.P7310067933800736102

`A318516(n+1)-and(A032742(n+1), A060681(n+1))`
-/

namespace A318517.P7310067933800736102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (n + 1) - Int.land (A032742 (n + 1)) (A060681 (n + 1))

end

end A318517.P7310067933800736102

/-! ## A318517.P2145016885748034917

`xor(A000027(n+1-A060681(n+1)), A060681(n+1))`
-/

namespace A318517.P2145016885748034917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000027 ((n + 1 : ℤ) - A060681 (n + 1)).toNat) (A060681 (n + 1))

end

end A318517.P2145016885748034917

/-! ## A318517.P4141440365714114446

`xor(n+1-A060681(n+1), A060681(A326139(2*(n+1))))`
-/

namespace A318517.P4141440365714114446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 1 : ℤ) - A060681 (n + 1)) (A060681 (A326139 (2 * (n + 1))).toNat)

end

end A318517.P4141440365714114446

/-! ## A318517.P2772448437528922660

`xor(A060681(n+1), A283464(A266645(n+1)))`
-/

namespace A318517.P2772448437528922660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060681 (n + 1)) (A283464 (A266645 (n + 1)).toNat)

end

end A318517.P2772448437528922660

/-! ## A318517.P16255658722619365383

`xor(A060681(n+1), A283463(A266646(n+1)))`
-/

namespace A318517.P16255658722619365383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060681 (n + 1)) (A283463 (A266646 (n + 1)).toNat)

end

end A318517.P16255658722619365383

/-!
# A318518: a(n) = A032742(n) AND n-A032742(n), where AND is bitwise-and (A004198) and A032742 = the largest proper divisor of n.

The programs for A318518, there is no canonical definition to state claims against.
-/

/-! ## A318518.P972977165787747887

`n+1-A318516(n+1)`
-/

namespace A318518.P972977165787747887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A318516 (n + 1)

end

end A318518.P972977165787747887

/-! ## A318518.P5213241014457267867

`(n+1-A318517(n+1))/2`
-/

namespace A318518.P5213241014457267867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A318517 (n + 1) : ℚ) / 2

end

end A318518.P5213241014457267867

/-! ## A318518.P13546721523420255344

`and(A032742(n+1), n+1-A032742(n+1))`
-/

namespace A318518.P13546721523420255344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032742 (n + 1)) ((n + 1 : ℤ) - A032742 (n + 1))

end

end A318518.P13546721523420255344

/-! ## A318518.P13611371173443919549

`A026741(1-A318517(n+1)+n)`
-/

namespace A318518.P13611371173443919549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (1 - A318517 (n + 1) + (n : ℤ)).toNat

end

end A318518.P13611371173443919549

/-! ## A318518.P939844501760167275

`A078898(1-A318517(n+1)+n)`
-/

namespace A318518.P939844501760167275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (1 - A318517 (n + 1) + (n : ℤ)).toNat

end

end A318518.P939844501760167275

/-! ## A318518.P5328995495625948529

`and(A032742(n+1), A060681(n+1))`
-/

namespace A318518.P5328995495625948529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032742 (n + 1)) (A060681 (n + 1))

end

end A318518.P5328995495625948529

/-! ## A318518.P10075362805269721880

`xor(A318516(n+1), A318517(n+1))`
-/

namespace A318518.P10075362805269721880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A318516 (n + 1)) (A318517 (n + 1))

end

end A318518.P10075362805269721880

/-! ## A318518.P1144425323835065156

`and(n+1-A220096(n+1), A220096(n+1))`
-/

namespace A318518.P1144425323835065156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 1 : ℤ) - A220096 (n + 1)) (A220096 (n + 1))

end

end A318518.P1144425323835065156

/-! ## A318518.P13098521611736647848

`and((n+1)/A020639(n+1), A060681(n+1))`
-/

namespace A318518.P13098521611736647848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))) (A060681 (n + 1))

end

end A318518.P13098521611736647848

/-! ## A318518.P2495674122011718942

`and(gcd(n+1, A285639(n+1)), A060681(n+1))`
-/

namespace A318518.P2495674122011718942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.gcd (n + 1 : ℤ) (A285639 (n + 1)) : ℤ) (A060681 (n + 1))

end

end A318518.P2495674122011718942

/-! ## A318518.P16190531399832286086

`and(A071262(n)-A032742(n+1), A032742(n+1))`
-/

namespace A318518.P16190531399832286086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071262 n - A032742 (n + 1)) (A032742 (n + 1))

end

end A318518.P16190531399832286086

/-! ## A318518.P12164792873967886420

`or(A032742(n+1), A318517(n+1))-A318517(n+1)`
-/

namespace A318518.P12164792873967886420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032742 (n + 1)) (A318517 (n + 1)) - A318517 (n + 1)

end

end A318518.P12164792873967886420

/-! ## A318518.P4289204518166049877

`or(A060681(n+1), A318517(n+1))-A318517(n+1)`
-/

namespace A318518.P4289204518166049877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060681 (n + 1)) (A318517 (n + 1)) - A318517 (n + 1)

end

end A318518.P4289204518166049877

/-! ## A318518.P14329797762383831033

`and((n+1)/A014963(A028233(n+1)), A060681(n+1))`
-/

namespace A318518.P14329797762383831033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014963 (A028233 (n + 1)).toNat : ℚ))) (A060681 (n + 1))

end

end A318518.P14329797762383831033

/-! ## A318518.P11702559320090441315

`and((n+1)/A014963(A304181(n+1)), A060681(n+1))`
-/

namespace A318518.P11702559320090441315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014963 (A304181 (n + 1)).toNat : ℚ))) (A060681 (n + 1))

end

end A318518.P11702559320090441315

/-! ## A318518.P5058301829398351180

`A249738(n+3-A318517(n+1))`
-/

namespace A318518.P5058301829398351180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 ((n + 3 : ℤ) - A318517 (n + 1)).toNat

end

end A318518.P5058301829398351180

/-! ## A318518.P2228556189641690067

`A008619(A318517(n+1)+n)-A318517(n+1)`
-/

namespace A318518.P2228556189641690067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A318517 (n + 1) + (n : ℤ)).toNat - A318517 (n + 1)

end

end A318518.P2228556189641690067

/-! ## A318518.P14803609175628133192

`A152271(A318517(n+1)+n)-A318517(n+1)`
-/

namespace A318518.P14803609175628133192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A318517 (n + 1) + (n : ℤ)).toNat - A318517 (n + 1)

end

end A318518.P14803609175628133192

/-! ## A318518.P14213832504382504022

`and(A135854(n)-A032742(n+1), A032742(n+1))`
-/

namespace A318518.P14213832504382504022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135854 n - A032742 (n + 1)) (A032742 (n + 1))

end

end A318518.P14213832504382504022

/-! ## A318518.P288858620147664869

`and(A048504(n)-A032742(n+1), A032742(n+1))`
-/

namespace A318518.P288858620147664869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048504 n - A032742 (n + 1)) (A032742 (n + 1))

end

end A318518.P288858620147664869

/-!
# A318519: a(n) = A000005(n) * A003557(n).

The programs for A318519, the canonical program `A318519.P15155889368844815815` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318519 has offset 1).

The definition of A318519 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A003557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318519.P15155889368844815815

`A000005(n+1)*A003557(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A318519

/-- `A000005(n+1)*A003557(n+1)` -/
def P15155889368844815815.Spec : Prop :=
  ∀ n, P15155889368844815815.a n = A318519 (n + 1)

theorem P15155889368844815815.correct : P15155889368844815815.Spec := by
  intro n
  simp only [A318519, Nat.add_sub_cancel]

end A318519

/-! ## A318519.P8454843779737067939

`A062355(n+1)/A173557(n+1)`
-/

namespace A318519.P8454843779737067939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062355 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)

end

end A318519.P8454843779737067939

namespace A318519

/-- `A062355(n+1)/A173557(n+1)` -/
def P8454843779737067939.Spec : Prop :=
  ∀ n, P8454843779737067939.a n = (A318519 (n + 1) : ℚ)

end A318519

/-! ## A318519.P1212219519380997616

`(n+1)*∏{e}[n+1, #+1]/∏{p}[n+1, #]`
-/

namespace A318519.P1212219519380997616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

end

end A318519.P1212219519380997616

namespace A318519

/-- `(n+1)*∏{e}[n+1, #+1]/∏{p}[n+1, #]` -/
def P1212219519380997616.Spec : Prop :=
  ∀ n, P1212219519380997616.a n = (A318519 (n + 1) : ℚ)

end A318519

/-! ## A318519.P6959066896576632613

`Δ[A006218(n)]*A003557(n+1)`
-/

namespace A318519.P6959066896576632613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A003557 (n + 1)

end

end A318519.P6959066896576632613

namespace A318519

/-- `Δ[A006218(n)]*A003557(n+1)` -/
def P6959066896576632613.Spec : Prop :=
  ∀ n, P6959066896576632613.a n = A318519 (n + 1)

end A318519

/-! ## A318519.P9471986986252968004

`A347291(n+1)*A357669(n+1)`
-/

namespace A318519.P9471986986252968004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347291 (n + 1) * A357669 (n + 1)

end

end A318519.P9471986986252968004

namespace A318519

/-- `A347291(n+1)*A357669(n+1)` -/
def P9471986986252968004.Spec : Prop :=
  ∀ n, P9471986986252968004.a n = A318519 (n + 1)

end A318519

/-! ## A318519.P15584013742236438067

`A038040(n+1)/A007947(n+1)`
-/

namespace A318519.P15584013742236438067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A318519.P15584013742236438067

namespace A318519

/-- `A038040(n+1)/A007947(n+1)` -/
def P15584013742236438067.Spec : Prop :=
  ∀ n, P15584013742236438067.a n = (A318519 (n + 1) : ℚ)

end A318519

/-! ## A318519.P8570977274688731454

`A034714(n+1)/A064549(n+1)`
-/

namespace A318519.P8570977274688731454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034714 (n + 1) : ℚ) / (A064549 (n + 1) : ℚ)

end

end A318519.P8570977274688731454

namespace A318519

/-- `A034714(n+1)/A064549(n+1)` -/
def P8570977274688731454.Spec : Prop :=
  ∀ n, P8570977274688731454.a n = (A318519 (n + 1) : ℚ)

end A318519

/-! ## A318519.P8369255745449559729

`A110601(n+1)/A304408(n+1)`
-/

namespace A318519.P8369255745449559729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110601 (n + 1) : ℚ) / (A304408 (n + 1) : ℚ)

end

end A318519.P8369255745449559729

namespace A318519

/-- `A110601(n+1)/A304408(n+1)` -/
def P8369255745449559729.Spec : Prop :=
  ∀ n, P8369255745449559729.a n = (A318519 (n + 1) : ℚ)

end A318519

/-! ## A318519.P2715355886405891685

`A386012(n+1)/A355038(n+1)`
-/

namespace A318519.P2715355886405891685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386012 (n + 1) : ℚ) / (A355038 (n + 1) : ℚ)

end

end A318519.P2715355886405891685

namespace A318519

/-- `A386012(n+1)/A355038(n+1)` -/
def P2715355886405891685.Spec : Prop :=
  ∀ n, P2715355886405891685.a n = (A318519 (n + 1) : ℚ)

end A318519

/-! ## A318519.P15542384833975415594

`(A032741(n+1)+1)*A003557(n+1)`
-/

namespace A318519.P15542384833975415594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032741 (n + 1) + 1) * A003557 (n + 1)

end

end A318519.P15542384833975415594

namespace A318519

/-- `(A032741(n+1)+1)*A003557(n+1)` -/
def P15542384833975415594.Spec : Prop :=
  ∀ n, P15542384833975415594.a n = A318519 (n + 1)

end A318519

/-! ## A318519.P10436254471801845480

`(A336551(n+1)+1)*A000005(n+1)`
-/

namespace A318519.P10436254471801845480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A336551 (n + 1) + 1) * A000005 (n + 1)

end

end A318519.P10436254471801845480

namespace A318519

/-- `(A336551(n+1)+1)*A000005(n+1)` -/
def P10436254471801845480.Spec : Prop :=
  ∀ n, P10436254471801845480.a n = A318519 (n + 1)

end A318519

/-! ## A318519.P5618315518770594245

`(A334954(n+1)-1)*A003557(n+1)`
-/

namespace A318519.P5618315518770594245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A334954 (n + 1) - 1) * A003557 (n + 1)

end

end A318519.P5618315518770594245

namespace A318519

/-- `(A334954(n+1)-1)*A003557(n+1)` -/
def P5618315518770594245.Spec : Prop :=
  ∀ n, P5618315518770594245.a n = A318519 (n + 1)

end A318519

/-! ## A318519.P8637934988077978096

`A003557(n+1)/2*A062011(n+1)`
-/

namespace A318519.P8637934988077978096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) : ℚ) / 2 * (A062011 (n + 1) : ℚ)

end

end A318519.P8637934988077978096

namespace A318519

/-- `A003557(n+1)/2*A062011(n+1)` -/
def P8637934988077978096.Spec : Prop :=
  ∀ n, P8637934988077978096.a n = (A318519 (n + 1) : ℚ)

end A318519

/-! ## A318519.P12762854096251402067

`A000005(n+1)*(n+1)²/A064549(n+1)`
-/

namespace A318519.P12762854096251402067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * ((n + 1) ^ 2 : ℤ) : ℚ) / (A064549 (n + 1) : ℚ)

end

end A318519.P12762854096251402067

namespace A318519

/-- `A000005(n+1)*(n+1)²/A064549(n+1)` -/
def P12762854096251402067.Spec : Prop :=
  ∀ n, P12762854096251402067.a n = (A318519 (n + 1) : ℚ)

end A318519

/-! ## A318519.P840140457782249202

`(∑{d}[n+1, #+1]-A000203(n+1))*A003557(n+1)`
-/

namespace A318519.P840140457782249202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1)) * A003557 (n + 1)

end

end A318519.P840140457782249202

namespace A318519

/-- `(∑{d}[n+1, #+1]-A000203(n+1))*A003557(n+1)` -/
def P840140457782249202.Spec : Prop :=
  ∀ n, P840140457782249202.a n = A318519 (n + 1)

end A318519

/-! ## A318519.P3704357318064374087

`(A048105(n+1)+A034444(n+1))*A003557(n+1)`
-/

namespace A318519.P3704357318064374087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048105 (n + 1) + A034444 (n + 1)) * A003557 (n + 1)

end

end A318519.P3704357318064374087

namespace A318519

/-- `(A048105(n+1)+A034444(n+1))*A003557(n+1)` -/
def P3704357318064374087.Spec : Prop :=
  ∀ n, P3704357318064374087.a n = A318519 (n + 1)

end A318519

/-! ## A318519.P14608492112287450999

`(A372720(n+1)+A008479(n+1))*A003557(n+1)`
-/

namespace A318519.P14608492112287450999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A372720 (n + 1) + A008479 (n + 1)) * A003557 (n + 1)

end

end A318519.P14608492112287450999

namespace A318519

/-- `(A372720(n+1)+A008479(n+1))*A003557(n+1)` -/
def P14608492112287450999.Spec : Prop :=
  ∀ n, P14608492112287450999.a n = A318519 (n + 1)

end A318519

/-! ## A318519.P1085464394522801387

`(A324827(n+1)+A324826(n+1))*A003557(n+1)`
-/

namespace A318519.P1085464394522801387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A324827 (n + 1) + A324826 (n + 1)) * A003557 (n + 1)

end

end A318519.P1085464394522801387

namespace A318519

/-- `(A324827(n+1)+A324826(n+1))*A003557(n+1)` -/
def P1085464394522801387.Spec : Prop :=
  ∀ n, P1085464394522801387.a n = A318519 (n + 1)

end A318519

/-! ## A318519.P10017771388155060463

`(A000203(n+1)-A326187(n+1))*A000005(n+1)`
-/

namespace A318519.P10017771388155060463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A326187 (n + 1)) * A000005 (n + 1)

end

end A318519.P10017771388155060463

namespace A318519

/-- `(A000203(n+1)-A326187(n+1))*A000005(n+1)` -/
def P10017771388155060463.Spec : Prop :=
  ∀ n, P10017771388155060463.a n = A318519 (n + 1)

end A318519

/-! ## A318519.P14698586794182648726

`A003557(n+1)*A056671(n+1)*A357669(n+1)`
-/

namespace A318519.P14698586794182648726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A056671 (n + 1) * A357669 (n + 1)

end

end A318519.P14698586794182648726

namespace A318519

/-- `A003557(n+1)*A056671(n+1)*A357669(n+1)` -/
def P14698586794182648726.Spec : Prop :=
  ∀ n, P14698586794182648726.a n = A318519 (n + 1)

end A318519

/-!
# A318520: Number of unlabeled rooted identity trees with n non-binary nodes.

The programs for A318520, there is no canonical definition to state claims against.
-/

/-! ## A318520.P10027209924874853307

`ceil(A096574(n+1)/A005899(n))`
-/

namespace A318520.P10027209924874853307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A096574 (n + 1) : ℚ) / (A005899 n : ℚ)⌉

end

end A318520.P10027209924874853307

/-! ## A318520.P7092603554664276386

`ceil(A096574(n+1)/A053755(n))`
-/

namespace A318520.P7092603554664276386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A096574 (n + 1) : ℚ) / (A053755 n : ℚ)⌉

end

end A318520.P7092603554664276386

/-! ## A318520.P18307180067474629548

`A118759(round(A293336(n)/A000124(n)))`
-/

namespace A318520.P18307180067474629548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (SequenceMachineLib.roundAway ((A293336 n : ℚ) / (A000124 n : ℚ))).toNat

end

end A318520.P18307180067474629548

/-! ## A318520.P16680325840010191836

`floor(A096574(n+1)/A053755(n)-A057428(n))`
-/

namespace A318520.P16680325840010191836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096574 (n + 1) : ℚ) / (A053755 n : ℚ) - (A057428 n : ℚ)⌋

end

end A318520.P16680325840010191836

/-! ## A318520.P462697886979493399

`round(A293336(n)/A000124(n))%A259589(2*n)`
-/

namespace A318520.P462697886979493399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A293336 n : ℚ) / (A000124 n : ℚ))) (A259589 (2 * n))

end

end A318520.P462697886979493399

/-!
# A318527: Numbers k such that -3 is a quadratic residue (not necessarily coprime) modulo k, k + 1, k + 2 and k + 3.

The programs for A318527, there is no canonical definition to state claims against.
-/

/-! ## A318527.P8682241307488487814

`360*A318911(n+1)+1`
-/

namespace A318527.P8682241307488487814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  360 * A318911 (n + 1) + 1

end

end A318527.P8682241307488487814

/-!
# A318529: a(n) begins the first run of at least n consecutive numbers with same number of exponential divisors.

The programs for A318529, there is no canonical definition to state claims against.
-/

/-! ## A318529.P116542978042268096

`A338628(n+1)%A000124(A000142(n+1))`
-/

namespace A318529.P116542978042268096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338628 (n + 1)) (A000124 (A000142 (n + 1)).toNat)

end

end A318529.P116542978042268096

/-! ## A318529.P13010042208525670553

`A338628(n+1)%A005449(A338632(n))`
-/

namespace A318529.P13010042208525670553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338628 (n + 1)) (A005449 (A338632 n).toNat)

end

end A318529.P13010042208525670553

/-!
# A318532: Number of finite sets of set partitions of {1,...,n} such that any two have meet {{1},...,{n}} and join {{1,...,n}}.

The programs for A318532, there is no canonical definition to state claims against.
-/

/-! ## A318532.P3000131560005366773

`∑[A287374(A261692(n!))]`
-/

namespace A318532.P3000131560005366773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287374 (A261692 (Nat.factorial n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318532.P3000131560005366773

/-!
# A318535: Integers a(n) such that [a(n) - k] is a palindrome in base 10, with k

The programs for A318535, there is no canonical definition to state claims against.
-/

/-! ## A318535.P3534723191444626334

`eq[A000038(n), A059995(A261424(n))]`
-/

namespace A318535.P3534723191444626334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A261424 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A318535.P3534723191444626334

/-! ## A318535.P1960255449866853048

`eq[A000007(n), A031346(A261424(n))]`
-/

namespace A318535.P1960255449866853048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A261424 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A318535.P1960255449866853048

/-! ## A318535.P13958668038712480465

`eq[A000007(n), A031346(A319387(n))]`
-/

namespace A318535.P13958668038712480465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A319387 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A318535.P13958668038712480465

/-! ## A318535.P10914603219482514379

`eq[A057427(n), A262190(A261424(n))]`
-/

namespace A318535.P10914603219482514379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262190 (A261424 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A318535.P10914603219482514379

/-! ## A318535.P1894950275435547999

`lt[A026479(n+1), A250120(A262087(n))]`
-/

namespace A318535.P1894950275435547999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A262087 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A318535.P1894950275435547999

/-! ## A318535.P17856494478586009519

`A260255(A136522(A002113(n+1))+n+1)`
-/

namespace A318535.P17856494478586009519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260255 (A136522 (A002113 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A318535.P17856494478586009519

/-! ## A318535.P14495487292012559942

`A260255(A261675(A002113(n+1))+n+1)`
-/

namespace A318535.P14495487292012559942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260255 (A261675 (A002113 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A318535.P14495487292012559942

/-! ## A318535.P8211425468761274162

`eq[A055642(A261424(n)), A178334(n)]`
-/

namespace A318535.P8211425468761274162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A261424 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A318535.P8211425468761274162

/-! ## A318535.P16677675413232523919

`eq[A178334(n), A307651(A319387(n))]`
-/

namespace A318535.P16677675413232523919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307651 (A319387 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A318535.P16677675413232523919

/-!
# A318536: 

The programs for A318536, there is no canonical definition to state claims against.
-/

/-! ## A318536.P1698677492081273597

`lt[A052037(n), 11]+1`
-/

namespace A318536.P1698677492081273597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052037 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A318536.P1698677492081273597

/-! ## A318536.P1894963694200189064

`A035332(n+1)%A007484(n)`
-/

namespace A318536.P1894963694200189064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035332 (n + 1)) (A007484 n)

end

end A318536.P1894963694200189064

/-! ## A318536.P7537977558911347732

`A035332(n+1)+A035321(A142211(n+1))`
-/

namespace A318536.P7537977558911347732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035332 (n + 1) + A035321 (A142211 (n + 1)).toNat

end

end A318536.P7537977558911347732

/-! ## A318536.P9679233237205821558

`A037213(A345835(2*(n+2)))+A035332(n+1)`
-/

namespace A318536.P9679233237205821558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A345835 (2 * (n + 2))).toNat + A035332 (n + 1)

end

end A318536.P9679233237205821558

/-! ## A318536.P7696187546850135953

`lt[A010815(A000217(n)), A080465(n)]`
-/

namespace A318536.P7696187546850135953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A000217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080465 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A318536.P7696187546850135953

/-! ## A318536.P16455150532931254237

`and(A035332(n+1), A381707(n+1))`
-/

namespace A318536.P16455150532931254237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035332 (n + 1)) (A381707 (n + 1))

end

end A318536.P16455150532931254237

/-! ## A318536.P3927534021373469902

`A070090(A052034(n+1)+1)+A035332(n+1)`
-/

namespace A318536.P3927534021373469902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070090 (A052034 (n + 1) + 1).toNat + A035332 (n + 1)

end

end A318536.P3927534021373469902

/-! ## A318536.P9820175214383563923

`and(A035332(n+1), A086827(n+1))`
-/

namespace A318536.P9820175214383563923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035332 (n + 1)) (A086827 (n + 1))

end

end A318536.P9820175214383563923

/-! ## A318536.P17462291604118261451

`eq[n, n*A145568(n²)]+1`
-/

namespace A318536.P17462291604118261451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A145568 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A318536.P17462291604118261451

/-! ## A318536.P12759834780985926298

`lt[10, A109425(A119589(n+1))]`
-/

namespace A318536.P12759834780985926298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109425 (A119589 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A318536.P12759834780985926298

/-!
# A318537: Irregular triangle read by rows: T(n,m) is the number of n X m (0,1)-matrices with pairwise distinct nonzero columns and pairwise distinct nonzero rows, n >= 0, m = 0..2^n-1.

The programs for A318537, there is no canonical definition to state claims against.
-/

/-! ## A318537.P9795425631411362125

`A053645(n+1)!*A059202(n)`
-/

namespace A318537.P9795425631411362125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A053645 (n + 1)).toNat : ℤ) * A059202 n

end

end A318537.P9795425631411362125

/-!
# A318538: Number of n X n (0,1)-matrices with nonzero pairwise distinct rows and nonzero pairwise distinct columns.

The programs for A318538, there is no canonical definition to state claims against.
-/

/-! ## A318538.P2767106905534462403

`A094000(n)*n!`
-/

namespace A318538.P2767106905534462403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094000 n * (Nat.factorial n : ℤ)

end

end A318538.P2767106905534462403

/-! ## A318538.P11070737076646038682

`A000142(n)*A094000(n)`
-/

namespace A318538.P11070737076646038682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A094000 n

end

end A318538.P11070737076646038682

/-! ## A318538.P7234051898453808926

`Δ[A003422(n)]*A094000(n)`
-/

namespace A318538.P7234051898453808926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A094000 n

end

end A318538.P7234051898453808926

/-! ## A318538.P2291343794846261477

`A094000(n)*A094346(A000096(n))`
-/

namespace A318538.P2291343794846261477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094000 n * A094346 (A000096 n).toNat

end

end A318538.P2291343794846261477

/-! ## A318538.P11345007609234946236

`A088310(n)/A088309(n)*A094000(n)`
-/

namespace A318538.P11345007609234946236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088310 n : ℚ) / (A088309 n : ℚ) * (A094000 n : ℚ)

end

end A318538.P11345007609234946236

/-!
# A318539: Number of n X n 0..1 arrays with every element unequal to 0, 1, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318539, there is no canonical definition to state claims against.
-/

/-! ## A318539.P7763638913506896347

`A318545((n+1)²+n²)`
-/

namespace A318539.P7763638913506896347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318545 ((n + 1) ^ 2 + n ^ 2)

end

end A318539.P7763638913506896347

/-! ## A318539.P13084057440699776979

`lcm(A033999(n), A318545(A001844(n)))`
-/

namespace A318539.P13084057440699776979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A318545 (A001844 n).toNat)

end

end A318539.P13084057440699776979

/-! ## A318539.P717323846472329752

`or(A000007(n), A318545(A001844(n)))`
-/

namespace A318539.P717323846472329752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A318545 (A001844 n).toNat)

end

end A318539.P717323846472329752

/-! ## A318539.P17987396535760614902

`A006519(2*n+1)*A318545(A001844(n))`
-/

namespace A318539.P17987396535760614902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1) * A318545 (A001844 n).toNat

end

end A318539.P17987396535760614902

/-! ## A318539.P9691862636732038091

`A318545(A001844(n))^A001221(A001316(n))`
-/

namespace A318539.P9691862636732038091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318545 (A001844 n).toNat : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A318539.P9691862636732038091

/-!
# A318540: Number of nX3 0..1 arrays with every element unequal to 0, 1, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318540, the canonical program `A318540.P1748494887343583420` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318540 has offset 1).

The definition of A318540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318540.P1748494887343583420

`a(n-1)+3*a(n-3)+a(n-4)+3*a(n-5)+a(n-7)` with `a(0)=3, a(1)=3, a(2)=6, a(3)=13, a(4)=26, a(5)=52, a(6)=107, a(7)=218`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A318540

/-- `a(n-1)+3*a(n-3)+a(n-4)+3*a(n-5)+a(n-7)` -/
def P1748494887343583420.Spec : Prop :=
  ∀ n, (P1748494887343583420.a n : ℤ) = A318540 (n + 1)

theorem P1748494887343583420.correct : P1748494887343583420.Spec := by
  intro n
  simp only [A318540, Nat.add_sub_cancel]

end A318540

/-! ## A318540.P196884359111606797

`A318545(∑[n+2]+4)`
-/

namespace A318540.P196884359111606797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318545 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A318540.P196884359111606797

namespace A318540

/-- `A318545(∑[n+2]+4)` -/
def P196884359111606797.Spec : Prop :=
  ∀ n, P196884359111606797.a n = A318540 (n + 1)

end A318540

/-! ## A318540.P881388867747649404

`A318545(A167614(n+1))%A002189(n)`
-/

namespace A318540.P881388867747649404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318545 (A167614 (n + 1)).toNat) (A002189 n)

end

end A318540.P881388867747649404

namespace A318540

/-- `A318545(A167614(n+1))%A002189(n)` -/
def P881388867747649404.Spec : Prop :=
  ∀ n, P881388867747649404.a n = A318540 (n + 1)

end A318540

/-! ## A318540.P7638770220909861463

`lcm(A033999(n), A318545(A167614(n+1)))`
-/

namespace A318540.P7638770220909861463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A318545 (A167614 (n + 1)).toNat)

end

end A318540.P7638770220909861463

namespace A318540

/-- `lcm(A033999(n), A318545(A167614(n+1)))` -/
def P7638770220909861463.Spec : Prop :=
  ∀ n, (P7638770220909861463.a n : ℤ) = A318540 (n + 1)

end A318540

/-! ## A318540.P2627466443052000085

`or(A000007(n), A318545(A167614(n+1)))`
-/

namespace A318540.P2627466443052000085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A318545 (A167614 (n + 1)).toNat)

end

end A318540.P2627466443052000085

namespace A318540

/-- `or(A000007(n), A318545(A167614(n+1)))` -/
def P2627466443052000085.Spec : Prop :=
  ∀ n, P2627466443052000085.a n = A318540 (n + 1)

end A318540

/-!
# A318541: Number of nX4 0..1 arrays with every element unequal to 0, 1, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318541, there is no canonical definition to state claims against.
-/

/-! ## A318541.P14182181968674839378

`A318545(A374004(n+1))`
-/

namespace A318541.P14182181968674839378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318545 (A374004 (n + 1)).toNat

end

end A318541.P14182181968674839378

/-! ## A318541.P5270384777285437542

`A318545(A052905(n)+9)`
-/

namespace A318541.P5270384777285437542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318545 (A052905 n + 9).toNat

end

end A318541.P5270384777285437542

/-! ## A318541.P11609999178876646366

`A318545(A055999(n)+10)`
-/

namespace A318541.P11609999178876646366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318545 (A055999 n + 10).toNat

end

end A318541.P11609999178876646366

/-! ## A318541.P2799551285674781254

`A318545(A167614(n+2)+1)`
-/

namespace A318541.P2799551285674781254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318545 (A167614 (n + 2) + 1).toNat

end

end A318541.P2799551285674781254

/-! ## A318541.P12459760721099531665

`A318545(A000217(n+3)+4)`
-/

namespace A318541.P12459760721099531665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318545 (A000217 (n + 3) + 4).toNat

end

end A318541.P12459760721099531665

/-!
# A318542: Number of n X 5 0..1 arrays with every element unequal to 0, 1, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318542, there is no canonical definition to state claims against.
-/

/-! ## A318542.P3823874028830895440

`A318545(A374005(n+1))`
-/

namespace A318542.P3823874028830895440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318545 (A374005 (n + 1)).toNat

end

end A318542.P3823874028830895440

/-! ## A318542.P6012203950081355800

`A318545(A167499(n+3))`
-/

namespace A318542.P6012203950081355800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318545 (A167499 (n + 3)).toNat

end

end A318542.P6012203950081355800

/-! ## A318542.P6647926888551991293

`A318545(A000124(n+5)-(n+1))`
-/

namespace A318542.P6647926888551991293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318545 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A318542.P6647926888551991293

/-! ## A318542.P7680385141412587946

`A318545(Δ[A023551(n+1)]-2*n)`
-/

namespace A318542.P7680385141412587946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318545 (f1 (n + 1) - f1 n - (2 * n : ℤ)).toNat

end

end A318542.P7680385141412587946

/-! ## A318542.P2300809996585738375

`A318545(Δ[A023545(n+1)])`
-/

namespace A318542.P2300809996585738375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318545 (f1 (n + 1) - f1 n).toNat

end

end A318542.P2300809996585738375

/-!
# A318543: Number of nX6 0..1 arrays with every element unequal to 0, 1, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318543, there is no canonical definition to state claims against.
-/

/-! ## A318543.P11169301964923163619

`A318545(A374007(n+1))`
-/

namespace A318543.P11169301964923163619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318545 (A374007 (n + 1)).toNat

end

end A318543.P11169301964923163619

/-! ## A318543.P5338381928015483891

`A318545(A000124(n+5)+5)`
-/

namespace A318543.P5338381928015483891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318545 (A000124 (n + 5) + 5).toNat

end

end A318543.P5338381928015483891

/-! ## A318543.P16014977818437795274

`A318545(A000217(n+5)+6)`
-/

namespace A318543.P16014977818437795274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318545 (A000217 (n + 5) + 6).toNat

end

end A318543.P16014977818437795274

/-! ## A318543.P17379630412017248943

`A318545(A034856(n+4)+8)`
-/

namespace A318543.P17379630412017248943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318545 (A034856 (n + 4) + 8).toNat

end

end A318543.P17379630412017248943

/-! ## A318543.P15447828496371276931

`A318545(A055999(n+2)+12)`
-/

namespace A318543.P15447828496371276931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318545 (A055999 (n + 2) + 12).toNat

end

end A318543.P15447828496371276931

/-!
# A318544: Number of nX7 0..1 arrays with every element unequal to 0, 1, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318544, there is no canonical definition to state claims against.
-/

/-! ## A318544.P13892023842445996704

`A318545(A374008(n+1))`
-/

namespace A318544.P13892023842445996704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318545 (A374008 (n + 1)).toNat

end

end A318544.P13892023842445996704

/-! ## A318544.P8776807200831720531

`A318545(A133263(n+6)+5)`
-/

namespace A318544.P8776807200831720531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318545 (A133263 (n + 6) + 5).toNat

end

end A318544.P8776807200831720531

/-! ## A318544.P16490485297875467357

`A318545(A000217(n+6)+7)`
-/

namespace A318544.P16490485297875467357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318545 (A000217 (n + 6) + 7).toNat

end

end A318544.P16490485297875467357

/-! ## A318544.P17006747819305281926

`A318545(A161680(n+7)+7)`
-/

namespace A318544.P17006747819305281926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318545 (A161680 (n + 7) + 7).toNat

end

end A318544.P17006747819305281926

/-! ## A318544.P17102764729597884736

`A318545(A052905(n+3)+12)`
-/

namespace A318544.P17102764729597884736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318545 (A052905 (n + 3) + 12).toNat

end

end A318544.P17102764729597884736

/-!
# A318545: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318545, there is no canonical definition to state claims against.
-/

/-! ## A318545.P17944865828236203241

`A299595(n+1)+A124763(A099594(n))`
-/

namespace A318545.P17944865828236203241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (n + 1) + A124763 (A099594 n).toNat

end

end A318545.P17944865828236203241

/-! ## A318545.P13925307990900420650

`A299595(n+1)+A163510(A157273(n))`
-/

namespace A318545.P13925307990900420650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (n + 1) + A163510 (A157273 n).toNat

end

end A318545.P13925307990900420650

/-! ## A318545.P3176661492073189953

`A299595(n+1)+A037800(A296548(n))`
-/

namespace A318545.P3176661492073189953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (n + 1) + A037800 (A296548 n).toNat

end

end A318545.P3176661492073189953

/-! ## A318545.P2378917866840258270

`A299595(n+1)+A014081(A189111(n+1))`
-/

namespace A318545.P2378917866840258270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (n + 1) + A014081 (A189111 (n + 1)).toNat

end

end A318545.P2378917866840258270

/-! ## A318545.P2060033346294667139

`A299595(n+1)+A007814(A157149(n))`
-/

namespace A318545.P2060033346294667139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299595 (n + 1) + A007814 (A157149 n).toNat

end

end A318545.P2060033346294667139

/-!
# A318546: Number of n X n 0..1 arrays with every element unequal to 1, 2, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318546, there is no canonical definition to state claims against.
-/

/-! ## A318546.P15814495041306805971

`A318552(∑[4*n]+1)`
-/

namespace A318546.P15814495041306805971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318552 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A318546.P15814495041306805971

/-! ## A318546.P4629547496871829298

`∑{digits}[n, A318552(A001844(#))]`
-/

namespace A318546.P4629547496871829298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A318552 (A001844 x).toNat).sum

end

end A318546.P4629547496871829298

/-! ## A318546.P17271221468015200477

`and(-1, A318552(A001844(n)))`
-/

namespace A318546.P17271221468015200477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A318552 (A001844 n).toNat)

end

end A318546.P17271221468015200477

/-! ## A318546.P17480388944752484975

`record[A003982(n)*A318552(n+1)]`
-/

namespace A318546.P17480388944752484975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A318552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318546.P17480388944752484975

/-! ## A318546.P17593422897202302209

`record[A318552(A001844(n-9*floor(n/10)))]`
-/

namespace A318546.P17593422897202302209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318552 (A001844 ((n : ℤ) - 9 * ⌊(n : ℚ) / 10⌋).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318546.P17593422897202302209

/-!
# A318547: Number of nX3 0..1 arrays with every element unequal to 1, 2, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318547, there is no canonical definition to state claims against.
-/

/-! ## A318547.P102176082213866568

`A318552(∑[n+2]+4)`
-/

namespace A318547.P102176082213866568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318552 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A318547.P102176082213866568

/-! ## A318547.P10780695318610428606

`A318552(A167614(n+1))+char[19]`
-/

namespace A318547.P10780695318610428606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318552 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A318547.P10780695318610428606

/-! ## A318547.P4337027163591469469

`gcd(A000038(n), A318552(A167614(n+1)))`
-/

namespace A318547.P4337027163591469469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A318552 (A167614 (n + 1)).toNat)

end

end A318547.P4337027163591469469

/-! ## A318547.P7447366591337952676

`lcm(A033999(n), A318552(A167614(n+1)))`
-/

namespace A318547.P7447366591337952676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A318552 (A167614 (n + 1)).toNat)

end

end A318547.P7447366591337952676

/-! ## A318547.P15899817712630705912

`or(A025442(n), A318552(A167614(n+1)))`
-/

namespace A318547.P15899817712630705912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025442 n) (A318552 (A167614 (n + 1)).toNat)

end

end A318547.P15899817712630705912

/-!
# A318548: Number of nX4 0..1 arrays with every element unequal to 1, 2, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318548, there is no canonical definition to state claims against.
-/

/-! ## A318548.P16440726070747359077

`A318552(∑[n+3]+7)`
-/

namespace A318548.P16440726070747359077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318552 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A318548.P16440726070747359077

/-! ## A318548.P10540632054398345315

`A318552(A141214(n)+7)+char[33]`
-/

namespace A318548.P10540632054398345315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318552 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A318548.P10540632054398345315

/-! ## A318548.P4731025588369180971

`A318552(A167614(n+2)+1)+char[29]`
-/

namespace A318548.P4731025588369180971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318552 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A318548.P4731025588369180971

/-! ## A318548.P15752214816269825001

`A000041(C(2, n+2))*A318552(A141214(n)+7)`
-/

namespace A318548.P15752214816269825001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A318552 (A141214 n + 7).toNat

end

end A318548.P15752214816269825001

/-! ## A318548.P2397361348209192811

`A007318(C(n+5, 2))*A318552(A141214(n)+7)`
-/

namespace A318548.P2397361348209192811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (n + 5) 2) * A318552 (A141214 n + 7).toNat

end

end A318548.P2397361348209192811

/-!
# A318549: Number of nX5 0..1 arrays with every element unequal to 1, 2, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318549, there is no canonical definition to state claims against.
-/

/-! ## A318549.P17138656688271924453

`A318552(A374005(n+1))`
-/

namespace A318549.P17138656688271924453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318552 (A374005 (n + 1)).toNat

end

end A318549.P17138656688271924453

/-! ## A318549.P17681431481218696807

`A318552(A167499(n+3))`
-/

namespace A318549.P17681431481218696807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318552 (A167499 (n + 3)).toNat

end

end A318549.P17681431481218696807

/-! ## A318549.P7256896237987011039

`A318552(A155212(n)+13)`
-/

namespace A318549.P7256896237987011039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318552 (A155212 n + 13).toNat

end

end A318549.P7256896237987011039

/-! ## A318549.P9478213521347491659

`A318552(A056000(n)+15)`
-/

namespace A318549.P9478213521347491659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318552 (A056000 n + 15).toNat

end

end A318549.P9478213521347491659

/-! ## A318549.P7389940535616745214

`A318552(eq[7, A066657(n)])`
-/

namespace A318549.P7389940535616745214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318552 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318549.P7389940535616745214

/-!
# A318550: Number of nX6 0..1 arrays with every element unequal to 1, 2, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318550, there is no canonical definition to state claims against.
-/

/-! ## A318550.P10534194806388566950

`A318552(∑[n+5]+16)`
-/

namespace A318550.P10534194806388566950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318552 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A318550.P10534194806388566950

/-! ## A318550.P3282377172025882316

`A318552(A052905(n+2)+11)+char[17]`
-/

namespace A318550.P3282377172025882316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318552 (A052905 (n + 2) + 11).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A318550.P3282377172025882316

/-! ## A318550.P241692780330706933

`A007318(C(2, n))*A318552(A052905(n+2)+11)`
-/

namespace A318550.P241692780330706933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A318552 (A052905 (n + 2) + 11).toNat

end

end A318550.P241692780330706933

/-! ## A318550.P4645507881277136757

`A000041(C(n, n²))*A318552(A052905(n+2)+11)`
-/

namespace A318550.P4645507881277136757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A318552 (A052905 (n + 2) + 11).toNat

end

end A318550.P4645507881277136757

/-! ## A318550.P9044888413085475441

`A014963(6*(n+1))*A318552(A052905(n+2)+11)`
-/

namespace A318550.P9044888413085475441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A318552 (A052905 (n + 2) + 11).toNat

end

end A318550.P9044888413085475441

/-!
# A318551: Number of nX7 0..1 arrays with every element unequal to 1, 2, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318551, there is no canonical definition to state claims against.
-/

/-! ## A318551.P5412554862472446606

`A318552(A374008(n+1))`
-/

namespace A318551.P5412554862472446606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318552 (A374008 (n + 1)).toNat

end

end A318551.P5412554862472446606

/-! ## A318551.P12025004669243309737

`A318552(A302537(n)+27)`
-/

namespace A318551.P12025004669243309737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318552 (A302537 n + 27).toNat

end

end A318551.P12025004669243309737

/-! ## A318551.P3231285128743110195

`A318552(A056119(n)+28)`
-/

namespace A318551.P3231285128743110195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318552 (A056119 n + 28).toNat

end

end A318551.P3231285128743110195

/-! ## A318551.P17919580112034975145

`A318552(eq[11, A066657(n)])`
-/

namespace A318551.P17919580112034975145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318552 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318551.P17919580112034975145

/-! ## A318551.P12671155310572900975

`A318552(A167499(n+5)+2)`
-/

namespace A318551.P12671155310572900975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318552 (A167499 (n + 5) + 2).toNat

end

end A318551.P12671155310572900975

/-!
# A318552: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318552, there is no canonical definition to state claims against.
-/

/-! ## A318552.P7522566024593224046

`A317863(n+1)+A184159(A099594(n))`
-/

namespace A318552.P7522566024593224046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (n + 1) + A184159 (A099594 n).toNat

end

end A318552.P7522566024593224046

/-! ## A318552.P15293185150074634824

`A317863(n+1)+A163510(A157273(n))`
-/

namespace A318552.P15293185150074634824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (n + 1) + A163510 (A157273 n).toNat

end

end A318552.P15293185150074634824

/-! ## A318552.P9537808660427282274

`A317863(n+1)+A173920(A173917(n))`
-/

namespace A318552.P9537808660427282274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (n + 1) + A173920 (A173917 n).toNat

end

end A318552.P9537808660427282274

/-! ## A318552.P10911936485182576882

`or(A102683(A157273(n)), A318214(n+1))`
-/

namespace A318552.P10911936485182576882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 (A157273 n).toNat) (A318214 (n + 1))

end

end A318552.P10911936485182576882

/-! ## A318552.P17077090310833889288

`A318214(n+1)+A008683(A237234(n+1))`
-/

namespace A318552.P17077090310833889288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318214 (n + 1) + A008683 (A237234 (n + 1)).toNat

end

end A318552.P17077090310833889288

/-!
# A318554: a(n) is the smallest prime number having order of primeness = prime(n).

The programs for A318554, there is no canonical definition to state claims against.
-/

/-! ## A318554.P11924565826632829834

`A007097(p?[comp[n²]])`
-/

namespace A318554.P11924565826632829834
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007097 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A318554.P11924565826632829834

/-! ## A318554.P17448914960209441154

`A007097(record[p?[∏{p}[n+1, #]]])`
-/

namespace A318554.P17448914960209441154
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007097 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A318554.P17448914960209441154

/-! ## A318554.P5524906734355189641

`A007097(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A318554.P5524906734355189641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007097 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A318554.P5524906734355189641

/-! ## A318554.P8172332562978033826

`A007097(Δ[A007504(n)])`
-/

namespace A318554.P8172332562978033826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007097 (f1 (n + 1) - f1 n).toNat

end

end A318554.P8172332562978033826

/-! ## A318554.P12075254686205656432

`A007097(A000040(n+1))`
-/

namespace A318554.P12075254686205656432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007097 (A000040 (n + 1)).toNat

end

end A318554.P12075254686205656432

/-!
# A318555: "Strong impostors" not divisible by 4: Those numbers s !== 0 (mod 4) such that lambda(s) | 2(s-1), where lambda is the Carmichael function (A002322).

The programs for A318555, there is no canonical definition to state claims against.
-/

/-! ## A318555.P10780721636754544622

`∩[A231569(n+1), A324973(n+1)]`
-/

namespace A318555.P10780721636754544622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318555.P10780721636754544622

/-! ## A318555.P2359738212427310592

`A231569(eq[1, ∏{e}[A231569(n+1), #]]+1)`
-/

namespace A318555.P2359738212427310592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231569 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231569 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A318555.P2359738212427310592

/-! ## A318555.P18282107458549987614

`record[A007913(A231569(n+2))]`
-/

namespace A318555.P18282107458549987614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A231569 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318555.P18282107458549987614

/-! ## A318555.P10287784183830147755

`filter[A231569(n+1), A008966(#)]`
-/

namespace A318555.P10287784183830147755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A318555.P10287784183830147755

/-! ## A318555.P7866215364785995631

`filter[A231569(n+1), A354353(#)]`
-/

namespace A318555.P7866215364785995631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A318555.P7866215364785995631

/-! ## A318555.P9118791508738491857

`filter[A231569(n+1), A354819(#)]`
-/

namespace A318555.P9118791508738491857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A318555.P9118791508738491857

/-! ## A318555.P6376868662421206829

`filter[A231569(n+1), A359550(#)]`
-/

namespace A318555.P6376868662421206829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A318555.P6376868662421206829

/-! ## A318555.P14344163886911579925

`filter[A231569(n+1), A371087(#)]`
-/

namespace A318555.P14344163886911579925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A318555.P14344163886911579925

/-!
# A318556: a(n) is the number of lesser tetrahedral numbers that divide the n-th tetrahedral number.

The programs for A318556, there is no canonical definition to state claims against.
-/

/-! ## A318556.P13496978624889582754

`A279495(C(n+3, 3))-1`
-/

namespace A318556.P13496978624889582754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279495 (Nat.choose (n + 3) 3) - 1

end

end A318556.P13496978624889582754

/-! ## A318556.P1420725933362004832

`A279495(∑[∑[n+1]])-1`
-/

namespace A318556.P1420725933362004832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279495 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A318556.P1420725933362004832

/-! ## A318556.P6358458684585118858

`A000401(A279495(∑[∑[n+1]]))`
-/

namespace A318556.P6358458684585118858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A279495 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A318556.P6358458684585118858

/-! ## A318556.P185928651504294758

`abs(1-A279495(A000292(n+1)))`
-/

namespace A318556.P185928651504294758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A279495 (A000292 (n + 1)).toNat|

end

end A318556.P185928651504294758

/-! ## A318556.P4238588622680831214

`A289207(A279495(∑[∑[n+1]])+1)`
-/

namespace A318556.P4238588622680831214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A279495 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A318556.P4238588622680831214

/-! ## A318556.P8254766751426094306

`(A279495(∑[∑[n+1]])+n)%A000027(n+1)`
-/

namespace A318556.P8254766751426094306
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279495 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)) (A000027 (n + 1))

end

end A318556.P8254766751426094306

/-! ## A318556.P1920838760142411462

`A023443(A279495(∑[∑[n+1]])%(2*(n+1)²))`
-/

namespace A318556.P1920838760142411462
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (Int.tmod (A279495 (∑ j ∈ Finset.range (n + 1), f1 j)) (2 * (n + 1) ^ 2 : ℤ)).toNat

end

end A318556.P1920838760142411462

/-!
# A318557: Number A(n,k) of n-member subsets of [k*n] whose elements sum to a multiple of k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A318557, there is no canonical definition to state claims against.
-/

/-! ## A318557.P2968870346886601919

`∑{d}[A242095(n), A120221(#)]`
-/

namespace A318557.P2968870346886601919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A120221 d

end

end A318557.P2968870346886601919

/-! ## A318557.P2124649612076576775

`A183134(n)-A044941(A008958(n))`
-/

namespace A318557.P2124649612076576775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 n - A044941 (A008958 n).toNat

end

end A318557.P2124649612076576775

/-! ## A318557.P12826941290997491460

`A183134(n)-A186745(A291883(n))`
-/

namespace A318557.P12826941290997491460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 n - A186745 (A291883 n).toNat

end

end A318557.P12826941290997491460

/-! ## A318557.P1656203223089937918

`and(A183134(n), A327241(A174690(n)))`
-/

namespace A318557.P1656203223089937918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A183134 n) (A327241 (A174690 n).toNat)

end

end A318557.P1656203223089937918

/-! ## A318557.P12459687619953603924

`A147981(A343095(n))`
-/

namespace A318557.P12459687619953603924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147981 (A343095 n).toNat

end

end A318557.P12459687619953603924

/-!
# A318558: Number of degrees of irreducible representations of symmetric group S_n that appear more than once.

The programs for A318558, there is no canonical definition to state claims against.
-/

/-! ## A318558.P3527886871511033949

`A121902(∑[∑[A038202(n+4)]])`
-/

namespace A318558.P3527886871511033949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038202 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A318558.P3527886871511033949

/-! ## A318558.P3634933140395132042

`floor(A112471(3*(n+1))/A228104(n+1))`
-/

namespace A318558.P3634933140395132042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112471 (3 * (n + 1)) : ℚ) / (A228104 (n + 1) : ℚ)⌋

end

end A318558.P3634933140395132042

/-! ## A318558.P16051960151762363359

`A273190(A135491(n)*A352228(n+1))`
-/

namespace A318558.P16051960151762363359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A135491 n * A352228 (n + 1)).toNat

end

end A318558.P16051960151762363359

/-!
# A318559: Number of combinatory separations of the multiset of prime factors of n.

The programs for A318559, there is no canonical definition to state claims against.
-/

/-! ## A318559.P9219448232195470992

`A318560(A181819(n+1))`
-/

namespace A318559.P9219448232195470992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318560 (A181819 (n + 1)).toNat

end

end A318559.P9219448232195470992

/-! ## A318559.P17012812713656078248

`floor((A326334(n+1)+A316978(n+1)+1)/2)`
-/

namespace A318559.P17012812713656078248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A326334 (n + 1) + A316978 (n + 1) + 1 : ℚ) / 2⌋

end

end A318559.P17012812713656078248

/-! ## A318559.P14508662078422541706

`A334030(∑{p}[A329607(n+1), A248663(#)])`
-/

namespace A318559.P14508662078422541706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334030 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A248663 p).toNat

end

end A318559.P14508662078422541706

/-! ## A318559.P3776058652890757416

`A065033(A326334(n+1)+A316978(n+1))`
-/

namespace A318559.P3776058652890757416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A326334 (n + 1) + A316978 (n + 1)).toNat

end

end A318559.P3776058652890757416

/-! ## A318559.P7988364690983099656

`A110654(A326334(n+1)+A316978(n+1))`
-/

namespace A318559.P7988364690983099656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A326334 (n + 1) + A316978 (n + 1)).toNat

end

end A318559.P7988364690983099656

/-! ## A318559.P18197455298690015842

`A001055(n+1)-A049982(A050320(n+1))`
-/

namespace A318559.P18197455298690015842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A049982 (A050320 (n + 1)).toNat

end

end A318559.P18197455298690015842

/-! ## A318559.P5458468720783196945

`A001055(n+1)-A028422(A334933(n+1))`
-/

namespace A318559.P5458468720783196945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A028422 (A334933 (n + 1)).toNat

end

end A318559.P5458468720783196945

/-! ## A318559.P9901432063350683671

`A028422(n+1)+1-A028422(A334933(n+1))`
-/

namespace A318559.P9901432063350683671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1) + (1 - A028422 (A334933 (n + 1)).toNat)

end

end A318559.P9901432063350683671

/-! ## A318559.P11503290585702547282

`A001055(n+1)+A001055(A034444(n+1))-A050320(n+1)`
-/

namespace A318559.P11503290585702547282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) + (A001055 (A034444 (n + 1)).toNat - A050320 (n + 1))

end

end A318559.P11503290585702547282

/-! ## A318559.P6065558072956433678

`A334030(A334032(n+1))`
-/

namespace A318559.P6065558072956433678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334030 (A334032 (n + 1)).toNat

end

end A318559.P6065558072956433678

/-!
# A318560: Number of combinatory separations of a multiset whose multiplicities are the prime indices of n in weakly decreasing order.

The programs for A318560, there is no canonical definition to state claims against.
-/

/-! ## A318560.P8883548768524387361

`A334030(A233249(n+1))`
-/

namespace A318560.P8883548768524387361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334030 (A233249 (n + 1)).toNat

end

end A318560.P8883548768524387361

/-! ## A318560.P10950729308845936915

`A334030(A333220(n+1))`
-/

namespace A318560.P10950729308845936915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334030 (A333220 (n + 1)).toNat

end

end A318560.P10950729308845936915

/-! ## A318560.P2208259030461600444

`A318559(A181821(n+1))`
-/

namespace A318560.P2208259030461600444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318559 (A181821 (n + 1)).toNat

end

end A318560.P2208259030461600444

/-! ## A318560.P1614529487185821205

`A318284(n+1)-A071461(A163808(2*n+3))`
-/

namespace A318560.P1614529487185821205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (n + 1) - A071461 (A163808 (2 * n + 3)).toNat

end

end A318560.P1614529487185821205

/-! ## A318560.P3010340054115524728

`A000174(eq[A239627(n+1), A338573(n+1)])`
-/

namespace A318560.P3010340054115524728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A318560.P3010340054115524728

/-!
# A318562: Number of combinatory separations of strongly normal multisets of weight n with strongly normal parts.

The programs for A318562, there is no canonical definition to state claims against.
-/

/-! ## A318562.P8792102491488335140

`∑[A051162(A029893(n+1)²)]`
-/

namespace A318562.P8792102491488335140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A029893 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318562.P8792102491488335140

/-! ## A318562.P692848855555230742

`A066328(A192332(n+1))+A054447(n)`
-/

namespace A318562.P692848855555230742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A192332 (n + 1)).toNat + A054447 n

end

end A318562.P692848855555230742

/-!
# A318563: Number of combinatory separations of strongly normal multisets of weight n.

The programs for A318563, there is no canonical definition to state claims against.
-/

/-! ## A318563.P13747246814477172501

`∑[A018430(2*n+1)-A339809(n)]`
-/

namespace A318563.P13747246814477172501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018430 (2 * n + 1) - A339809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318563.P13747246814477172501

/-! ## A318563.P12462629864672039068

`A366853(A250120(n)+A085489(n))`
-/

namespace A318563.P12462629864672039068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366853 (A250120 n + A085489 n).toNat

end

end A318563.P12462629864672039068

/-!
# A318564: Number of multiset partitions of multiset partitions of normal multisets of size n.

The programs for A318564, there is no canonical definition to state claims against.
-/

/-! ## A318564.P8603283278474671900

`A120736(A077398(n)+A052664(n))`
-/

namespace A318564.P8603283278474671900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120736 (A077398 n + A052664 n).toNat

end

end A318564.P8603283278474671900

/-!
# A318565: Number of multiset partitions of multiset partitions of strongly normal multisets of size n.

The programs for A318565, there is no canonical definition to state claims against.
-/

/-! ## A318565.P318122266420436250

`A057360(A241394(n+1)-∑{d}[n+1, C(#, 2)+#²])`
-/

namespace A318565.P318122266420436250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (A241394 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), (Nat.choose d 2 + d ^ 2) : ℕ) : ℤ)).toNat

end

end A318565.P318122266420436250

/-!
# A318566: Number of non-isomorphic multiset partitions of multiset partitions of multisets of size n.

The programs for A318566, there is no canonical definition to state claims against.
-/

/-! ## A318566.P14212306810118055844

`A306186(∑[n+2]+4)`
-/

namespace A318566.P14212306810118055844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306186 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A318566.P14212306810118055844

/-! ## A318566.P9539861458101659758

`record[gcd(A238125(n), A306186(n+4))]`
-/

namespace A318566.P9539861458101659758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A238125 n) (A306186 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318566.P9539861458101659758

/-! ## A318566.P11092147966549605325

`A306186(A167614(n+1))+A025465(n)`
-/

namespace A318566.P11092147966549605325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306186 (A167614 (n + 1)).toNat + A025465 n

end

end A318566.P11092147966549605325

/-! ## A318566.P8833406629279854257

`A306186(A167614(n+1))+A056965(n)`
-/

namespace A318566.P8833406629279854257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306186 (A167614 (n + 1)).toNat + A056965 n

end

end A318566.P8833406629279854257

/-!
# A318567: Number of pairs (c, y) where c is an integer composition and y is an integer partition and y can be obtained from c by choosing a partition of each part, flattening, and sorting.

The programs for A318567, there is no canonical definition to state claims against.
-/

/-! ## A318567.P16716418521953294052

`Δ[A001906(A032563(n+1))]-A005773(n+1)`
-/

namespace A318567.P16716418521953294052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (A032563 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005773 (n + 1)

end

end A318567.P16716418521953294052

/-! ## A318567.P4763366985008560217

`A245473(A132310(n))`
-/

namespace A318567.P4763366985008560217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245473 (A132310 n).toNat

end

end A318567.P4763366985008560217

/-! ## A318567.P5621669864010370202

`A245473(A216271(n))`
-/

namespace A318567.P5621669864010370202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245473 (A216271 n).toNat

end

end A318567.P5621669864010370202

/-!
# A318568: Primes p such that 2^p reversed is a prime.

The programs for A318568, there is no canonical definition to state claims against.
-/

/-! ## A318568.P10654558332651931628

`p?[A057708(n+1)]`
-/

namespace A318568.P10654558332651931628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A318568.P10654558332651931628

/-! ## A318568.P10620301330557506100

`A057708(A244607(n+1))`
-/

namespace A318568.P10620301330557506100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057708 (A244607 (n + 1)).toNat

end

end A318568.P10620301330557506100

/-! ## A318568.P18083964240100347021

`record[A006530(A057708(n+3))]`
-/

namespace A318568.P18083964240100347021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A057708 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318568.P18083964240100347021

/-!
# A318569: a(n) is the smallest positive integer such that n*a(n) is a "binary antipalindrome" (i.e., an element of A035928).

The programs for A318569, there is no canonical definition to state claims against.
-/

/-! ## A318569.P8662986360061044236

`A342582(n+1)/(n+1)`
-/

namespace A318569.P8662986360061044236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342582 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A318569.P8662986360061044236

/-!
# A318570: Expansion of Product_{k>=1} ((1 - x)^k + x^k)/((1 - x)^k - x^k).

The programs for A318570, there is no canonical definition to state claims against.
-/

/-! ## A318570.P17868831637164005581

`A028310(ceil((n+8)*3^(n-2)))-(3^n+3)*n/6`
-/

namespace A318570.P17868831637164005581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 ⌈(n + 8 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉.toNat : ℚ) - (3 ^ n + 3 : ℚ) * ((n : ℚ) / 6)

end

end A318570.P17868831637164005581

/-! ## A318570.P8311504156827880585

`A222253(ceil((n+8)*3^(n-2)))-(3^n+3)*n/6`
-/

namespace A318570.P8311504156827880585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222253 ⌈(n + 8 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉.toNat : ℚ) - (3 ^ n + 3 : ℚ) * ((n : ℚ) / 6)

end

end A318570.P8311504156827880585

/-! ## A318570.P10956640153924683162

`A110656(A024309(2*(n+1))+n)`
-/

namespace A318570.P10956640153924683162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A024309 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A318570.P10956640153924683162

/-! ## A318570.P15988543428350417659

`A209820(lt[A210863(n+1), n+1])`
-/

namespace A318570.P15988543428350417659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210863 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209820 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A318570.P15988543428350417659

/-!
# A318571: a(n) = ceiling(log(2)/(log(1+n/100))).

The programs for A318571, the canonical program `A318571.P8400798338971323688` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318571 has offset 1).

The definition of A318571 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(log(2)/log(1+(n+1)/100))` (program `A318571.P8400798338971323688`, by `A318571.P8400798338971323688.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A318571.P8400798338971323688

`ceil(log(2)/log(1+(n+1)/100))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A318571

/-- `ceil(log(2)/log(1+(n+1)/100))` -/
def P8400798338971323688.Spec : Prop :=
  ∀ n, P8400798338971323688.a n = A318571 (n + 1)

theorem P8400798338971323688.correct : P8400798338971323688.Spec := by
  intro n
  simp only [A318571, Nat.add_sub_cancel]

end A318571

/-!
# A318572: Squarefree numbers A005117(k) whose largest prime factor is not A318411(k).

The programs for A318572, there is no canonical definition to state claims against.
-/

/-! ## A318572.P2023010028308779639

`record[A146077(A146290(3*n+5))]`
-/

namespace A318572.P2023010028308779639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146077 (A146290 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318572.P2023010028308779639

/-!
# A318573: Numerator of the reciprocal sum of the integer partition with Heinz number n.

The programs for A318573, there is no canonical definition to state claims against.
-/

/-! ## A318573.P2458402749733047537

`A379141(A181821(n+1))`
-/

namespace A318573.P2458402749733047537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379141 (A181821 (n + 1)).toNat

end

end A318573.P2458402749733047537

/-! ## A318573.P17944265237723423009

`A379141(A304660(n+1))`
-/

namespace A318573.P17944265237723423009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379141 (A304660 (n + 1)).toNat

end

end A318573.P17944265237723423009

/-! ## A318573.P2575572851115847838

`A214949(A087712(n+1)%A331711(n))`
-/

namespace A318573.P2575572851115847838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214949 (Int.tmod (A087712 (n + 1)) (A331711 n)).toNat

end

end A318573.P2575572851115847838

/-! ## A318573.P826809197854063039

`gcd(A151755(A023917(n)), A351465(n+1))`
-/

namespace A318573.P826809197854063039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151755 (A023917 n).toNat) (A351465 (n + 1))

end

end A318573.P826809197854063039

/-! ## A318573.P4611453026119398376

`A351465(n+1)-A069849(A318576(n+1))`
-/

namespace A318573.P4611453026119398376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351465 (n + 1) - A069849 (A318576 (n + 1)).toNat

end

end A318573.P4611453026119398376

/-!
# A318574: Denominator of the reciprocal sum of the integer partition with Heinz number n.

The programs for A318574, there is no canonical definition to state claims against.
-/

/-! ## A318574.P11114118607663244662

`A318573(2*(n+1))-A318573(n+1)`
-/

namespace A318574.P11114118607663244662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (2 * (n + 1)) - A318573 (n + 1)

end

end A318574.P11114118607663244662

/-! ## A318574.P4091384808255434285

`A318573(A028310(2*(n+1)))+A001489(A318573(n+1))`
-/

namespace A318574.P4091384808255434285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (A028310 (2 * (n + 1))).toNat + A001489 (A318573 (n + 1)).toNat

end

end A318574.P4091384808255434285

/-! ## A318574.P7195738886574322543

`gcd(A138543(A002034(n+1)), A290103(n+1))`
-/

namespace A318574.P7195738886574322543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138543 (A002034 (n + 1)).toNat) (A290103 (n + 1))

end

end A318574.P7195738886574322543

/-! ## A318574.P12422788687028111949

`A290103(n+1)-A025456(A102480(n))`
-/

namespace A318574.P12422788687028111949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1) - A025456 (A102480 n).toNat

end

end A318574.P12422788687028111949

/-! ## A318574.P10058520528747001940

`gcd(A096493(A011262(n+1)), A316431(2*(n+1)))`
-/

namespace A318574.P10058520528747001940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096493 (A011262 (n + 1)).toNat) (A316431 (2 * (n + 1)))

end

end A318574.P10058520528747001940

/-!
# A318576: Number of solutions to x^n == 1 (mod n!).

The programs for A318576, there is no canonical definition to state claims against.
-/

/-! ## A318576.P6313628712024174600

`gcd(gcd((n+1)^(n+1), (n+3)!), A000010(A083267(n+1)))`
-/

namespace A318576.P6313628712024174600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.gcd ((n + 1) ^ (n + 1)) (Nat.factorial (n + 3)) : ℤ) (A000010 (A083267 (n + 1)).toNat)

end

end A318576.P6313628712024174600

/-! ## A318576.P433930496757566414

`A018804(floor(2^(n-1))^(n%floor(sqrt(n+1))))`
-/

namespace A318576.P433930496757566414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ^ (n % Nat.sqrt (n + 1))).toNat

end

end A318576.P433930496757566414

/-! ## A318576.P8107676776556639503

`A119792(A080211(n+1))`
-/

namespace A318576.P8107676776556639503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119792 (A080211 (n + 1)).toNat

end

end A318576.P8107676776556639503

/-! ## A318576.P1529966721209663252

`and(A211422(n!), A218482(n))`
-/

namespace A318576.P1529966721209663252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211422 (Nat.factorial n)) (A218482 n)

end

end A318576.P1529966721209663252

/-!
# A318577: Number of complete multimin tree-factorizations of n.

The programs for A318577, there is no canonical definition to state claims against.
-/

/-! ## A318577.P11524080343728011312

`A321567(A319002(n+1)%A220502(n))%A000079(n)`
-/

namespace A318577.P11524080343728011312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321567 (Int.tmod (A319002 (n + 1)) (A220502 n)).toNat) (A000079 n)

end

end A318577.P11524080343728011312

/-! ## A318577.P1979318716717330126

`A321567(A319002(n+1))-A007814(A000043(n+1))`
-/

namespace A318577.P1979318716717330126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321567 (A319002 (n + 1)).toNat - A007814 (A000043 (n + 1)).toNat

end

end A318577.P1979318716717330126

/-! ## A318577.P3107752632497947895

`A317176(A285639(n+1))%(n+1)`
-/

namespace A318577.P3107752632497947895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317176 (A285639 (n + 1)).toNat) (n + 1 : ℤ)

end

end A318577.P3107752632497947895

/-! ## A318577.P15022864308938949178

`A061237(A377434(3*(n+1)))%A141810(n+1)`
-/

namespace A318577.P15022864308938949178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061237 (A377434 (3 * (n + 1))).toNat) (A141810 (n + 1))

end

end A318577.P15022864308938949178

/-!
# A318578: Let k be the greatest odd divisor of n and let S be the sequence of positive integers not in the sequence so far in increasing order. Then a(n) = S(k).

The programs for A318578, there is no canonical definition to state claims against.
-/

/-! ## A318578.P12618704094357522199

`A191671(A075301(n)+1)`
-/

namespace A318578.P12618704094357522199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191671 (A075301 n + 1).toNat

end

end A318578.P12618704094357522199

/-! ## A318578.P16585528634513524895

`A191671(A209268(n+1))`
-/

namespace A318578.P16585528634513524895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191671 (A209268 (n + 1)).toNat

end

end A318578.P16585528634513524895

/-! ## A318578.P6581252542370421596

`A119435(n+1)-A355739(A377783(2*n+1))`
-/

namespace A318578.P6581252542370421596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119435 (n + 1) - A355739 (A377783 (2 * n + 1)).toNat

end

end A318578.P6581252542370421596

/-! ## A318578.P14927939295806499365

`A119435(n+1)-A298426(A320876(3*n+1))`
-/

namespace A318578.P14927939295806499365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119435 (n + 1) - A298426 (A320876 (3 * n + 1)).toNat

end

end A318578.P14927939295806499365

/-!
# A318579: Expansion of Product_{i>=1, j>=1} ((1 + x^(i*j))/(1 - x^(i*j)))^(i*j).

The programs for A318579, there is no canonical definition to state claims against.
-/

/-! ## A318579.P12251466768528597268

`∏{e}[11^n, A064932(#)]`
-/

namespace A318579.P12251466768528597268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A064932 (Nat.factorization (f1 n) p)

end

end A318579.P12251466768528597268

/-! ## A318579.P10084564668223615302

`A350944(A328692(n)+A180750(n+1))`
-/

namespace A318579.P10084564668223615302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350944 (A328692 n + A180750 (n + 1)).toNat

end

end A318579.P10084564668223615302

/-!
# A318580: Expansion of e.g.f. exp(-1 + Product_{k>=1} 1/(1 - x^k)^k).

The programs for A318580, there is no canonical definition to state claims against.
-/

/-! ## A318580.P4706555464464122811

`A000265(A293731(n)+A058892(n))`
-/

namespace A318580.P4706555464464122811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A293731 n + A058892 n).toNat

end

end A318580.P4706555464464122811

/-! ## A318580.P12138470669577399768

`A109613(A000217(n)*A120970(n))`
-/

namespace A318580.P12138470669577399768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A000217 n * A120970 n).toNat

end

end A318580.P12138470669577399768

/-!
# A318581: Expansion of 1/(1 + x*Product_{k>=1} 1/(1 - x^k)).

The programs for A318581, there is no canonical definition to state claims against.
-/

/-! ## A318581.P16299103216756585115

`A325678(A126120(n))-A191228(n+1)`
-/

namespace A318581.P16299103216756585115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A126120 n).toNat - A191228 (n + 1)

end

end A318581.P16299103216756585115

/-!
# A318582: Expansion of 1/(1 + x*Product_{k>=1} (1 + x^k)).

The programs for A318582, there is no canonical definition to state claims against.
-/

/-! ## A318582.P5596330995967334669

`A056594(A100683(n)+A046737(n+1))`
-/

namespace A318582.P5596330995967334669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A100683 n + A046737 (n + 1)).toNat

end

end A318582.P5596330995967334669

/-! ## A318582.P16509347294746867748

`A131729(A018804(n+1)*A268448(n+1))`
-/

namespace A318582.P16509347294746867748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131729 (A018804 (n + 1) * A268448 (n + 1)).toNat

end

end A318582.P16509347294746867748

/-! ## A318582.P8333304216643223044

`A008683(A289814(2*n+1)+A125686(n+1))`
-/

namespace A318582.P8333304216643223044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A289814 (2 * n + 1) + A125686 (n + 1)).toNat

end

end A318582.P8333304216643223044

/-! ## A318582.P12067991367755460505

`A003842(A014681(A223815(n+1)))-A003842(n)`
-/

namespace A318582.P12067991367755460505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (A014681 (A223815 (n + 1)).toNat).toNat - A003842 n

end

end A318582.P12067991367755460505

/-! ## A318582.P15616666017493128285

`A238468(3*A203567(n+2))`
-/

namespace A318582.P15616666017493128285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238468 (3 * A203567 (n + 2)).toNat

end

end A318582.P15616666017493128285

/-!
# A318584: Number of integer partitions of n whose sum of reciprocals squared is 1.

The programs for A318584, there is no canonical definition to state claims against.
-/

/-! ## A318584.P2487994427042856163

`val(A352336(6*n+9), A003961(A278224(2*n+5)))`
-/

namespace A318584.P2487994427042856163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A352336 (6 * n + 9)).toNat (A003961 (A278224 (2 * n + 5)).toNat).toNat

end

end A318584.P2487994427042856163

/-! ## A318584.P15390925050363294757

`val(A006991(A318430(n+5)), 5)`
-/

namespace A318584.P15390925050363294757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006991 (A318430 (n + 5)).toNat).toNat 5

end

end A318584.P15390925050363294757

/-! ## A318584.P16447310191121798745

`A060990(A059867(3*n+5)+4)`
-/

namespace A318584.P16447310191121798745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (A059867 (3 * n + 5) + 4).toNat

end

end A318584.P16447310191121798745

/-! ## A318584.P13490397566786896032

`A001221(A057521(A299852(n+5)+5))`
-/

namespace A318584.P13490397566786896032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A057521 (A299852 (n + 5) + 5).toNat).toNat

end

end A318584.P13490397566786896032

/-! ## A318584.P5144263022471228495

`A072612(gcd(A072623(n+1), A112956(n+1)))`
-/

namespace A318584.P5144263022471228495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072612 (Int.gcd (A072623 (n + 1)) (A112956 (n + 1)))

end

end A318584.P5144263022471228495

/-!
# A318586: Number of integer partitions of n whose sum of reciprocals squared is the reciprocal of an integer.

The programs for A318586, there is no canonical definition to state claims against.
-/

/-! ## A318586.P15818916091090600011

`A008619(A174825(n+1)%A000010(n+2))`
-/

namespace A318586.P15818916091090600011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A174825 (n + 1)) (A000010 (n + 2))).toNat

end

end A318586.P15818916091090600011

/-! ## A318586.P13617447490979538223

`A333805(A053755(C(n, 2))+3)`
-/

namespace A318586.P13617447490979538223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333805 (A053755 (Nat.choose n 2) + 3).toNat

end

end A318586.P13617447490979538223

/-! ## A318586.P6620376711216358865

`A218775(5*A365875(3*n+5))`
-/

namespace A318586.P6620376711216358865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218775 (5 * A365875 (3 * n + 5)).toNat

end

end A318586.P6620376711216358865

/-! ## A318586.P13594263723203038610

`A001222(or(4*n+3, A208301(n+1)))`
-/

namespace A318586.P13594263723203038610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (4 * n + 3 : ℤ) (A208301 (n + 1))).toNat

end

end A318586.P13594263723203038610

/-! ## A318586.P14507776911590996007

`A072491(A088388(n+1)+A072512(n+1))`
-/

namespace A318586.P14507776911590996007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A088388 (n + 1) + A072512 (n + 1)).toNat

end

end A318586.P14507776911590996007

/-!
# A318588: Heinz numbers of integer partitions whose sum of reciprocals squared is an integer.

The programs for A318588, there is no canonical definition to state claims against.
-/

/-! ## A318588.P4545899500140503195

`filter[A115793(n+2), A065333(#)]`
-/

namespace A318588.P4545899500140503195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115793 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065333 (f1 j).toNat = 1) n)

end

end A318588.P4545899500140503195

/-! ## A318588.P9366964299990107501

`∩[A092232(n+1), A217833(n)]`
-/

namespace A318588.P9366964299990107501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217833 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318588.P9366964299990107501

/-! ## A318588.P769214126630549447

`filter[A092232(n+1), A010060(#)]`
-/

namespace A318588.P769214126630549447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A318588.P769214126630549447

/-! ## A318588.P785796751208219957

`∩[A092232(n+1), A251642(n+1)]`
-/

namespace A318588.P785796751208219957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318588.P785796751208219957

/-! ## A318588.P7924773081342983926

`record[A052126(A232711(n+1))]`
-/

namespace A318588.P7924773081342983926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A232711 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318588.P7924773081342983926

/-!
# A318589: Heinz numbers of integer partitions whose sum of reciprocals squared is the reciprocal of an integer.

The programs for A318589, there is no canonical definition to state claims against.
-/

/-! ## A318589.P2461424737983282996

`record[A008475(A326149(n+1))]`
-/

namespace A318589.P2461424737983282996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A326149 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318589.P2461424737983282996

/-! ## A318589.P11360974880360165994

`filter[A326149(n+1), A010055(#)]`
-/

namespace A318589.P11360974880360165994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A318589.P11360974880360165994

/-! ## A318589.P14115294042029613927

`filter[A326149(n+1), A069513(#)]`
-/

namespace A318589.P14115294042029613927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A318589.P14115294042029613927

/-! ## A318589.P14486712038124213870

`filter[A326149(n+1), A211487(#)]`
-/

namespace A318589.P14486712038124213870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A318589.P14486712038124213870

/-! ## A318589.P4341411994536612633

`filter[A326149(n+1), A324290(#)]`
-/

namespace A318589.P4341411994536612633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A318589.P4341411994536612633

/-! ## A318589.P193885367642715889

`filter[A326149(n+1), A345064(#)]`
-/

namespace A318589.P193885367642715889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A318589.P193885367642715889

/-! ## A318589.P12223591823619142691

`filter[A326149(n+1), A354923(#)]`
-/

namespace A318589.P12223591823619142691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A318589.P12223591823619142691

/-! ## A318589.P1194548806346652593

`filter[A326149(n+1), A354924(#)]`
-/

namespace A318589.P1194548806346652593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A318589.P1194548806346652593

/-! ## A318589.P15709968390949955776

`record[A049077(2*A326149(n+1))]`
-/

namespace A318589.P15709968390949955776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (2 * A326149 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318589.P15709968390949955776

/-! ## A318589.P1166690704955509998

`∩[A000961(n+1), A326149(n+1)]`
-/

namespace A318589.P1166690704955509998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318589.P1166690704955509998

/-!
# A318590: Number of connected balanced simple signed graphs on n unlabeled nodes.

The programs for A318590, there is no canonical definition to state claims against.
-/

/-! ## A318590.P2836155436450753110

`A118868(A000496(n))`
-/

namespace A318590.P2836155436450753110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118868 (A000496 n).toNat

end

end A318590.P2836155436450753110

/-! ## A318590.P2973860720395893451

`A091529(A200675(n²))`
-/

namespace A318590.P2973860720395893451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091529 (A200675 (n ^ 2)).toNat

end

end A318590.P2973860720395893451

/-!
# A318591: Number of n-member subsets of [3*n] whose elements sum to a multiple of three.

The programs for A318591, there is no canonical definition to state claims against.
-/

/-! ## A318591.P13137509439774220817

`A318557(∑[n+3]+n+3)`
-/

namespace A318591.P13137509439774220817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A318591.P13137509439774220817

/-! ## A318591.P7094190301089279601

`A318557(A000217(n+4)-4)%(7^(n+1))`
-/

namespace A318591.P7094190301089279601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318557 (A000217 (n + 4) - 4).toNat) (7 ^ (n + 1) : ℤ)

end

end A318591.P7094190301089279601

/-! ## A318591.P9472517986492536214

`A318557(A000217(n+4)-4)+A017365(n)²%2`
-/

namespace A318591.P9472517986492536214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A000217 (n + 4) - 4).toNat + Int.tmod (A017365 n ^ 2) 2

end

end A318591.P9472517986492536214

/-! ## A318591.P3444648826429207315

`A318557(A000217(n+4)-4)+A209736(n+1)%2`
-/

namespace A318591.P3444648826429207315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A000217 (n + 4) - 4).toNat + Int.tmod (A209736 (n + 1)) 2

end

end A318591.P3444648826429207315

/-! ## A318591.P18337003873576477572

`A297002(n+1)%2*A318557(A000217(n+4)-4)`
-/

namespace A318591.P18337003873576477572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297002 (n + 1)) 2 * A318557 (A000217 (n + 4) - 4).toNat

end

end A318591.P18337003873576477572

/-! ## A318591.P16453189280168714187

`A088347(A088347(n))*A318557(A000217(n+4)-4)`
-/

namespace A318591.P16453189280168714187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088347 (A088347 n).toNat * A318557 (A000217 (n + 4) - 4).toNat

end

end A318591.P16453189280168714187

/-!
# A318592: Number of n-member subsets of [4*n] whose elements sum to a multiple of four.

The programs for A318592, there is no canonical definition to state claims against.
-/

/-! ## A318592.P8635496372722351186

`A318557(A052905(n+2))`
-/

namespace A318592.P8635496372722351186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A052905 (n + 2)).toNat

end

end A318592.P8635496372722351186

/-! ## A318592.P5467386509954447103

`A318557(eq[3, A212551(n)])`
-/

namespace A318592.P5467386509954447103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318592.P5467386509954447103

/-! ## A318592.P8807315353388239762

`A318557(eq[4, A025581(n)])`
-/

namespace A318592.P8807315353388239762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318592.P8807315353388239762

/-! ## A318592.P4592776865022556748

`A318557(A046691(n+3)-1)`
-/

namespace A318592.P4592776865022556748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A046691 (n + 3) - 1).toNat

end

end A318592.P4592776865022556748

/-! ## A318592.P625332826573854867

`A318557(A055998(n+3)-2)`
-/

namespace A318592.P625332826573854867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A055998 (n + 3) - 2).toNat

end

end A318592.P625332826573854867

/-! ## A318592.P13021006947590882591

`A318557(A000124(n+5)-6)`
-/

namespace A318592.P13021006947590882591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A000124 (n + 5) - 6).toNat

end

end A318592.P13021006947590882591

/-! ## A318592.P16543161522792251041

`A318557(A034856(n+3)+n+2)`
-/

namespace A318592.P16543161522792251041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A034856 (n + 3) + (n + 2 : ℤ)).toNat

end

end A318592.P16543161522792251041

/-! ## A318592.P15933854048168487819

`A318557(A167499(n)+4*(n+1))`
-/

namespace A318592.P15933854048168487819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A167499 n + (4 * (n + 1) : ℤ)).toNat

end

end A318592.P15933854048168487819

/-! ## A318592.P158467523975554226

`A318557(2*n+A000124(n+3)+3)`
-/

namespace A318592.P158467523975554226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 ((2 * n : ℤ) + (A000124 (n + 3) + 3)).toNat

end

end A318592.P158467523975554226

/-!
# A318593: Number of n-member subsets of [5*n] whose elements sum to a multiple of five.

The programs for A318593, there is no canonical definition to state claims against.
-/

/-! ## A318593.P6215646300144797534

`A318557(A055999(n+3))`
-/

namespace A318593.P6215646300144797534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A055999 (n + 3)).toNat

end

end A318593.P6215646300144797534

/-! ## A318593.P17653781566582279105

`A318557(eq[4, A212551(n)])`
-/

namespace A318593.P17653781566582279105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318593.P17653781566582279105

/-! ## A318593.P17012564716708243409

`A318557(eq[6, A193739(n)])`
-/

namespace A318593.P17012564716708243409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318593.P17012564716708243409

/-! ## A318593.P7087099989413794930

`A318557(Δ[A026054(n+3)])`
-/

namespace A318593.P7087099989413794930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (f1 (n + 1) - f1 n).toNat

end

end A318593.P7087099989413794930

/-! ## A318593.P13002660324994002962

`A318557(A052905(n+3)-1)`
-/

namespace A318593.P13002660324994002962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A052905 (n + 3) - 1).toNat

end

end A318593.P13002660324994002962

/-! ## A318593.P16937314119217009942

`A318557(A000217(n+6)-6)`
-/

namespace A318593.P16937314119217009942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A000217 (n + 6) - 6).toNat

end

end A318593.P16937314119217009942

/-! ## A318593.P16814445594133062298

`A318557(A000124(n+6)-7)`
-/

namespace A318593.P16814445594133062298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A000124 (n + 6) - 7).toNat

end

end A318593.P16814445594133062298

/-! ## A318593.P171659706348714038

`A318557(A167499(n+3)+2*n)`
-/

namespace A318593.P171659706348714038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A167499 (n + 3) + (2 * n : ℤ)).toNat

end

end A318593.P171659706348714038

/-! ## A318593.P17405129091407329345

`A318557(2*n+A056000(n)+15)`
-/

namespace A318593.P17405129091407329345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 ((2 * n : ℤ) + (A056000 n + 15)).toNat

end

end A318593.P17405129091407329345

/-!
# A318594: Number of n-member subsets of [6*n] whose elements sum to a multiple of six.

The programs for A318594, there is no canonical definition to state claims against.
-/

/-! ## A318594.P3546579723167025547

`A318557(eq[6, A025581(n)])`
-/

namespace A318594.P3546579723167025547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318594.P3546579723167025547

/-! ## A318594.P14391367695629879265

`A318557(A055999(n+4)-1)`
-/

namespace A318594.P14391367695629879265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A055999 (n + 4) - 1).toNat

end

end A318594.P14391367695629879265

/-! ## A318594.P12701520152229058188

`A318557(A000217(n+7)-7)`
-/

namespace A318594.P12701520152229058188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A000217 (n + 7) - 7).toNat

end

end A318594.P12701520152229058188

/-! ## A318594.P15452272687587350522

`A318557(eq[7, A004736(n+1)])`
-/

namespace A318594.P15452272687587350522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318594.P15452272687587350522

/-! ## A318594.P1133721407121880943

`A318557(Δ[A026054(n+4)]-1)`
-/

namespace A318594.P1133721407121880943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (f1 (n + 1) - f1 n - 1).toNat

end

end A318594.P1133721407121880943

/-! ## A318594.P8998353725953156438

`A318557(2*n+A056115(n)+21)`
-/

namespace A318594.P8998353725953156438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 ((2 * n : ℤ) + (A056115 n + 21)).toNat

end

end A318594.P8998353725953156438

/-! ## A318594.P16578198224638716115

`A318557((n+5)²-A000124(n+2))`
-/

namespace A318594.P16578198224638716115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (((n + 5) ^ 2 : ℤ) - A000124 (n + 2)).toNat

end

end A318594.P16578198224638716115

/-! ## A318594.P17626494419562593416

`A318557(A052905(n+2)+A004273(n+6))`
-/

namespace A318594.P17626494419562593416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A052905 (n + 2) + A004273 (n + 6)).toNat

end

end A318594.P17626494419562593416

/-!
# A318595: Number of n-member subsets of [7*n] whose elements sum to a multiple of seven.

The programs for A318595, there is no canonical definition to state claims against.
-/

/-! ## A318595.P946170965762212759

`A318557(A155212(n+4))`
-/

namespace A318595.P946170965762212759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A155212 (n + 4)).toNat

end

end A318595.P946170965762212759

/-! ## A318595.P9900579506529136322

`A318557(A027379(n+6)-5)`
-/

namespace A318595.P9900579506529136322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A027379 (n + 6) - 5).toNat

end

end A318595.P9900579506529136322

/-! ## A318595.P2355036081451876791

`A318557(A253145(n+7)-8)`
-/

namespace A318595.P2355036081451876791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A253145 (n + 7) - 8).toNat

end

end A318595.P2355036081451876791

/-! ## A318595.P1353249696636332226

`A318557(A000217(n+8)-8)`
-/

namespace A318595.P1353249696636332226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A000217 (n + 8) - 8).toNat

end

end A318595.P1353249696636332226

/-! ## A318595.P11444933104567424271

`A318557(A052905(n+6)-(n+12))`
-/

namespace A318595.P11444933104567424271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A052905 (n + 6) - (n + 12 : ℤ)).toNat

end

end A318595.P11444933104567424271

/-! ## A318595.P3992608537084435994

`A318557(2*n+A052905(n+3)+12)`
-/

namespace A318595.P3992608537084435994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 ((2 * n : ℤ) + (A052905 (n + 3) + 12)).toNat

end

end A318595.P3992608537084435994

/-!
# A318596: Number of n-member subsets of [8*n] whose elements sum to a multiple of eight.

The programs for A318596, there is no canonical definition to state claims against.
-/

/-! ## A318596.P6776372046475334269

`A318557(eq[8, A025581(n)])`
-/

namespace A318596.P6776372046475334269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318596.P6776372046475334269

/-! ## A318596.P7633759998263074432

`A318557(eq[9, A193739(n)])`
-/

namespace A318596.P7633759998263074432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318596.P7633759998263074432

/-! ## A318596.P4134644538970835371

`A318557(eq[9, A195663(n)])`
-/

namespace A318596.P4134644538970835371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318596.P4134644538970835371

/-! ## A318596.P6820422005802572645

`A318557(eq[17, A099375(n)])`
-/

namespace A318596.P6820422005802572645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318596.P6820422005802572645

/-! ## A318596.P5213050878014868151

`A318557(eq[9, A004736(n+1)])`
-/

namespace A318596.P5213050878014868151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318596.P5213050878014868151

/-!
# A318597: Number of n-member subsets of [9*n] whose elements sum to a multiple of nine.

The programs for A318597, there is no canonical definition to state claims against.
-/

/-! ## A318597.P15737132668301186459

`A318557(eq[9, A025581(n)])`
-/

namespace A318597.P15737132668301186459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318597.P15737132668301186459

/-! ## A318597.P7435387713253254579

`A318557(eq[10, A193739(n)])`
-/

namespace A318597.P7435387713253254579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318597.P7435387713253254579

/-! ## A318597.P5082378167959703906

`A318557(eq[10, A195663(n)])`
-/

namespace A318597.P5082378167959703906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318597.P5082378167959703906

/-! ## A318597.P11041863911413383440

`A318557(eq[19, A099375(n)])`
-/

namespace A318597.P11041863911413383440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318597.P11041863911413383440

/-! ## A318597.P9411633702371750196

`A318557(eq[10, A004736(n+1)])`
-/

namespace A318597.P9411633702371750196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318597.P9411633702371750196

/-!
# A318598: Number of n-member subsets of [10*n] whose elements sum to a multiple of ten.

The programs for A318598, there is no canonical definition to state claims against.
-/

/-! ## A318598.P13257625914717165245

`A318557(eq[10, A025581(n)])`
-/

namespace A318598.P13257625914717165245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318598.P13257625914717165245

/-! ## A318598.P10289861481511204048

`A318557(eq[11, A193739(n)])`
-/

namespace A318598.P10289861481511204048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318598.P10289861481511204048

/-! ## A318598.P4305327331346979512

`A318557(eq[12, A116598(n)])`
-/

namespace A318598.P4305327331346979512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318598.P4305327331346979512

/-! ## A318598.P16625288566840295025

`A318557(A000217(n+11)-11)`
-/

namespace A318598.P16625288566840295025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A000217 (n + 11) - 11).toNat

end

end A318598.P16625288566840295025

/-! ## A318598.P2352107766769216640

`A318557(eq[11, A004736(n+1)])`
-/

namespace A318598.P2352107766769216640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318598.P2352107766769216640

