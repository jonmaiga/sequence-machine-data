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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A068700: The concatenation of n with n-1 and n with n+1 both yield primes (twin primes).

The programs for A068700, there is no canonical definition to state claims against.
-/

/-! ## A068700.P14305536243318277766

`A014683(2*A102478(n+1))`
-/

namespace A068700.P14305536243318277766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (2 * A102478 (n + 1)).toNat

end

end A068700.P14305536243318277766

/-! ## A068700.P4169187019502808887

`A028310(2*A102478(n+1))`
-/

namespace A068700.P4169187019502808887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * A102478 (n + 1)).toNat

end

end A068700.P4169187019502808887

/-! ## A068700.P3166826739502719950

`A038608(2*A102478(n+1))`
-/

namespace A068700.P3166826739502719950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (2 * A102478 (n + 1)).toNat

end

end A068700.P3166826739502719950

/-! ## A068700.P12281449163101245516

`A048671(2*A102478(n+1))`
-/

namespace A068700.P12281449163101245516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (2 * A102478 (n + 1)).toNat

end

end A068700.P12281449163101245516

/-! ## A068700.P211193739461275456

`A064429(2*A102478(n+1))`
-/

namespace A068700.P211193739461275456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (2 * A102478 (n + 1)).toNat

end

end A068700.P211193739461275456

/-! ## A068700.P8191808452184322738

`A070167(2*A102478(n+1))`
-/

namespace A068700.P8191808452184322738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (2 * A102478 (n + 1)).toNat

end

end A068700.P8191808452184322738

/-! ## A068700.P5809240279708532979

`A087156(2*A102478(n+1))`
-/

namespace A068700.P5809240279708532979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (2 * A102478 (n + 1)).toNat

end

end A068700.P5809240279708532979

/-! ## A068700.P12578403096713843065

`A103164(2*A102478(n+1))`
-/

namespace A068700.P12578403096713843065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 (2 * A102478 (n + 1)).toNat

end

end A068700.P12578403096713843065

/-! ## A068700.P4593723696943550825

`A130481(2*A102478(n+1))`
-/

namespace A068700.P4593723696943550825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 (2 * A102478 (n + 1)).toNat

end

end A068700.P4593723696943550825

/-! ## A068700.P7667174204241376296

`A131042(2*A102478(n+1))`
-/

namespace A068700.P7667174204241376296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131042 (2 * A102478 (n + 1)).toNat

end

end A068700.P7667174204241376296

/-!
# A068701: Primes in the concatenation n^2, n and 1.

The programs for A068701, there is no canonical definition to state claims against.
-/

/-! ## A068701.P4553231120439588727

`10*A055436(A068702(n+1))+1`
-/

namespace A068701.P4553231120439588727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A055436 (A068702 (n + 1)).toNat + 1

end

end A068701.P4553231120439588727

/-! ## A068701.P406602403284276148

`p?[10*A055436(n+1)+1]`
-/

namespace A068701.P406602403284276148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A055436 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068701.P406602403284276148

/-!
# A068708: Squares whose digits can be arranged in increasing cyclic order - to form a substring of 123456789012345678901234567890...

The programs for A068708, there is no canonical definition to state claims against.
-/

/-! ## A068708.P2659464226528058341

`∩[A076966(n+1), A078255(n+1)]`
-/

namespace A068708.P2659464226528058341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068708.P2659464226528058341

/-! ## A068708.P12303201666339267487

`∩[A052046(n+1), A076966(n+1)]`
-/

namespace A068708.P12303201666339267487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068708.P12303201666339267487

/-! ## A068708.P13718784081534243262

`∩[A076966(n+1), A119509(n+1)²]`
-/

namespace A068708.P13718784081534243262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119509 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068708.P13718784081534243262

/-! ## A068708.P14435504306503461293

`∩[A052062(n+1), A076966(n+1)]`
-/

namespace A068708.P14435504306503461293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068708.P14435504306503461293

/-! ## A068708.P17305443011720178087

`∩[A050749(n+1), A076966(n+1)]`
-/

namespace A068708.P17305443011720178087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068708.P17305443011720178087

/-!
# A068710: Primes whose digits can be arranged in increasing cyclic order - to form a substring of 123456789012345678901234567890...

The programs for A068710, there is no canonical definition to state claims against.
-/

/-! ## A068710.P3392760511026813846

`p?[A376300(n+1)]`
-/

namespace A068710.P3392760511026813846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068710.P3392760511026813846

/-! ## A068710.P1851127855160123196

`∩[A029743(n+1), A376300(n+1)]`
-/

namespace A068710.P1851127855160123196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068710.P1851127855160123196

/-! ## A068710.P12366747184574977840

`∩[A082646(n+1), A376300(n+1)]`
-/

namespace A068710.P12366747184574977840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068710.P12366747184574977840

/-! ## A068710.P253841486556211349

`∩[A029743(n+1), A252490(n+1)]`
-/

namespace A068710.P253841486556211349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068710.P253841486556211349

/-! ## A068710.P8300799572080968189

`∩[A050757(n+1), A376300(n+1)]`
-/

namespace A068710.P8300799572080968189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068710.P8300799572080968189

/-! ## A068710.P15758822463232196981

`∩[A000040(n+1), A376300(n+1)]`
-/

namespace A068710.P15758822463232196981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068710.P15758822463232196981

/-! ## A068710.P9961789329928885170

`filter[A376300(n+2), A010051(#)]`
-/

namespace A068710.P9961789329928885170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A068710.P9961789329928885170

/-!
# A068711: S(n; 0,1) = S(n; 2,3) where S(n; t,s) is the number of length n 4-ary strings whose digits sum to t mod 4 and whose sum of products of all pairs of digits sum to s mod 4.

The programs for A068711, there is no canonical definition to state claims against.
-/

/-! ## A068711.P14022892088368896816

`Δ[A068777(n+1)]-2*A068786(n+1)`
-/

namespace A068711.P14022892088368896816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A068786 (n + 1)

end

end A068711.P14022892088368896816

/-! ## A068711.P463454906307098946

`(Δ[A068778(n+1)]-A068788(n+1))/2`
-/

namespace A068711.P463454906307098946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068778 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A068788 (n + 1) : ℚ) / 2

end

end A068711.P463454906307098946

/-! ## A068711.P1655715651296189198

`A001610(n)*A035063(A000032(n))`
-/

namespace A068711.P1655715651296189198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n * A035063 (A000032 n).toNat

end

end A068711.P1655715651296189198

/-!
# A068712: Primes of the form 5*2^k + 3.

The programs for A068712, there is no canonical definition to state claims against.
-/

/-! ## A068712.P6324907476577421647

`A153894(A058586(n+1))+4`
-/

namespace A068712.P6324907476577421647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153894 (A058586 (n + 1)).toNat + 4

end

end A068712.P6324907476577421647

/-! ## A068712.P4547675063564204803

`A083575(A068713(n+1)+1)+2`
-/

namespace A068712.P4547675063564204803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083575 (A068713 (n + 1) + 1).toNat + 2

end

end A068712.P4547675063564204803

/-! ## A068712.P17768629924224479304

`A153894(A068713(n+1)+1)+4`
-/

namespace A068712.P17768629924224479304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153894 (A068713 (n + 1) + 1).toNat + 4

end

end A068712.P17768629924224479304

/-! ## A068712.P6832325135631781735

`A048487(A068713(n+1)+1)+7`
-/

namespace A068712.P6832325135631781735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048487 (A068713 (n + 1) + 1).toNat + 7

end

end A068712.P6832325135631781735

/-! ## A068712.P5473768297645679214

`A154252(A068713(n+1)+1)+11`
-/

namespace A068712.P5473768297645679214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154252 (A068713 (n + 1) + 1).toNat + 11

end

end A068712.P5473768297645679214

/-!
# A068713: Numbers k for which 10*2^k + 3 is a prime (giving terms of A068712).

The programs for A068713, there is no canonical definition to state claims against.
-/

/-! ## A068713.P15350692342968982928

`A058586(n+1)-1`
-/

namespace A068713.P15350692342968982928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058586 (n + 1) - 1

end

end A068713.P15350692342968982928

/-! ## A068713.P18403227816047799705

`A153881(n+2)+A058586(n+1)`
-/

namespace A068713.P18403227816047799705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A058586 (n + 1)

end

end A068713.P18403227816047799705

/-! ## A068713.P3197411027742300552

`A260196(n+2)+A058586(n+1)`
-/

namespace A068713.P3197411027742300552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A058586 (n + 1)

end

end A068713.P3197411027742300552

/-! ## A068713.P15994646136026049981

`abs(A058586(n+1)+A057428(n+1))`
-/

namespace A068713.P15994646136026049981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A058586 (n + 1) + A057428 (n + 1)|

end

end A068713.P15994646136026049981

/-! ## A068713.P7167588715515257646

`A134824(3*(n+1))+A058586(n+1)`
-/

namespace A068713.P7167588715515257646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (3 * (n + 1)) + A058586 (n + 1)

end

end A068713.P7167588715515257646

/-! ## A068713.P6545751836415638128

`A163805(gcd(n, n+1))+A058586(n+1)`
-/

namespace A068713.P6545751836415638128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (Nat.gcd n (n + 1)) + A058586 (n + 1)

end

end A068713.P6545751836415638128

/-!
# A068714: Primes formed from a concatenation of 2 and 3^k for some k.

The programs for A068714, there is no canonical definition to state claims against.
-/

/-! ## A068714.P3278576734127785528

`A087556(3^(n+1)+2)`
-/

namespace A068714.P3278576734127785528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087556 (3 ^ (n + 1) + 2)

end

end A068714.P3278576734127785528

/-!
# A068715: Primes of the form 10*3^k + 1.

The programs for A068715, there is no canonical definition to state claims against.
-/

/-! ## A068715.P12877833922618440029

`A068841(A005539(n+1))`
-/

namespace A068715.P12877833922618440029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068841 (A005539 (n + 1)).toNat

end

end A068715.P12877833922618440029

/-! ## A068715.P14188638506458450537

`A068841(eq[A068841(n), A199112(n)])`
-/

namespace A068715.P14188638506458450537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068841 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A068715.P14188638506458450537

/-! ## A068715.P7322052171912614072

`A199112(A005539(n+1)%A000079(n))`
-/

namespace A068715.P7322052171912614072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199112 (Int.tmod (A005539 (n + 1)) (A000079 n)).toNat

end

end A068715.P7322052171912614072

/-! ## A068715.P7793798951443813595

`∩[A188793(n+1), A354524(n+1)]`
-/

namespace A068715.P7793798951443813595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068715.P7793798951443813595

/-! ## A068715.P13348552990614237916

`∩[A354524(n+1), A199112(n)]`
-/

namespace A068715.P13348552990614237916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199112 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068715.P13348552990614237916

/-!
# A068716: a(n) = 1 if x^2 + 1 = n * y^2 has infinitely many solutions in integers (x,y), otherwise a(n) = 0.

The programs for A068716, there is no canonical definition to state claims against.
-/

/-! ## A068716.P15914278855749956545

`A003285(n+1)%2`
-/

namespace A068716.P15914278855749956545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003285 (n + 1)) 2

end

end A068716.P15914278855749956545

/-! ## A068716.P11090486847398383315

`log2(gcd(2, A067280(n+1)))`
-/

namespace A068716.P11090486847398383315
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A067280 (n + 1)) : ℝ)

end

end A068716.P11090486847398383315

/-! ## A068716.P16003218506947596678

`char[A003814(n+1)-1]`
-/

namespace A068716.P16003218506947596678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A068716.P16003218506947596678

/-! ## A068716.P12830979887269504326

`char[A031396(n+2)-1]`
-/

namespace A068716.P12830979887269504326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A068716.P12830979887269504326

/-! ## A068716.P4240816454910834861

`and(1, A003285(C(n+1, n)))`
-/

namespace A068716.P4240816454910834861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A003285 (Nat.choose (n + 1) n))

end

end A068716.P4240816454910834861

/-! ## A068716.P6007199471984350145

`A000035(A003285(n+1))`
-/

namespace A068716.P6007199471984350145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A003285 (n + 1)).toNat

end

end A068716.P6007199471984350145

/-! ## A068716.P1128687649168416856

`A010873(A003285(n+1)²)`
-/

namespace A068716.P1128687649168416856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A003285 (n + 1) ^ 2).toNat

end

end A068716.P1128687649168416856

/-! ## A068716.P16485353000970875840

`A014707(2*A003285(n+1))`
-/

namespace A068716.P16485353000970875840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (2 * A003285 (n + 1)).toNat

end

end A068716.P16485353000970875840

/-! ## A068716.P4430150333863424427

`A021913(2*A003285(n+1))`
-/

namespace A068716.P4430150333863424427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (2 * A003285 (n + 1)).toNat

end

end A068716.P4430150333863424427

/-! ## A068716.P7468381643235724227

`A073089(2*A067280(n+1))`
-/

namespace A068716.P7468381643235724227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (2 * A067280 (n + 1)).toNat

end

end A068716.P7468381643235724227

/-! ## A068716.P10093650471031583526

`A097853(n+1)%A275437(n)`
-/

namespace A068716.P10093650471031583526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097853 (n + 1)) (A275437 n)

end

end A068716.P10093650471031583526

/-! ## A068716.P4110334078968010105

`and(A003285(n+1), A014577(n))`
-/

namespace A068716.P4110334078968010105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003285 (n + 1)) (A014577 n)

end

end A068716.P4110334078968010105

/-! ## A068716.P10549948445215226826

`A073089(A067280(n+1)²+1)`
-/

namespace A068716.P10549948445215226826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (A067280 (n + 1) ^ 2 + 1).toNat

end

end A068716.P10549948445215226826

/-! ## A068716.P15537252139174841598

`A040001(A003285(n+1)+1)-1`
-/

namespace A068716.P15537252139174841598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A003285 (n + 1) + 1).toNat - 1

end

end A068716.P15537252139174841598

/-! ## A068716.P3577438382954604614

`A014577(2*(A003285(n+1)+1))`
-/

namespace A068716.P3577438382954604614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (2 * (A003285 (n + 1) + 1)).toNat

end

end A068716.P3577438382954604614

/-! ## A068716.P13800811346850070293

`A010873(2*A003285(n+1))/2`
-/

namespace A068716.P13800811346850070293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010873 (2 * A003285 (n + 1)).toNat : ℚ) / 2

end

end A068716.P13800811346850070293

/-! ## A068716.P18051290926309036535

`val(A020639(A003285(n+1)+1), 2)`
-/

namespace A068716.P18051290926309036535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (A003285 (n + 1) + 1).toNat).toNat 2

end

end A068716.P18051290926309036535

/-! ## A068716.P6259718451597377994

`and(and(1, A000040(n+1)), A003285(n+1))`
-/

namespace A068716.P6259718451597377994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.land 1 (A000040 (n + 1))) (A003285 (n + 1))

end

end A068716.P6259718451597377994

/-! ## A068716.P1675014695899342014

`and(1, A006703(n+1)+A002349(n+1))`
-/

namespace A068716.P1675014695899342014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A006703 (n + 1) + A002349 (n + 1))

end

end A068716.P1675014695899342014

/-! ## A068716.P7189145369980339233

`A267848(A009531(A067280(n+1))²)`
-/

namespace A068716.P7189145369980339233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267848 (A009531 (A067280 (n + 1)).toNat ^ 2).toNat

end

end A068716.P7189145369980339233

/-!
# A068717: a(n) = -1 if A067280(n) == 0 (mod 2), otherwise a(n) = A049240(n).

The programs for A068717, there is no canonical definition to state claims against.
-/

/-! ## A068717.P15712632971969770696

`A105812(A067280(n+1))`
-/

namespace A068717.P15712632971969770696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (A067280 (n + 1)).toNat

end

end A068717.P15712632971969770696

/-! ## A068717.P6164735620947218694

`-A062157(A003285(n+1))`
-/

namespace A068717.P6164735620947218694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A062157 (A003285 (n + 1)).toNat

end

end A068717.P6164735620947218694

/-! ## A068717.P12707274348302958681

`A105812(A003285(n+1)+1)`
-/

namespace A068717.P12707274348302958681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (A003285 (n + 1) + 1).toNat

end

end A068717.P12707274348302958681

/-! ## A068717.P59245719233948189

`A049240(n+1)-2*A068716(n+1)`
-/

namespace A068717.P59245719233948189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 1) - 2 * A068716 (n + 1)

end

end A068717.P59245719233948189

/-! ## A068717.P9919070746100783098

`or(-A068716(n+1), ∑{d}[n+1, A000040(#)]%2)`
-/

namespace A068717.P9919070746100783098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A068716 (n + 1)) (Int.tmod (∑ d ∈ Nat.divisors (f1 n), A000040 d) 2)

end

end A068717.P9919070746100783098

/-! ## A068717.P16371711070131555405

`or(-A068716(n+1), and(1, A000005(4*(n+1))+1))`
-/

namespace A068717.P16371711070131555405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A068716 (n + 1)) (Int.land 1 (A000005 (4 * (n + 1)) + 1))

end

end A068717.P16371711070131555405

/-! ## A068717.P17850324362308745006

`-A258998(A003285(n+1)²)`
-/

namespace A068717.P17850324362308745006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A258998 (A003285 (n + 1) ^ 2).toNat

end

end A068717.P17850324362308745006

/-! ## A068717.P5565396053165626724

`1-A084099(A003285(n+1)²)`
-/

namespace A068717.P5565396053165626724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A084099 (A003285 (n + 1) ^ 2).toNat

end

end A068717.P5565396053165626724

/-!
# A068719: Arithmetic derivative of even numbers: a(n) = n+2*A003415(n).

The programs for A068719, the canonical program `A068719.P3996091434166805245` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068719 has offset 1).

The definition of A068719 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A068719.P3996091434166805245

`n+1+2*A003415(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A068719

/-- `n+1+2*A003415(n+1)` -/
def P3996091434166805245.Spec : Prop :=
  ∀ n, P3996091434166805245.a n = A068719 (n + 1)

theorem P3996091434166805245.correct : P3996091434166805245.Spec := by
  intro n
  simp only [A068719, Nat.add_sub_cancel]

end A068719

/-! ## A068719.P9362273279578332627

`A003415(A005843(n+1))`
-/

namespace A068719.P9362273279578332627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A005843 (n + 1)).toNat

end

end A068719.P9362273279578332627

namespace A068719

/-- `A003415(A005843(n+1))` -/
def P9362273279578332627.Spec : Prop :=
  ∀ n, P9362273279578332627.a n = A068719 (n + 1)

end A068719

/-! ## A068719.P10503355316932523067

`∑[2*A258057(n)+1]`
-/

namespace A068719.P10503355316932523067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A258057 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068719.P10503355316932523067

namespace A068719

/-- `∑[2*A258057(n)+1]` -/
def P10503355316932523067.Spec : Prop :=
  ∀ n, P10503355316932523067.a n = A068719 (n + 1)

end A068719

/-! ## A068719.P8505740237976684028

`∑{d}[2*(n+1), A300251(#)]`
-/

namespace A068719.P8505740237976684028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300251 d

end

end A068719.P8505740237976684028

namespace A068719

/-- `∑{d}[2*(n+1), A300251(#)]` -/
def P8505740237976684028.Spec : Prop :=
  ∀ n, P8505740237976684028.a n = A068719 (n + 1)

end A068719

/-! ## A068719.P9686468385059407401

`2*A129283(n+1)-(n+1)`
-/

namespace A068719.P9686468385059407401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129283 (n + 1) - (n + 1 : ℤ)

end

end A068719.P9686468385059407401

namespace A068719

/-- `2*A129283(n+1)-(n+1)` -/
def P9686468385059407401.Spec : Prop :=
  ∀ n, P9686468385059407401.a n = A068719 (n + 1)

end A068719

/-! ## A068719.P13440888404860925871

`2*(n+1)-A369052(n+1)`
-/

namespace A068719.P13440888404860925871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A369052 (n + 1)

end

end A068719.P13440888404860925871

namespace A068719

/-- `2*(n+1)-A369052(n+1)` -/
def P13440888404860925871.Spec : Prop :=
  ∀ n, P13440888404860925871.a n = A068719 (n + 1)

end A068719

/-! ## A068719.P12164187169811662959

`A068720(n+1)/(n+1)+n+1`
-/

namespace A068719.P12164187169811662959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068720 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A068719.P12164187169811662959

namespace A068719

/-- `A068720(n+1)/(n+1)+n+1` -/
def P12164187169811662959.Spec : Prop :=
  ∀ n, P12164187169811662959.a n = (A068719 (n + 1) : ℚ)

end A068719

/-! ## A068719.P7776677779460480593

`A129283(n+1)+A003415(n+1)`
-/

namespace A068719.P7776677779460480593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 (n + 1) + A003415 (n + 1)

end

end A068719.P7776677779460480593

namespace A068719

/-- `A129283(n+1)+A003415(n+1)` -/
def P7776677779460480593.Spec : Prop :=
  ∀ n, P7776677779460480593.a n = A068719 (n + 1)

end A068719

/-! ## A068719.P9520443098904436387

`A300252(2*(n+1))+A300251(2*(n+1))`
-/

namespace A068719.P9520443098904436387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300252 (2 * (n + 1)) + A300251 (2 * (n + 1))

end

end A068719.P9520443098904436387

namespace A068719

/-- `A300252(2*(n+1))+A300251(2*(n+1))` -/
def P9520443098904436387.Spec : Prop :=
  ∀ n, P9520443098904436387.a n = A068719 (n + 1)

end A068719

/-! ## A068719.P11636980693102852909

`A000203(2*(n+1))-A343224(2*(n+1))`
-/

namespace A068719.P11636980693102852909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 1)) - A343224 (2 * (n + 1))

end

end A068719.P11636980693102852909

namespace A068719

/-- `A000203(2*(n+1))-A343224(2*(n+1))` -/
def P11636980693102852909.Spec : Prop :=
  ∀ n, P11636980693102852909.a n = A068719 (n + 1)

end A068719

/-! ## A068719.P2366540382688133709

`A319684(2*(n+1))-A319683(2*(n+1))`
-/

namespace A068719.P2366540382688133709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319684 (2 * (n + 1)) - A319683 (2 * (n + 1))

end

end A068719.P2366540382688133709

namespace A068719

/-- `A319684(2*(n+1))-A319683(2*(n+1))` -/
def P2366540382688133709.Spec : Prop :=
  ∀ n, P2366540382688133709.a n = A068719 (n + 1)

end A068719

/-! ## A068719.P9802345337214131913

`A348492(2*(n+1))*A348493(2*(n+1))`
-/

namespace A068719.P9802345337214131913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348492 (2 * (n + 1)) * A348493 (2 * (n + 1))

end

end A068719.P9802345337214131913

namespace A068719

/-- `A348492(2*(n+1))*A348493(2*(n+1))` -/
def P9802345337214131913.Spec : Prop :=
  ∀ n, P9802345337214131913.a n = A068719 (n + 1)

end A068719

/-! ## A068719.P17849287908724154909

`A001489(n+1)+2*A129283(n+1)`
-/

namespace A068719.P17849287908724154909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + 2 * A129283 (n + 1)

end

end A068719.P17849287908724154909

namespace A068719

/-- `A001489(n+1)+2*A129283(n+1)` -/
def P17849287908724154909.Spec : Prop :=
  ∀ n, P17849287908724154909.a n = A068719 (n + 1)

end A068719

/-! ## A068719.P3793901511830147069

`A003415(n+1)+A003415(n+1)-A001489(n+1)`
-/

namespace A068719.P3793901511830147069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) + (A003415 (n + 1) - A001489 (n + 1))

end

end A068719.P3793901511830147069

namespace A068719

/-- `A003415(n+1)+A003415(n+1)-A001489(n+1)` -/
def P3793901511830147069.Spec : Prop :=
  ∀ n, P3793901511830147069.a n = A068719 (n + 1)

end A068719

/-! ## A068719.P1725555832344466379

`n+1+2*A319703(2*(n+1))`
-/

namespace A068719.P1725555832344466379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + 2 * A319703 (2 * (n + 1))

end

end A068719.P1725555832344466379

namespace A068719

/-- `n+1+2*A319703(2*(n+1))` -/
def P1725555832344466379.Spec : Prop :=
  ∀ n, P1725555832344466379.a n = A068719 (n + 1)

end A068719

/-! ## A068719.P4776505748766645164

`A319703(2*(n+1))+A129283(n+1)`
-/

namespace A068719.P4776505748766645164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * (n + 1)) + A129283 (n + 1)

end

end A068719.P4776505748766645164

namespace A068719

/-- `A319703(2*(n+1))+A129283(n+1)` -/
def P4776505748766645164.Spec : Prop :=
  ∀ n, P4776505748766645164.a n = A068719 (n + 1)

end A068719

/-! ## A068719.P14942667418401911281

`A329039(2*(n+1))+A069359(2*(n+1))`
-/

namespace A068719.P14942667418401911281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329039 (2 * (n + 1)) + A069359 (2 * (n + 1))

end

end A068719.P14942667418401911281

namespace A068719

/-- `A329039(2*(n+1))+A069359(2*(n+1))` -/
def P14942667418401911281.Spec : Prop :=
  ∀ n, P14942667418401911281.a n = A068719 (n + 1)

end A068719

/-! ## A068719.P13796591103608478253

`A348975(2*(n+1))+A322582(2*(n+1))`
-/

namespace A068719.P13796591103608478253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348975 (2 * (n + 1)) + A322582 (2 * (n + 1))

end

end A068719.P13796591103608478253

namespace A068719

/-- `A348975(2*(n+1))+A322582(2*(n+1))` -/
def P13796591103608478253.Spec : Prop :=
  ∀ n, P13796591103608478253.a n = A068719 (n + 1)

end A068719

/-! ## A068719.P11690178539242822255

`A003415(2*(n+1))`
-/

namespace A068719.P11690178539242822255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (2 * (n + 1))

end

end A068719.P11690178539242822255

namespace A068719

/-- `A003415(2*(n+1))` -/
def P11690178539242822255.Spec : Prop :=
  ∀ n, P11690178539242822255.a n = A068719 (n + 1)

end A068719

/-! ## A068719.P15858580745384450549

`∑[Δ[A168036(2*n)]+2]`
-/

namespace A068719.P15858580745384450549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068719.P15858580745384450549

namespace A068719

/-- `∑[Δ[A168036(2*n)]+2]` -/
def P15858580745384450549.Spec : Prop :=
  ∀ n, P15858580745384450549.a n = A068719 (n + 1)

end A068719

/-!
# A068720: Arithmetic derivative of squares: a(n) = 2*n*A003415(n).

The programs for A068720, the canonical program `A068720.P13537552036702625209` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068720 has offset 1).

The definition of A068720 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A068720.P13537552036702625209

`2*(n+1)*A003415(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A068720

/-- `2*(n+1)*A003415(n+1)` -/
def P13537552036702625209.Spec : Prop :=
  ∀ n, P13537552036702625209.a n = A068720 (n + 1)

theorem P13537552036702625209.correct : P13537552036702625209.Spec := by
  intro n
  simp only [A068720, Nat.add_sub_cancel]

end A068720

/-! ## A068720.P10630704491538000618

`A235711(2*(n+1))`
-/

namespace A068720.P10630704491538000618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235711 (2 * (n + 1))

end

end A068720.P10630704491538000618

namespace A068720

/-- `A235711(2*(n+1))` -/
def P10630704491538000618.Spec : Prop :=
  ∀ n, P10630704491538000618.a n = A068720 (n + 1)

end A068720

/-! ## A068720.P10354289528778721634

`A003415((n+1)²)`
-/

namespace A068720.P10354289528778721634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 ((n + 1) ^ 2)

end

end A068720.P10354289528778721634

namespace A068720

/-- `A003415((n+1)²)` -/
def P10354289528778721634.Spec : Prop :=
  ∀ n, P10354289528778721634.a n = A068720 (n + 1)

end A068720

/-! ## A068720.P10004565241284058400

`2*A190116(n+1)`
-/

namespace A068720.P10004565241284058400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190116 (n + 1)

end

end A068720.P10004565241284058400

namespace A068720

/-- `2*A190116(n+1)` -/
def P10004565241284058400.Spec : Prop :=
  ∀ n, P10004565241284058400.a n = A068720 (n + 1)

end A068720

/-! ## A068720.P10184485778122375966

`∑[2*Δ[n*A003415(n)]]`
-/

namespace A068720.P10184485778122375966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003415 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068720.P10184485778122375966

namespace A068720

/-- `∑[2*Δ[n*A003415(n)]]` -/
def P10184485778122375966.Spec : Prop :=
  ∀ n, P10184485778122375966.a n = A068720 (n + 1)

end A068720

/-! ## A068720.P6623618066409254596

`2*(n+1)*∑[A258057(n)]`
-/

namespace A068720.P6623618066409254596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A068720.P6623618066409254596

namespace A068720

/-- `2*(n+1)*∑[A258057(n)]` -/
def P6623618066409254596.Spec : Prop :=
  ∀ n, P6623618066409254596.a n = A068720 (n + 1)

end A068720

/-! ## A068720.P14290716008298277982

`(n+1)*(A068719(n+1)-(n+1))`
-/

namespace A068720.P14290716008298277982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A068719 (n + 1) - (n + 1 : ℤ))

end

end A068720.P14290716008298277982

namespace A068720

/-- `(n+1)*(A068719(n+1)-(n+1))` -/
def P14290716008298277982.Spec : Prop :=
  ∀ n, P14290716008298277982.a n = A068720 (n + 1)

end A068720

/-! ## A068720.P4612648736780238981

`(n+1)*(n+1-A369052(n+1))`
-/

namespace A068720.P4612648736780238981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - A369052 (n + 1))

end

end A068720.P4612648736780238981

namespace A068720

/-- `(n+1)*(n+1-A369052(n+1))` -/
def P4612648736780238981.Spec : Prop :=
  ∀ n, P4612648736780238981.a n = A068720 (n + 1)

end A068720

/-! ## A068720.P15031665526075134172

`A003415(n+1)*A103517(n)`
-/

namespace A068720.P15031665526075134172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) * A103517 n

end

end A068720.P15031665526075134172

namespace A068720

/-- `A003415(n+1)*A103517(n)` -/
def P15031665526075134172.Spec : Prop :=
  ∀ n, P15031665526075134172.a n = A068720 (n + 1)

end A068720

/-! ## A068720.P7502792249564393720

`∑[A258057(n)]*A004277(n+1)`
-/

namespace A068720.P7502792249564393720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A004277 (n + 1)

end

end A068720.P7502792249564393720

namespace A068720

/-- `∑[A258057(n)]*A004277(n+1)` -/
def P7502792249564393720.Spec : Prop :=
  ∀ n, P7502792249564393720.a n = A068720 (n + 1)

end A068720

/-! ## A068720.P16824850266261315410

`A003415(n+1)*A004277(n+1)`
-/

namespace A068720.P16824850266261315410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) * A004277 (n + 1)

end

end A068720.P16824850266261315410

namespace A068720

/-- `A003415(n+1)*A004277(n+1)` -/
def P16824850266261315410.Spec : Prop :=
  ∀ n, P16824850266261315410.a n = A068720 (n + 1)

end A068720

/-! ## A068720.P4847934655409951470

`A003415(n+1)*A005843(n+1)`
-/

namespace A068720.P4847934655409951470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) * A005843 (n + 1)

end

end A068720.P4847934655409951470

namespace A068720

/-- `A003415(n+1)*A005843(n+1)` -/
def P4847934655409951470.Spec : Prop :=
  ∀ n, P4847934655409951470.a n = A068720 (n + 1)

end A068720

/-! ## A068720.P3346388971018191322

`2*A085731(n+1)*A086130(n+1)`
-/

namespace A068720.P3346388971018191322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A085731 (n + 1) * A086130 (n + 1))

end

end A068720.P3346388971018191322

namespace A068720

/-- `2*A085731(n+1)*A086130(n+1)` -/
def P3346388971018191322.Spec : Prop :=
  ∀ n, P3346388971018191322.a n = A068720 (n + 1)

end A068720

/-! ## A068720.P15855505089343209310

`2*A102631(n+1)*A342001(n+1)`
-/

namespace A068720.P15855505089343209310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A102631 (n + 1) * A342001 (n + 1))

end

end A068720.P15855505089343209310

namespace A068720

/-- `2*A102631(n+1)*A342001(n+1)` -/
def P15855505089343209310.Spec : Prop :=
  ∀ n, P15855505089343209310.a n = A068720 (n + 1)

end A068720

/-! ## A068720.P297340454763635791

`Δ[A002378(n)]*A003415(n+1)`
-/

namespace A068720.P297340454763635791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A003415 (n + 1)

end

end A068720.P297340454763635791

namespace A068720

/-- `Δ[A002378(n)]*A003415(n+1)` -/
def P297340454763635791.Spec : Prop :=
  ∀ n, P297340454763635791.a n = A068720 (n + 1)

end A068720

/-! ## A068720.P15867109095816442863

`A103517(n)*A319703(2*(n+1))`
-/

namespace A068720.P15867109095816442863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n * A319703 (2 * (n + 1))

end

end A068720.P15867109095816442863

namespace A068720

/-- `A103517(n)*A319703(2*(n+1))` -/
def P15867109095816442863.Spec : Prop :=
  ∀ n, P15867109095816442863.a n = A068720 (n + 1)

end A068720

/-! ## A068720.P16378565694214767780

`A004277(n+1)*A319703(2*(n+1))`
-/

namespace A068720.P16378565694214767780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) * A319703 (2 * (n + 1))

end

end A068720.P16378565694214767780

namespace A068720

/-- `A004277(n+1)*A319703(2*(n+1))` -/
def P16378565694214767780.Spec : Prop :=
  ∀ n, P16378565694214767780.a n = A068720 (n + 1)

end A068720

/-! ## A068720.P6752606802426806905

`(A168036(2*(n+1))+n+1)*(n+1)`
-/

namespace A068720.P6752606802426806905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168036 (2 * (n + 1)) + (n : ℤ) + 1) * (n + 1 : ℤ)

end

end A068720.P6752606802426806905

namespace A068720

/-- `(A168036(2*(n+1))+n+1)*(n+1)` -/
def P6752606802426806905.Spec : Prop :=
  ∀ n, P6752606802426806905.a n = A068720 (n + 1)

end A068720

/-! ## A068720.P16963220389398581865

`A258565(A361936(n+1))`
-/

namespace A068720.P16963220389398581865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258565 (A361936 (n + 1)).toNat

end

end A068720.P16963220389398581865

namespace A068720

/-- `A258565(A361936(n+1))` -/
def P16963220389398581865.Spec : Prop :=
  ∀ n, P16963220389398581865.a n = A068720 (n + 1)

end A068720

/-!
# A068721: Arithmetic derivative of cubes: a(n) = 3*n^2*A003415(n).

The programs for A068721, the canonical program `A068721.P7722963444883938624` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068721 has offset 1).

The definition of A068721 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A068721.P7722963444883938624

`3*(n+1)²*A003415(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A068721

/-- `3*(n+1)²*A003415(n+1)` -/
def P7722963444883938624.Spec : Prop :=
  ∀ n, P7722963444883938624.a n = A068721 (n + 1)

theorem P7722963444883938624.correct : P7722963444883938624.Spec := by
  intro n
  simp only [A068721, Nat.add_sub_cancel]

end A068721

/-! ## A068721.P4355633655986411943

`A003415(A000578(n+1))`
-/

namespace A068721.P4355633655986411943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000578 (n + 1)).toNat

end

end A068721.P4355633655986411943

namespace A068721

/-- `A003415(A000578(n+1))` -/
def P4355633655986411943.Spec : Prop :=
  ∀ n, P4355633655986411943.a n = A068721 (n + 1)

end A068721

/-! ## A068721.P13636745395023388170

`3*(n+1)*A190116(n+1)`
-/

namespace A068721.P13636745395023388170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℤ) * A190116 (n + 1))

end

end A068721.P13636745395023388170

namespace A068721

/-- `3*(n+1)*A190116(n+1)` -/
def P13636745395023388170.Spec : Prop :=
  ∀ n, P13636745395023388170.a n = A068721 (n + 1)

end A068721

/-! ## A068721.P8266794705738440063

`A003415(n+1)/2*A033581(n+1)`
-/

namespace A068721.P8266794705738440063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / 2 * (A033581 (n + 1) : ℚ)

end

end A068721.P8266794705738440063

namespace A068721

/-- `A003415(n+1)/2*A033581(n+1)` -/
def P8266794705738440063.Spec : Prop :=
  ∀ n, P8266794705738440063.a n = (A068721 (n + 1) : ℚ)

end A068721

/-! ## A068721.P9692539035131969642

`(n+1)*A003415(n+1)*A008486(n+1)`
-/

namespace A068721.P9692539035131969642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A003415 (n + 1) * A008486 (n + 1))

end

end A068721.P9692539035131969642

namespace A068721

/-- `(n+1)*A003415(n+1)*A008486(n+1)` -/
def P9692539035131969642.Spec : Prop :=
  ∀ n, P9692539035131969642.a n = A068721 (n + 1)

end A068721

/-! ## A068721.P163029393265613106

`A003415(n+1)*A229154(3*(n+1))`
-/

namespace A068721.P163029393265613106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) * A229154 (3 * (n + 1))

end

end A068721.P163029393265613106

namespace A068721

/-- `A003415(n+1)*A229154(3*(n+1))` -/
def P163029393265613106.Spec : Prop :=
  ∀ n, P163029393265613106.a n = A068721 (n + 1)

end A068721

/-! ## A068721.P2842576451763429482

`3*(n+1)*A348497((n+1)²)`
-/

namespace A068721.P2842576451763429482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) * A348497 ((n + 1) ^ 2)

end

end A068721.P2842576451763429482

namespace A068721

/-- `3*(n+1)*A348497((n+1)²)` -/
def P2842576451763429482.Spec : Prop :=
  ∀ n, P2842576451763429482.a n = A068721 (n + 1)

end A068721

/-!
# A068722: Number of solenoidal flows (flow in = flow out) in a 3 X 3 square array with integer velocities -n .. n.

The programs for A068722, the canonical program `A068722.P15004994183655715878` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068722 has offset 0).

The definition of A068722 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068722.P15004994183655715878

`(1+2*n+2*n²)*(1+3*n+3*n²)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A068722

/-- `(1+2*n+2*n²)*(1+3*n+3*n²)` -/
def P15004994183655715878.Spec : Prop :=
  ∀ n, (P15004994183655715878.a n : ℤ) = A068722 n

theorem P15004994183655715878.correct : P15004994183655715878.Spec := by
  intro n
  simp only [A068722]

end A068722

/-! ## A068722.P4109111947434258959

`lcm((n+1)²+n², Δ[n^3])`
-/

namespace A068722.P4109111947434258959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1) ^ 2 + n ^ 2 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A068722.P4109111947434258959

namespace A068722

/-- `lcm((n+1)²+n², Δ[n^3])` -/
def P4109111947434258959.Spec : Prop :=
  ∀ n, (P4109111947434258959.a n : ℤ) = A068722 n

end A068722

/-! ## A068722.P5520426383867993223

`A008516(n)-A384566(n)`
-/

namespace A068722.P5520426383867993223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008516 n - A384566 n

end

end A068722.P5520426383867993223

namespace A068722

/-- `A008516(n)-A384566(n)` -/
def P5520426383867993223.Spec : Prop :=
  ∀ n, P5520426383867993223.a n = A068722 n

end A068722

/-! ## A068722.P12970675430488596515

`A035287(n+1)+A022521(n)`
-/

namespace A068722.P12970675430488596515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035287 (n + 1) + A022521 n

end

end A068722.P12970675430488596515

namespace A068722

/-- `A035287(n+1)+A022521(n)` -/
def P12970675430488596515.Spec : Prop :=
  ∀ n, P12970675430488596515.a n = A068722 n

end A068722

/-! ## A068722.P16133375856909257495

`(A272850(n)+A001844(n)²)/2`
-/

namespace A068722.P16133375856909257495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272850 n + A001844 n ^ 2 : ℚ) / 2

end

end A068722.P16133375856909257495

namespace A068722

/-- `(A272850(n)+A001844(n)²)/2` -/
def P16133375856909257495.Spec : Prop :=
  ∀ n, P16133375856909257495.a n = (A068722 n : ℚ)

end A068722

/-! ## A068722.P10207359593815099999

`∑[A022144(n)+n*A010014(n)]`
-/

namespace A068722.P10207359593815099999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n + (n : ℤ) * A010014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068722.P10207359593815099999

namespace A068722

/-- `∑[A022144(n)+n*A010014(n)]` -/
def P10207359593815099999.Spec : Prop :=
  ∀ n, P10207359593815099999.a n = A068722 n

end A068722

/-! ## A068722.P6554903878557709682

`A212674(Δ[n²])`
-/

namespace A068722.P6554903878557709682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212674 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A068722.P6554903878557709682

namespace A068722

/-- `A212674(Δ[n²])` -/
def P6554903878557709682.Spec : Prop :=
  ∀ n, P6554903878557709682.a n = A068722 n

end A068722

/-! ## A068722.P13664259533017866890

`A014632(∑[2*n])`
-/

namespace A068722.P13664259533017866890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014632 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A068722.P13664259533017866890

namespace A068722

/-- `A014632(∑[2*n])` -/
def P13664259533017866890.Spec : Prop :=
  ∀ n, P13664259533017866890.a n = A068722 n

end A068722

/-! ## A068722.P2986929803093599639

`A033570(∑[2*n])`
-/

namespace A068722.P2986929803093599639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033570 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A068722.P2986929803093599639

namespace A068722

/-- `A033570(∑[2*n])` -/
def P2986929803093599639.Spec : Prop :=
  ∀ n, P2986929803093599639.a n = A068722 n

end A068722

/-! ## A068722.P7334354473569303473

`sqrt(A014769(∑[2*n]))`
-/

namespace A068722.P7334354473569303473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014769 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A068722.P7334354473569303473

namespace A068722

/-- `sqrt(A014769(∑[2*n]))` -/
def P7334354473569303473.Spec : Prop :=
  ∀ n, P7334354473569303473.a n = (A068722 n : ℝ)

end A068722

/-! ## A068722.P15639225315232772767

`A211014(n²+n)+1`
-/

namespace A068722.P15639225315232772767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211014 (n ^ 2 + n) + 1

end

end A068722.P15639225315232772767

namespace A068722

/-- `A211014(n²+n)+1` -/
def P15639225315232772767.Spec : Prop :=
  ∀ n, P15639225315232772767.a n = A068722 n

end A068722

/-! ## A068722.P3144405248436689011

`∩[A014632(n), A212674(n)]`
-/

namespace A068722.P3144405248436689011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014632 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212674 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068722.P3144405248436689011

namespace A068722

/-- `∩[A014632(n), A212674(n)]` -/
def P3144405248436689011.Spec : Prop :=
  ∀ n, (P3144405248436689011.a n : ℤ) = A068722 n

end A068722

/-! ## A068722.P6424349565511931083

`∩[A033570(n), A212674(n)]`
-/

namespace A068722.P6424349565511931083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212674 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068722.P6424349565511931083

namespace A068722

/-- `∩[A033570(n), A212674(n)]` -/
def P6424349565511931083.Spec : Prop :=
  ∀ n, (P6424349565511931083.a n : ℤ) = A068722 n

end A068722

/-!
# A068739: Width of the bit-masks A068221 & A068222 (number of digits in A068223 & A068224).

The programs for A068739, there is no canonical definition to state claims against.
-/

/-! ## A068739.P14061776414355518930

`A066425(n)+a(n-1)` with `a(0)=1`
-/

namespace A068739.P14061776414355518930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066425 n + a (n - 1)

end

end A068739.P14061776414355518930

/-! ## A068739.P4690098749740390147

`∑[A066425(round(sqrt(n²+1)))]`
-/

namespace A068739.P4690098749740390147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066425 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068739.P4690098749740390147

/-! ## A068739.P3550663567177988017

`A068055(A028310(n))-(floor(acot(n))-1)`
-/

namespace A068739.P3550663567177988017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068055 (A028310 n).toNat - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A068739.P3550663567177988017

/-! ## A068739.P4306875076789140695

`A066425(n+1)+1-A068059(n+1)`
-/

namespace A068739.P4306875076789140695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066425 (n + 1) + (1 - A068059 (n + 1))

end

end A068739.P4306875076789140695

/-! ## A068739.P7574287530712161007

`A068055(n+1)+1-A066425(n+1)`
-/

namespace A068739.P7574287530712161007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068055 (n + 1) + (1 - A066425 (n + 1))

end

end A068739.P7574287530712161007

/-! ## A068739.P10043859188533320741

`A068054(n+1)-∑[A068058(n+1)]`
-/

namespace A068739.P10043859188533320741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068054 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068739.P10043859188533320741

/-!
# A068743: Digitized partition numbers: numbers with (weakly) decreasing digits ordered by sum of their digits then by the numbers themselves.

The programs for A068743, there is no canonical definition to state claims against.
-/

/-! ## A068743.P12130393347583960223

`A320390(A060140(n+1))`
-/

namespace A068743.P12130393347583960223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320390 (A060140 (n + 1)).toNat

end

end A068743.P12130393347583960223

/-! ## A068743.P17568020008266521480

`A320390(A083433(n+1))`
-/

namespace A068743.P17568020008266521480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320390 (A083433 (n + 1)).toNat

end

end A068743.P17568020008266521480

/-! ## A068743.P130620751245757173

`A261300(A259384(n+1))`
-/

namespace A068743.P130620751245757173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (A259384 (n + 1)).toNat

end

end A068743.P130620751245757173

/-!
# A068748: Number of potential flows in n X n array with integer velocities in -1..1, i.e., number of n X n arrays with adjacent elements differing by no more than 1, counting arrays differing by a constant only once.

The programs for A068748, there is no canonical definition to state claims against.
-/

/-! ## A068748.P17492126500964483141

`A222169((n+1)²+n²)`
-/

namespace A068748.P17492126500964483141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222169 ((n + 1) ^ 2 + n ^ 2)

end

end A068748.P17492126500964483141

/-!
# A068762: Alternating sum sigma(1)-sigma(2)+sigma(3)-sigma(4)+...+((-1)^(n+1))*sigma(n).

The programs for A068762, the canonical program `A068762.P17266874860166852418` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068762 has offset 1).

The definition of A068762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068762.P17266874860166852418

`∑[(-1)^n*∑{d}[n+1, #]]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A068762

/-- `∑[(-1)^n*∑{d}[n+1, #]]` -/
def P17266874860166852418.Spec : Prop :=
  ∀ n, P17266874860166852418.a n = A068762 (n + 1)

theorem P17266874860166852418.correct : P17266874860166852418.Spec := by
  intro n
  simp only [A068762, Nat.add_sub_cancel]

end A068762

/-! ## A068762.P16785998178653590774

`∑[∑{d}[n+1, #]/(-1)^n]`
-/

namespace A068762.P16785998178653590774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068762.P16785998178653590774

namespace A068762

/-- `∑[∑{d}[n+1, #]/(-1)^n]` -/
def P16785998178653590774.Spec : Prop :=
  ∀ n, P16785998178653590774.a n = (A068762 (n + 1) : ℚ)

end A068762

/-! ## A068762.P10798225289039736197

`a(n-1)+(-1)^n*∑{d}[n+1, #]` with `a(0)=1`
-/

namespace A068762.P10798225289039736197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (-1) ^ n * ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A068762.P10798225289039736197

namespace A068762

/-- `a(n-1)+(-1)^n*∑{d}[n+1, #]` -/
def P10798225289039736197.Spec : Prop :=
  ∀ n, P10798225289039736197.a n = A068762 (n + 1)

end A068762

/-! ## A068762.P11522079848481226173

`∑[A143348(n+1)]`
-/

namespace A068762.P11522079848481226173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068762.P11522079848481226173

namespace A068762

/-- `∑[A143348(n+1)]` -/
def P11522079848481226173.Spec : Prop :=
  ∀ n, P11522079848481226173.a n = A068762 (n + 1)

end A068762

/-! ## A068762.P11284779649231315769

`∑[∑{d}[n+1, #]*A033999(n)]`
-/

namespace A068762.P11284779649231315769
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068762.P11284779649231315769

namespace A068762

/-- `∑[∑{d}[n+1, #]*A033999(n)]` -/
def P11284779649231315769.Spec : Prop :=
  ∀ n, P11284779649231315769.a n = A068762 (n + 1)

end A068762

/-! ## A068762.P7346014823870282934

`∑[(-1)^n*A000203(n+1)]`
-/

namespace A068762.P7346014823870282934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068762.P7346014823870282934

namespace A068762

/-- `∑[(-1)^n*A000203(n+1)]` -/
def P7346014823870282934.Spec : Prop :=
  ∀ n, P7346014823870282934.a n = A068762 (n + 1)

end A068762

/-! ## A068762.P11220330832661778556

`∑[(A155085(n+1)-(n+1))*(-1)^n]`
-/

namespace A068762.P11220330832661778556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155085 (n + 1) - (n + 1 : ℤ)) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068762.P11220330832661778556

namespace A068762

/-- `∑[(A155085(n+1)-(n+1))*(-1)^n]` -/
def P11220330832661778556.Spec : Prop :=
  ∀ n, P11220330832661778556.a n = A068762 (n + 1)

end A068762

/-! ## A068762.P2957791532117672490

`∑[A064987(n+1)/(n+1)*(-1)^n]`
-/

namespace A068762.P2957791532117672490
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) * ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068762.P2957791532117672490

namespace A068762

/-- `∑[A064987(n+1)/(n+1)*(-1)^n]` -/
def P2957791532117672490.Spec : Prop :=
  ∀ n, P2957791532117672490.a n = (A068762 (n + 1) : ℚ)

end A068762

/-! ## A068762.P5999983578808753365

`∑[A000203(n+1)*A033999(n)]`
-/

namespace A068762.P5999983578808753365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068762.P5999983578808753365

namespace A068762

/-- `∑[A000203(n+1)*A033999(n)]` -/
def P5999983578808753365.Spec : Prop :=
  ∀ n, P5999983578808753365.a n = A068762 (n + 1)

end A068762

/-! ## A068762.P2829435968340453068

`∑[A038712(n+1)*A115607(n+1)]`
-/

namespace A068762.P2829435968340453068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) * A115607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068762.P2829435968340453068

namespace A068762

/-- `∑[A038712(n+1)*A115607(n+1)]` -/
def P2829435968340453068.Spec : Prop :=
  ∀ n, P2829435968340453068.a n = A068762 (n + 1)

end A068762

/-! ## A068762.P7661269192748075674

`∑[A162419(n+1)/A002129(n+1)]`
-/

namespace A068762.P7661269192748075674
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162419 (n + 1) : ℚ) / (A002129 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068762.P7661269192748075674

namespace A068762

/-- `∑[A162419(n+1)/A002129(n+1)]` -/
def P7661269192748075674.Spec : Prop :=
  ∀ n, P7661269192748075674.a n = (A068762 (n + 1) : ℚ)

end A068762

/-! ## A068762.P12884975598327038201

`∑[A033999(n)*A245092(2*n+1)]`
-/

namespace A068762.P12884975598327038201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A245092 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068762.P12884975598327038201

namespace A068762

/-- `∑[A033999(n)*A245092(2*n+1)]` -/
def P12884975598327038201.Spec : Prop :=
  ∀ n, P12884975598327038201.a n = A068762 (n + 1)

end A068762

/-! ## A068762.P6360124269876173848

`∑[(A155085(n+1)-(n+1))/A033999(n)]`
-/

namespace A068762.P6360124269876173848
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155085 (n + 1) - (n + 1 : ℤ) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068762.P6360124269876173848

namespace A068762

/-- `∑[(A155085(n+1)-(n+1))/A033999(n)]` -/
def P6360124269876173848.Spec : Prop :=
  ∀ n, P6360124269876173848.a n = (A068762 (n + 1) : ℚ)

end A068762

/-! ## A068762.P15095624706065290856

`(A083238(n+1)+A033999(n))*A033999(n)`
-/

namespace A068762.P15095624706065290856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083238 (n + 1) + A033999 n) * A033999 n

end

end A068762.P15095624706065290856

namespace A068762

/-- `(A083238(n+1)+A033999(n))*A033999(n)` -/
def P15095624706065290856.Spec : Prop :=
  ∀ n, P15095624706065290856.a n = A068762 (n + 1)

end A068762

/-! ## A068762.P15752871411103294538

`(A033999(n+1)-A083238(n+1))/A033999(n+1)`
-/

namespace A068762.P15752871411103294538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (n + 1) - A083238 (n + 1) : ℚ) / (A033999 (n + 1) : ℚ)

end

end A068762.P15752871411103294538

namespace A068762

/-- `(A033999(n+1)-A083238(n+1))/A033999(n+1)` -/
def P15752871411103294538.Spec : Prop :=
  ∀ n, P15752871411103294538.a n = (A068762 (n + 1) : ℚ)

end A068762

/-! ## A068762.P2124997771850255100

`∑[∑{d}[n+1, #]*A057077(2*n)]`
-/

namespace A068762.P2124997771850255100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) * A057077 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068762.P2124997771850255100

namespace A068762

/-- `∑[∑{d}[n+1, #]*A057077(2*n)]` -/
def P2124997771850255100.Spec : Prop :=
  ∀ n, P2124997771850255100.a n = A068762 (n + 1)

end A068762

/-! ## A068762.P1349621146047544603

`∑[A225528(n+1)/A075193(n)]`
-/

namespace A068762.P1349621146047544603
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225528 (n + 1) : ℚ) / (A075193 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068762.P1349621146047544603

namespace A068762

/-- `∑[A225528(n+1)/A075193(n)]` -/
def P1349621146047544603.Spec : Prop :=
  ∀ n, P1349621146047544603.a n = (A068762 (n + 1) : ℚ)

end A068762

/-! ## A068762.P650611813848116390

`∑[A033999(n)*A245093(∑[n+1])]`
-/

namespace A068762.P650611813848116390
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A245093 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068762.P650611813848116390

namespace A068762

/-- `∑[A033999(n)*A245093(∑[n+1])]` -/
def P650611813848116390.Spec : Prop :=
  ∀ n, P650611813848116390.a n = A068762 (n + 1)

end A068762

/-!
# A068763: Irregular triangle of the Fibonacci polynomials of A011973 multiplied diagonally by the Catalan numbers.

The programs for A068763, there is no canonical definition to state claims against.
-/

/-! ## A068763.P8248146460318089356

`A144757(A003597(n+2))`
-/

namespace A068763.P8248146460318089356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144757 (A003597 (n + 2)).toNat

end

end A068763.P8248146460318089356

/-!
# A068764: Generalized Catalan numbers 2*x*A(x)^2 -A(x) +1 -x =0.

The programs for A068764, there is no canonical definition to state claims against.
-/

/-! ## A068764.P15303387292450980585

`ceil(A166229(n)/2)`
-/

namespace A068764.P15303387292450980585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A166229 n : ℚ) / 2⌉

end

end A068764.P15303387292450980585

/-! ## A068764.P1233458886188032985

`A166229(n)/ratio[A011782(n)]`
-/

namespace A068764.P1233458886188032985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166229 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A068764.P1233458886188032985

/-! ## A068764.P4504281493405738261

`A166229(n)/A036453(n+1)`
-/

namespace A068764.P4504281493405738261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166229 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A068764.P4504281493405738261

/-! ## A068764.P5391618919522112156

`A166229(n)/gcd(2, A151282(n))`
-/

namespace A068764.P5391618919522112156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166229 n : ℚ) / (Int.gcd 2 (A151282 n) : ℚ)

end

end A068764.P5391618919522112156

/-! ## A068764.P11431557551719382242

`A166229(n)/A000034(A004273(n))`
-/

namespace A068764.P11431557551719382242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166229 n : ℚ) / (A000034 (A004273 n).toNat : ℚ)

end

end A068764.P11431557551719382242

/-! ## A068764.P10641457078710718392

`A166229(n)/A000005(A027746(n+1))`
-/

namespace A068764.P10641457078710718392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166229 n : ℚ) / (A000005 (A027746 (n + 1)).toNat : ℚ)

end

end A068764.P10641457078710718392

/-! ## A068764.P14063533082036116142

`A166229(n)/A067824(A020639(n+1))`
-/

namespace A068764.P14063533082036116142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166229 n : ℚ) / (A067824 (A020639 (n + 1)).toNat : ℚ)

end

end A068764.P14063533082036116142

/-! ## A068764.P9517048093512205315

`A166229(n)/A020639(A124859(n+1))`
-/

namespace A068764.P9517048093512205315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166229 n : ℚ) / (A020639 (A124859 (n + 1)).toNat : ℚ)

end

end A068764.P9517048093512205315

/-!
# A068765: Generalized Catalan numbers 3*x*A(x)^2 -A(x) +1 -2*x = 0.

The programs for A068765, there is no canonical definition to state claims against.
-/

/-! ## A068765.P12840514019213431671

`or(A000108(n), A060143(A343352(n)))`
-/

namespace A068765.P12840514019213431671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000108 n) (A060143 (A343352 n).toNat)

end

end A068765.P12840514019213431671

/-!
# A068766: Generalized Catalan numbers 4*x*A(x)^2 -A(x)+1-3*x=0.

The programs for A068766, there is no canonical definition to state claims against.
-/

/-! ## A068766.P3543840878523421742

`ceil(2^(n-1))*A052179(C(n, 2))`
-/

namespace A068766.P3543840878523421742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A052179 (Nat.choose n 2)

end

end A068766.P3543840878523421742

/-! ## A068766.P5053377166429753762

`A025228(n+1)/2*A000079(n)`
-/

namespace A068766.P5053377166429753762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025228 (n + 1) : ℚ) / 2 * (A000079 n : ℚ)

end

end A068766.P5053377166429753762

/-! ## A068766.P15716031052961064962

`ceil(2^(n-1))*A052179(A161680(n))`
-/

namespace A068766.P15716031052961064962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A052179 (A161680 n).toNat

end

end A068766.P15716031052961064962

/-! ## A068766.P436895502542685686

`A025228(n+1)/2*Δ[A000051(n)]`
-/

namespace A068766.P436895502542685686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025228 (n + 1) : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A068766.P436895502542685686

/-! ## A068766.P13751467572491799117

`A025228(n+1)/2*Δ[A000918(n)]`
-/

namespace A068766.P13751467572491799117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025228 (n + 1) : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A068766.P13751467572491799117

/-!
# A068767: Generalized Catalan numbers 5*x*A(x)^2 -A(x) +1 -4*x=0.

The programs for A068767, there is no canonical definition to state claims against.
-/

/-! ## A068767.P12375797937053628851

`A008706(A213233(n)-A213230(n))`
-/

namespace A068767.P12375797937053628851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A213233 n - A213230 n).toNat

end

end A068767.P12375797937053628851

/-!
# A068768: Generalized Catalan numbers 6*x*A(x)^2 -A(x) +1 -5*x =0.

The programs for A068768, there is no canonical definition to state claims against.
-/

/-! ## A068768.P10867224512235199056

`A311306(3*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A068768.P10867224512235199056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A311306 (3 * a (n - 1)).toNat

end

end A068768.P10867224512235199056

/-!
# A068769: Generalized Catalan numbers 7*x*A(x)^2 -A(x) +1 -6*x=0.

The programs for A068769, the canonical program `A068769.P8669857018943178956` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068769 has offset 0).

The definition of A068769 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068769.P8669857018943178956

`(168*(2-n)*a(n-2)+14*(2*n-1)*a(n-1))/(n+1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A068769

/-- `(168*(2-n)*a(n-2)+14*(2*n-1)*a(n-1))/(n+1)` -/
def P8669857018943178956.Spec : Prop :=
  ∀ n, P8669857018943178956.a n = (A068769 n : ℚ)

end A068769

/-!
# A068770: Generalized Catalan numbers 8*x*A(x)^2 -A(x) +1 -7*x=0.

The programs for A068770, there is no canonical definition to state claims against.
-/

/-! ## A068770.P1583748470835315680

`4*A310641(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A068770.P1583748470835315680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 * A310641 (a (n - 1)).toNat

end

end A068770.P1583748470835315680

/-!
# A068771: Generalized Catalan numbers 9*x*A(x)^2 -A(x) +1 -8*x=0.

The programs for A068771, the canonical program `A068771.P7034023627033263953` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068771 has offset 0).

The definition of A068771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068771.P7034023627033263953

`(288*(2-n)*a(n-2)+18*(2*n-1)*a(n-1))/(n+1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A068771

/-- `(288*(2-n)*a(n-2)+18*(2*n-1)*a(n-1))/(n+1)` -/
def P7034023627033263953.Spec : Prop :=
  ∀ n, P7034023627033263953.a n = (A068771 n : ℚ)

end A068771

/-! ## A068771.P2874063503527771978

`A000244(n)/3*A025230(n+1)`
-/

namespace A068771.P2874063503527771978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n : ℚ) / 3 * (A025230 (n + 1) : ℚ)

end

end A068771.P2874063503527771978

namespace A068771

/-- `A000244(n)/3*A025230(n+1)` -/
def P2874063503527771978.Spec : Prop :=
  ∀ n, P2874063503527771978.a n = (A068771 n : ℚ)

end A068771

/-!
# A068772: Generalized Catalan numbers 10*x*A(x)^2 -A(x) +1 -9*x =0.

The programs for A068772, the canonical program `A068772.P15639350334178717250` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068772 has offset 0).

The definition of A068772 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068772.P15639350334178717250

`(360*(2-n)*a(n-2)+20*(2*n-1)*a(n-1))/(n+1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A068772

/-- `(360*(2-n)*a(n-2)+20*(2*n-1)*a(n-1))/(n+1)` -/
def P15639350334178717250.Spec : Prop :=
  ∀ n, P15639350334178717250.a n = (A068772 n : ℚ)

end A068772

/-!
# A068773: Alternating sum phi(1) - phi(2) + phi(3) - phi(4) + ... + ((-1)^(n+1))*phi(n).

The programs for A068773, the canonical program `A068773.P160054697716686617` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068773 has offset 1).

The definition of A068773 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, A049690, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A068773.P160054697716686617

`3*A002088(n+1)-2*A049690(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A068773

/-- `3*A002088(n+1)-2*A049690(n+1)` -/
def P160054697716686617.Spec : Prop :=
  ∀ n, P160054697716686617.a n = A068773 (n + 1)

theorem P160054697716686617.correct : P160054697716686617.Spec := by
  intro n
  simp only [A068773, Nat.add_sub_cancel]

end A068773

/-! ## A068773.P1374040041790152977

`∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*(-1)^n]`
-/

namespace A068773.P1374040041790152977
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) * ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068773.P1374040041790152977

namespace A068773

/-- `∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*(-1)^n]` -/
def P1374040041790152977.Spec : Prop :=
  ∀ n, P1374040041790152977.a n = (A068773 (n + 1) : ℚ)

end A068773

/-! ## A068773.P14638944540149715436

`∑[(-1)^n*A000010(n+1)]`
-/

namespace A068773.P14638944540149715436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068773.P14638944540149715436

namespace A068773

/-- `∑[(-1)^n*A000010(n+1)]` -/
def P14638944540149715436.Spec : Prop :=
  ∀ n, P14638944540149715436.a n = A068773 (n + 1)

end A068773

/-! ## A068773.P9147762241680859831

`abs(Δ[A000010(n)+a(n-2)])` with `a(0)=0, a(1)=1`
-/

namespace A068773.P9147762241680859831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A000010 n + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A068773.P9147762241680859831

namespace A068773

/-- `abs(Δ[A000010(n)+a(n-2)])` -/
def P9147762241680859831.Spec : Prop :=
  ∀ n, P9147762241680859831.a n = A068773 (n + 1)

end A068773

/-! ## A068773.P16257337490126495246

`∑[(A039649(n+1)-1)*(-1)^n]`
-/

namespace A068773.P16257337490126495246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068773.P16257337490126495246

namespace A068773

/-- `∑[(A039649(n+1)-1)*(-1)^n]` -/
def P16257337490126495246.Spec : Prop :=
  ∀ n, P16257337490126495246.a n = A068773 (n + 1)

end A068773

/-! ## A068773.P2607302450874384391

`∑[A000010(lcm(2, n+1))/(-1)^n]`
-/

namespace A068773.P2607302450874384391
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (Nat.lcm 2 (n + 1)) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068773.P2607302450874384391

namespace A068773

/-- `∑[A000010(lcm(2, n+1))/(-1)^n]` -/
def P2607302450874384391.Spec : Prop :=
  ∀ n, P2607302450874384391.a n = (A068773 (n + 1) : ℚ)

end A068773

/-! ## A068773.P11151224600656920408

`∑[A000010(C(n+1, n))/(-1)^n]`
-/

namespace A068773.P11151224600656920408
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (Nat.choose (n + 1) n) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068773.P11151224600656920408

namespace A068773

/-- `∑[A000010(C(n+1, n))/(-1)^n]` -/
def P11151224600656920408.Spec : Prop :=
  ∀ n, P11151224600656920408.a n = (A068773 (n + 1) : ℚ)

end A068773

/-! ## A068773.P14073012274711543545

`∑[A000010(-xor(n, -1))/(-1)^n]`
-/

namespace A068773.P14073012274711543545
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068773.P14073012274711543545

namespace A068773

/-- `∑[A000010(-xor(n, -1))/(-1)^n]` -/
def P14073012274711543545.Spec : Prop :=
  ∀ n, P14073012274711543545.a n = (A068773 (n + 1) : ℚ)

end A068773

/-! ## A068773.P111423062672584840

`∑[A000010(n-log2(1/2))/(-1)^n]`
-/

namespace A068773.P111423062672584840
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068773.P111423062672584840

namespace A068773

/-- `∑[A000010(n-log2(1/2))/(-1)^n]` -/
def P111423062672584840.Spec : Prop :=
  ∀ n, P111423062672584840.a n = (A068773 (n + 1) : ℚ)

end A068773

/-! ## A068773.P4955324065449258943

`∑[A000010(n+1)*A033999(n)]`
-/

namespace A068773.P4955324065449258943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068773.P4955324065449258943

namespace A068773

/-- `∑[A000010(n+1)*A033999(n)]` -/
def P4955324065449258943.Spec : Prop :=
  ∀ n, P4955324065449258943.a n = A068773 (n + 1)

end A068773

/-! ## A068773.P16274810024566856324

`abs(Δ[A106481(n)])`
-/

namespace A068773.P16274810024566856324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A068773.P16274810024566856324

namespace A068773

/-- `abs(Δ[A106481(n)])` -/
def P16274810024566856324.Spec : Prop :=
  ∀ n, P16274810024566856324.a n = A068773 (n + 1)

end A068773

/-! ## A068773.P17849431529552008243

`abs(Δ[A225373(n)])`
-/

namespace A068773.P17849431529552008243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A068773.P17849431529552008243

namespace A068773

/-- `abs(Δ[A225373(n)])` -/
def P17849431529552008243.Spec : Prop :=
  ∀ n, P17849431529552008243.a n = A068773 (n + 1)

end A068773

/-! ## A068773.P12017110975540276193

`abs(A106481(n+1)-A106481(n))`
-/

namespace A068773.P12017110975540276193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106481 (n + 1) - A106481 n|

end

end A068773.P12017110975540276193

namespace A068773

/-- `abs(A106481(n+1)-A106481(n))` -/
def P12017110975540276193.Spec : Prop :=
  ∀ n, P12017110975540276193.a n = A068773 (n + 1)

end A068773

/-! ## A068773.P6683636057787561123

`∑[A000010(n+1)*A057077(2*n)]`
-/

namespace A068773.P6683636057787561123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A057077 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068773.P6683636057787561123

namespace A068773

/-- `∑[A000010(n+1)*A057077(2*n)]` -/
def P6683636057787561123.Spec : Prop :=
  ∀ n, P6683636057787561123.a n = A068773 (n + 1)

end A068773

/-! ## A068773.P7936806881666163799

`∑{d}[A000010(n+1)-a(n-1), A000010(#)]` with `a(0)=1`
-/

namespace A068773.P7936806881666163799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000010 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A068773.P7936806881666163799

namespace A068773

/-- `∑{d}[A000010(n+1)-a(n-1), A000010(#)]` -/
def P7936806881666163799.Spec : Prop :=
  ∀ n, P7936806881666163799.a n = A068773 (n + 1)

end A068773

/-! ## A068773.P15158996523292417170

`∑[A325596((n+1)²)/(n+1)]`
-/

namespace A068773.P15158996523292417170
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325596 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068773.P15158996523292417170

namespace A068773

/-- `∑[A325596((n+1)²)/(n+1)]` -/
def P15158996523292417170.Spec : Prop :=
  ∀ n, P15158996523292417170.a n = (A068773 (n + 1) : ℚ)

end A068773

/-!
# A068774: Number of strings over Z_4 of length n with trace 0 and subtrace 2.

The programs for A068774, there is no canonical definition to state claims against.
-/

/-! ## A068774.P14293828189731805045

`A068789(n+1)-2^n`
-/

namespace A068774.P14293828189731805045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068789 (n + 1) - (2 ^ n : ℤ)

end

end A068774.P14293828189731805045

/-! ## A068774.P11418997808506971739

`abs(A068789(n+1)-A000079(n))`
-/

namespace A068774.P11418997808506971739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A068789 (n + 1) - A000079 n|

end

end A068774.P11418997808506971739

/-! ## A068774.P10496485489652042418

`A068789(n+1)+1-A000051(n)`
-/

namespace A068774.P10496485489652042418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068789 (n + 1) + 1 - A000051 n

end

end A068774.P10496485489652042418

/-! ## A068774.P14341075766987027261

`A068789(n+1)-1-A000225(n)`
-/

namespace A068774.P14341075766987027261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068789 (n + 1) - 1 - A000225 n

end

end A068774.P14341075766987027261

/-! ## A068774.P3452015241367764320

`abs(A068789(n+1)-∑[A011782(n)])`
-/

namespace A068774.P3452015241367764320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A068789 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A068774.P3452015241367764320

/-!
# A068776: a(0) = 1; for n > 0, a(n) is the smallest triangular number which is a (proper) multiple of a(n-1).

The programs for A068776, there is no canonical definition to state claims against.
-/

/-! ## A068776.P14483084112342557006

`A068857(n+1)/8`
-/

namespace A068776.P14483084112342557006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068857 (n + 1) : ℚ) / 8

end

end A068776.P14483084112342557006

/-! ## A068776.P9343873320874193150

`A068084(A002024(a(n-1)))` with `a(0)=1`
-/

namespace A068776.P9343873320874193150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A068084 (A002024 (a (n - 1)).toNat).toNat

end

end A068776.P9343873320874193150

/-!
# A068777: S(n; 0,3) = S(n; 2,1) where S(n; t,s) is the number of length n 4-ary strings whose digits sum to t mod 4 and whose sum of products of all pairs of digits sum to s mod 4.

The programs for A068777, there is no canonical definition to state claims against.
-/

/-! ## A068777.P10762582524732969830

`Δ[A068711(n+1)]-2*A068787(n+1)`
-/

namespace A068777.P10762582524732969830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A068787 (n + 1)

end

end A068777.P10762582524732969830

/-! ## A068777.P8096521735954748874

`(Δ[A068788(n+1)]-A068778(n+1))/2`
-/

namespace A068777.P8096521735954748874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068788 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A068778 (n + 1) : ℚ) / 2

end

end A068777.P8096521735954748874

/-! ## A068777.P9451495574293810933

`A038608((n+1)*A074405(n+1))`
-/

namespace A068777.P9451495574293810933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 ((n + 1 : ℤ) * A074405 (n + 1)).toNat

end

end A068777.P9451495574293810933

/-! ## A068777.P184361135578554483

`A052928((n+1)*A074405(n+1))`
-/

namespace A068777.P184361135578554483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 ((n + 1 : ℤ) * A074405 (n + 1)).toNat

end

end A068777.P184361135578554483

/-!
# A068778: S(n; 1,1) = S(n; 3,1) where S(n; t,s) is the number of length n 4-ary strings whose digits sum to t mod 4 and whose sum of products of all pairs of digits sum to s mod 4.

The programs for A068778, there is no canonical definition to state claims against.
-/

/-! ## A068778.P7429706183441660580

`Δ[A068788(n+1)]-2*A068777(n+1)`
-/

namespace A068778.P7429706183441660580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A068777 (n + 1)

end

end A068778.P7429706183441660580

/-! ## A068778.P7307322277877801173

`(Δ[A068620(n+1)]-A068789(n+1))/2`
-/

namespace A068778.P7307322277877801173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068620 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A068789 (n + 1) : ℚ) / 2

end

end A068778.P7307322277877801173

/-! ## A068778.P6567371272568021383

`(Δ[A068790(n+1)]-A068774(n+1))/2`
-/

namespace A068778.P6567371272568021383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068790 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A068774 (n + 1) : ℚ) / 2

end

end A068778.P6567371272568021383

/-! ## A068778.P14609788730249264108

`and(A067855(n), A178739(A001933(n+1)))`
-/

namespace A068778.P14609788730249264108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A067855 n) (A178739 (A001933 (n + 1)).toNat)

end

end A068778.P14609788730249264108

/-!
# A068779: Least number k such that floor( k / digit reversal of k ) = n.

The programs for A068779, there is no canonical definition to state claims against.
-/

/-! ## A068779.P6699926959403142109

`∑[A129889(A245770(n+1)+n+1)]`
-/

namespace A068779.P6699926959403142109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129889 (A245770 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068779.P6699926959403142109

/-!
# A068780: Composite numbers n such that n+1 is also composite.

The programs for A068780, the canonical program `A068780.P12907519640094677805` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068780 has offset 1).

The definition of A068780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068780.P12907519640094677805

`A005381(n+1)-1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A068780

/-- `A005381(n+1)-1` -/
def P12907519640094677805.Spec : Prop :=
  ∀ n, P12907519640094677805.a n = A068780 (n + 1)

theorem P12907519640094677805.correct : P12907519640094677805.Spec := by
  intro n
  simp only [A068780, Nat.add_sub_cancel]

end A068780

/-! ## A068780.P254051081105673172

`eq[1, A323162(n+1)]`
-/

namespace A068780.P254051081105673172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068780.P254051081105673172

namespace A068780

/-- `eq[1, A323162(n+1)]` -/
def P254051081105673172.Spec : Prop :=
  ∀ n, (P254051081105673172.a n : ℤ) = A068780 (n + 1)

end A068780

/-! ## A068780.P13336044901340483599

`lt[1, A121561(n+1)]`
-/

namespace A068780.P13336044901340483599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A068780.P13336044901340483599

namespace A068780

/-- `lt[1, A121561(n+1)]` -/
def P13336044901340483599.Spec : Prop :=
  ∀ n, (P13336044901340483599.a n : ℤ) = A068780 (n + 1)

end A068780

/-! ## A068780.P10397674117395642749

`lt[1, A078772(n+2)]`
-/

namespace A068780.P10397674117395642749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078772 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A068780.P10397674117395642749

namespace A068780

/-- `lt[1, A078772(n+2)]` -/
def P10397674117395642749.Spec : Prop :=
  ∀ n, (P10397674117395642749.a n : ℤ) = A068780 (n + 1)

end A068780

/-! ## A068780.P8023856443783534775

`lt[1, A175078(n+2)]`
-/

namespace A068780.P8023856443783534775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A068780.P8023856443783534775

namespace A068780

/-- `lt[1, A175078(n+2)]` -/
def P8023856443783534775.Spec : Prop :=
  ∀ n, (P8023856443783534775.a n : ℤ) = A068780 (n + 1)

end A068780

/-! ## A068780.P17621007071771907946

`lt[2, A175851(n+1)]`
-/

namespace A068780.P17621007071771907946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A068780.P17621007071771907946

namespace A068780

/-- `lt[2, A175851(n+1)]` -/
def P17621007071771907946.Spec : Prop :=
  ∀ n, (P17621007071771907946.a n : ℤ) = A068780 (n + 1)

end A068780

/-! ## A068780.P8851263909466665795

`eq[1, A107393(or(1, n))]`
-/

namespace A068780.P8851263909466665795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068780.P8851263909466665795

namespace A068780

/-- `eq[1, A107393(or(1, n))]` -/
def P8851263909466665795.Spec : Prop :=
  ∀ n, (P8851263909466665795.a n : ℤ) = A068780 (n + 1)

end A068780

/-! ## A068780.P16299358863831283145

`lt[1, A001222(or(1, n))]`
-/

namespace A068780.P16299358863831283145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A068780.P16299358863831283145

namespace A068780

/-- `lt[1, A001222(or(1, n))]` -/
def P16299358863831283145.Spec : Prop :=
  ∀ n, (P16299358863831283145.a n : ℤ) = A068780 (n + 1)

end A068780

/-! ## A068780.P8467806991746673324

`lt[1, A325937(or(1, n))]`
-/

namespace A068780.P8467806991746673324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A068780.P8467806991746673324

namespace A068780

/-- `lt[1, A325937(or(1, n))]` -/
def P8467806991746673324.Spec : Prop :=
  ∀ n, (P8467806991746673324.a n : ℤ) = A068780 (n + 1)

end A068780

/-! ## A068780.P7461178997805128040

`lt[1, A342001(or(1, n))]`
-/

namespace A068780.P7461178997805128040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A068780.P7461178997805128040

namespace A068780

/-- `lt[1, A342001(or(1, n))]` -/
def P7461178997805128040.Spec : Prop :=
  ∀ n, (P7461178997805128040.a n : ℤ) = A068780 (n + 1)

end A068780

/-! ## A068780.P14147323875704698461

`lt[2, A000005(or(1, n))]`
-/

namespace A068780.P14147323875704698461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A068780.P14147323875704698461

namespace A068780

/-- `lt[2, A000005(or(1, n))]` -/
def P14147323875704698461.Spec : Prop :=
  ∀ n, (P14147323875704698461.a n : ℤ) = A068780 (n + 1)

end A068780

/-! ## A068780.P15411705941474801483

`lt[A006530(or(1, n)), n]`
-/

namespace A068780.P15411705941474801483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lor 1 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A068780.P15411705941474801483

namespace A068780

/-- `lt[A006530(or(1, n)), n]` -/
def P15411705941474801483.Spec : Prop :=
  ∀ n, (P15411705941474801483.a n : ℤ) = A068780 (n + 1)

end A068780

/-! ## A068780.P15153303604177828982

`lt[A020639(or(1, n)), n]`
-/

namespace A068780.P15153303604177828982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lor 1 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A068780.P15153303604177828982

namespace A068780

/-- `lt[A020639(or(1, n)), n]` -/
def P15153303604177828982.Spec : Prop :=
  ∀ n, (P15153303604177828982.a n : ℤ) = A068780 (n + 1)

end A068780

/-! ## A068780.P12795863250845695677

`lt[1, A056898(n+1)]+1`
-/

namespace A068780.P12795863250845695677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056898 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A068780.P12795863250845695677

namespace A068780

/-- `lt[1, A056898(n+1)]+1` -/
def P12795863250845695677.Spec : Prop :=
  ∀ n, (P12795863250845695677.a n : ℤ) = A068780 (n + 1)

end A068780

/-! ## A068780.P2183113692221205160

`lt[A000010(or(1, n)), n-1]`
-/

namespace A068780.P2183113692221205160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lor 1 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068780.P2183113692221205160

namespace A068780

/-- `lt[A000010(or(1, n)), n-1]` -/
def P2183113692221205160.Spec : Prop :=
  ∀ n, (P2183113692221205160.a n : ℤ) = A068780 (n + 1)

end A068780

/-! ## A068780.P11639138821872014621

`lt[n+2, A000203(or(1, n))]`
-/

namespace A068780.P11639138821872014621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A068780.P11639138821872014621

namespace A068780

/-- `lt[n+2, A000203(or(1, n))]` -/
def P11639138821872014621.Spec : Prop :=
  ∀ n, (P11639138821872014621.a n : ℤ) = A068780 (n + 1)

end A068780

/-! ## A068780.P7770078032744120025

`lt[A020639(n+1), A175126(n)]`
-/

namespace A068780.P7770078032744120025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068780.P7770078032744120025

namespace A068780

/-- `lt[A020639(n+1), A175126(n)]` -/
def P7770078032744120025.Spec : Prop :=
  ∀ n, (P7770078032744120025.a n : ℤ) = A068780 (n + 1)

end A068780

/-! ## A068780.P7983776426605897624

`∪[A079364(n+1), A136798(n+1)]`
-/

namespace A068780.P7983776426605897624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068780.P7983776426605897624

namespace A068780

/-- `∪[A079364(n+1), A136798(n+1)]` -/
def P7983776426605897624.Spec : Prop :=
  ∀ n, (P7983776426605897624.a n : ℤ) = A068780 (n + 1)

end A068780

/-! ## A068780.P17164586371322454421

`∪[A096784(n+1), A123608(n+1)]`
-/

namespace A068780.P17164586371322454421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068780.P17164586371322454421

namespace A068780

/-- `∪[A096784(n+1), A123608(n+1)]` -/
def P17164586371322454421.Spec : Prop :=
  ∀ n, (P17164586371322454421.a n : ℤ) = A068780 (n + 1)

end A068780

/-!
# A068781: Lesser of two consecutive numbers each divisible by a square.

The programs for A068781, the canonical program `A068781.P14060761799375853709` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068781 has offset 1).

The definition of A068781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068781.P7425512821655316443

`∩[A013929(n+1)-1, A013929(n+1)]`
-/

namespace A068781.P7425512821655316443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068781.P7425512821655316443

namespace A068781

/-- `∩[A013929(n+1)-1, A013929(n+1)]` -/
def P7425512821655316443.Spec : Prop :=
  ∀ n, (P7425512821655316443.a n : ℤ) = A068781 (n + 1)

end A068781

/-! ## A068781.P14060761799375853709

`A013929(eq[1, A013929(n+2)-A013929(n+1)]+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A068781

/-- `A013929(eq[1, A013929(n+2)-A013929(n+1)]+1)` -/
def P14060761799375853709.Spec : Prop :=
  ∀ n, P14060761799375853709.a n = A068781 (n + 1)

theorem P14060761799375853709.correct : P14060761799375853709.Spec := by
  intro n
  simp only [A068781, Nat.add_sub_cancel]

end A068781

/-! ## A068781.P11714812720799489167

`eq[1, A378036(n+1)]+1`
-/

namespace A068781.P11714812720799489167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A068781.P11714812720799489167

namespace A068781

/-- `eq[1, A378036(n+1)]+1` -/
def P11714812720799489167.Spec : Prop :=
  ∀ n, (P11714812720799489167.a n : ℤ) = A068781 (n + 1)

end A068781

/-! ## A068781.P13209222160606632038

`lt[1, A105570(A105570(n)+1)]`
-/

namespace A068781.P13209222160606632038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A105570 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A068781.P13209222160606632038

namespace A068781

/-- `lt[1, A105570(A105570(n)+1)]` -/
def P13209222160606632038.Spec : Prop :=
  ∀ n, (P13209222160606632038.a n : ℤ) = A068781 (n + 1)

end A068781

/-! ## A068781.P1799747982786350361

`lt[A008966(A008966(n+1)+n), 1]`
-/

namespace A068781.P1799747982786350361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A008966 (n + 1) + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A068781.P1799747982786350361

namespace A068781

/-- `lt[A008966(A008966(n+1)+n), 1]` -/
def P1799747982786350361.Spec : Prop :=
  ∀ n, (P1799747982786350361.a n : ℤ) = A068781 (n + 1)

end A068781

/-! ## A068781.P6356809807214151213

`lt[1, A048146(n+1)*A087049(n)]`
-/

namespace A068781.P6356809807214151213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1) * A087049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A068781.P6356809807214151213

namespace A068781

/-- `lt[1, A048146(n+1)*A087049(n)]` -/
def P6356809807214151213.Spec : Prop :=
  ∀ n, (P6356809807214151213.a n : ℤ) = A068781 (n + 1)

end A068781

/-! ## A068781.P1931310735722316288

`eq[n, A105570(n)+A008683(n+1)]`
-/

namespace A068781.P1931310735722316288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n + A008683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068781.P1931310735722316288

namespace A068781

/-- `eq[n, A105570(n)+A008683(n+1)]` -/
def P1931310735722316288.Spec : Prop :=
  ∀ n, (P1931310735722316288.a n : ℤ) = A068781 (n + 1)

end A068781

/-! ## A068781.P17205160196925137950

`eq[A008966(n+1)+n, A105570(n)]`
-/

namespace A068781.P17205160196925137950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068781.P17205160196925137950

namespace A068781

/-- `eq[A008966(n+1)+n, A105570(n)]` -/
def P17205160196925137950.Spec : Prop :=
  ∀ n, (P17205160196925137950.a n : ℤ) = A068781 (n + 1)

end A068781

/-! ## A068781.P16703561216209241221

`lt[A007913(n+1), n*A087049(n)]`
-/

namespace A068781.P16703561216209241221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A087049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068781.P16703561216209241221

namespace A068781

/-- `lt[A007913(n+1), n*A087049(n)]` -/
def P16703561216209241221.Spec : Prop :=
  ∀ n, (P16703561216209241221.a n : ℤ) = A068781 (n + 1)

end A068781

/-! ## A068781.P13156837501611807306

`eq[0, A008683(A008683(n+1)²+n)]`
-/

namespace A068781.P13156837501611807306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008683 (n + 1) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068781.P13156837501611807306

namespace A068781

/-- `eq[0, A008683(A008683(n+1)²+n)]` -/
def P13156837501611807306.Spec : Prop :=
  ∀ n, (P13156837501611807306.a n : ℤ) = A068781 (n + 1)

end A068781

/-! ## A068781.P4000338438713539196

`eq[0, A008683(dr(A008683(n+1))+n)]`
-/

namespace A068781.P4000338438713539196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.digitalRoot (A008683 (n + 1)) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068781.P4000338438713539196

namespace A068781

/-- `eq[0, A008683(dr(A008683(n+1))+n)]` -/
def P4000338438713539196.Spec : Prop :=
  ∀ n, (P4000338438713539196.a n : ℤ) = A068781 (n + 1)

end A068781

/-! ## A068781.P5727043093642756929

`eq[2*A008683(n+1), A008683(n+2)]+1`
-/

namespace A068781.P5727043093642756929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068781.P5727043093642756929

namespace A068781

/-- `eq[2*A008683(n+1), A008683(n+2)]+1` -/
def P5727043093642756929.Spec : Prop :=
  ∀ n, (P5727043093642756929.a n : ℤ) = A068781 (n + 1)

end A068781

/-! ## A068781.P17588552460176257468

`eq[A008683(n+2)/2, A008683(n+3)]+2`
-/

namespace A068781.P17588552460176257468
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 2) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 2

end

end A068781.P17588552460176257468

namespace A068781

/-- `eq[A008683(n+2)/2, A008683(n+3)]+2` -/
def P17588552460176257468.Spec : Prop :=
  ∀ n, (P17588552460176257468.a n : ℤ) = A068781 (n + 1)

end A068781

/-! ## A068781.P11383606350649061908

`eq[A087049(A087049(n)+n), A132126(n+1)]`
-/

namespace A068781.P11383606350649061908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A087049 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068781.P11383606350649061908

namespace A068781

/-- `eq[A087049(A087049(n)+n), A132126(n+1)]` -/
def P11383606350649061908.Spec : Prop :=
  ∀ n, (P11383606350649061908.a n : ℤ) = A068781 (n + 1)

end A068781

/-! ## A068781.P12948324012143437520

`filter[A064148(n+1), A087049(#)]`
-/

namespace A068781.P12948324012143437520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A068781.P12948324012143437520

namespace A068781

/-- `filter[A064148(n+1), A087049(#)]` -/
def P12948324012143437520.Spec : Prop :=
  ∀ n, P12948324012143437520.a n = A068781 (n + 1)

end A068781

/-! ## A068781.P1929863052408607439

`filter[A074819(n+2), A087049(#)]`
-/

namespace A068781.P1929863052408607439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074819 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A068781.P1929863052408607439

namespace A068781

/-- `filter[A074819(n+2), A087049(#)]` -/
def P1929863052408607439.Spec : Prop :=
  ∀ n, P1929863052408607439.a n = A068781 (n + 1)

end A068781

/-! ## A068781.P4905386069712674495

`∩[A064148(n+1), A074819(n+1)]`
-/

namespace A068781.P4905386069712674495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068781.P4905386069712674495

namespace A068781

/-- `∩[A064148(n+1), A074819(n+1)]` -/
def P4905386069712674495.Spec : Prop :=
  ∀ n, (P4905386069712674495.a n : ℤ) = A068781 (n + 1)

end A068781

/-! ## A068781.P12966790519144621469

`∩[A013929(n+1), A064148(n+1)]`
-/

namespace A068781.P12966790519144621469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068781.P12966790519144621469

namespace A068781

/-- `∩[A013929(n+1), A064148(n+1)]` -/
def P12966790519144621469.Spec : Prop :=
  ∀ n, (P12966790519144621469.a n : ℤ) = A068781 (n + 1)

end A068781

/-! ## A068781.P84576367869861381

`∩[A013929(n+1), A074819(n+1)]`
-/

namespace A068781.P84576367869861381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068781.P84576367869861381

namespace A068781

/-- `∩[A013929(n+1), A074819(n+1)]` -/
def P84576367869861381.Spec : Prop :=
  ∀ n, (P84576367869861381.a n : ℤ) = A068781 (n + 1)

end A068781

/-! ## A068781.P12348096789307576395

`∩[A064148(n+1), A080756(n+1)]`
-/

namespace A068781.P12348096789307576395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068781.P12348096789307576395

namespace A068781

/-- `∩[A064148(n+1), A080756(n+1)]` -/
def P12348096789307576395.Spec : Prop :=
  ∀ n, (P12348096789307576395.a n : ℤ) = A068781 (n + 1)

end A068781

/-!
# A068782: Lesser of two consecutive numbers each divisible by a fourth power.

The programs for A068782, there is no canonical definition to state claims against.
-/

/-! ## A068782.P7879263296499397406

`∩[A046101(n+1)-1, A046101(n+1)]`
-/

namespace A068782.P7879263296499397406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068782.P7879263296499397406

/-! ## A068782.P11482359575058574258

`∩[A046101(n+1), A023443(A046101(n+1))]`
-/

namespace A068782.P11482359575058574258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A046101 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068782.P11482359575058574258

/-!
# A068785: Number of Cartesian lattice points in or on the circle x^2 + y^2 = 10^n.

The programs for A068785, there is no canonical definition to state claims against.
-/

/-! ## A068785.P7037426766696566577

`A014198(10^n)+1`
-/

namespace A068785.P7037426766696566577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 (10 ^ n) + 1

end

end A068785.P7037426766696566577

/-!
# A068786: S(n; 1,0) = S(n; 3,0) where S(n; t,s) is the number of length n 4-ary strings whose digits sum to t mod 4 and whose sum of products of all pairs of digits sum to s mod 4.

The programs for A068786, there is no canonical definition to state claims against.
-/

/-! ## A068786.P9137344433370396114

`A229138(n+1)/A020707(n)`
-/

namespace A068786.P9137344433370396114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229138 (n + 1) : ℚ) / (A020707 n : ℚ)

end

end A068786.P9137344433370396114

/-! ## A068786.P5220471121391722312

`A229138(n+1)/record[A112032(n)]`
-/

namespace A068786.P5220471121391722312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112032 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229138 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A068786.P5220471121391722312

/-! ## A068786.P7591444581111117392

`A229138(n+1)/A000079(n+2)`
-/

namespace A068786.P7591444581111117392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229138 (n + 1) : ℚ) / (A000079 (n + 2) : ℚ)

end

end A068786.P7591444581111117392

/-! ## A068786.P2410776700567780631

`A229138(n+1)/A112032(2*n)`
-/

namespace A068786.P2410776700567780631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229138 (n + 1) : ℚ) / (A112032 (2 * n) : ℚ)

end

end A068786.P2410776700567780631

/-! ## A068786.P5296247807116069993

`A229138(n+1)/Δ[A000051(n+2)]`
-/

namespace A068786.P5296247807116069993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229138 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A068786.P5296247807116069993

/-!
# A068787: Number of strings over Z_4 of length n with trace 1 and subtrace 2.

The programs for A068787, there is no canonical definition to state claims against.
-/

/-! ## A068787.P11577710082458659170

`A229136(n+1)/2-A068786(n+1)`
-/

namespace A068787.P11577710082458659170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229136 (n + 1) : ℚ) / 2 - (A068786 (n + 1) : ℚ)

end

end A068787.P11577710082458659170

/-! ## A068787.P9987355935383156348

`(Δ[A068711(n+1)]-A068777(n+1))/2`
-/

namespace A068787.P9987355935383156348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068711 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A068777 (n + 1) : ℚ) / 2

end

end A068787.P9987355935383156348

/-! ## A068787.P18065906583898837326

`Δ[A068786(n+1)]-(A068790(n+1)+A068620(n+1))`
-/

namespace A068787.P18065906583898837326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A068790 (n + 1) + A068620 (n + 1))

end

end A068787.P18065906583898837326

/-! ## A068787.P14633852878589812058

`A245092((n+1)*A074408(n+1))`
-/

namespace A068787.P14633852878589812058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((n + 1 : ℤ) * A074408 (n + 1)).toNat

end

end A068787.P14633852878589812058

/-!
# A068788: S(n; 1,3) = S(n; 3,3) where S(n; t,s) is the number of length n 4-ary strings whose digits sum to t mod 4 and whose sum of products of all pairs of digits sum to s mod 4.

The programs for A068788, there is no canonical definition to state claims against.
-/

/-! ## A068788.P8228262933204331409

`Δ[A068778(n+1)]-2*A068711(n+1)`
-/

namespace A068788.P8228262933204331409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A068711 (n + 1)

end

end A068788.P8228262933204331409

/-! ## A068788.P7477088157035372116

`(Δ[A068789(n+1)]-A068620(n+1))/2`
-/

namespace A068788.P7477088157035372116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068789 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A068620 (n + 1) : ℚ) / 2

end

end A068788.P7477088157035372116

/-! ## A068788.P10572325817577838449

`(Δ[A068774(n+1)]-A068790(n+1))/2`
-/

namespace A068788.P10572325817577838449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068774 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A068790 (n + 1) : ℚ) / 2

end

end A068788.P10572325817577838449

/-!
# A068789: S(n; 2,0) where S(n; t,s) is the number of length n 4-ary strings whose digits sum to t mod 4 and whose sum of products of all pairs of digits sum to s mod 4.

The programs for A068789, there is no canonical definition to state claims against.
-/

/-! ## A068789.P16026083377026590265

`A068774(n+1)+2^n`
-/

namespace A068789.P16026083377026590265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068774 (n + 1) + (2 ^ n : ℤ)

end

end A068789.P16026083377026590265

/-! ## A068789.P7334215520004245861

`A000079(n)+A068774(n+1)`
-/

namespace A068789.P7334215520004245861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A068774 (n + 1)

end

end A068789.P7334215520004245861

/-! ## A068789.P11639343718702364904

`abs(A171449(n)+A068774(n+1))`
-/

namespace A068789.P11639343718702364904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171449 n + A068774 (n + 1)|

end

end A068789.P11639343718702364904

/-! ## A068789.P10194233033698402001

`A068774(n+1)+A000225(n)+1`
-/

namespace A068789.P10194233033698402001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068774 (n + 1) + A000225 n + 1

end

end A068789.P10194233033698402001

/-! ## A068789.P12049620458392199013

`A131577(n+1)+A068774(n+1)`
-/

namespace A068789.P12049620458392199013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) + A068774 (n + 1)

end

end A068789.P12049620458392199013

/-!
# A068790: Number of strings over Z_4 of length n with trace 2 and subtrace 2.

The programs for A068790, there is no canonical definition to state claims against.
-/

/-! ## A068790.P10577445735449790589

`A068620(n+1)-2^n`
-/

namespace A068790.P10577445735449790589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068620 (n + 1) - (2 ^ n : ℤ)

end

end A068790.P10577445735449790589

/-! ## A068790.P15639304192811090841

`abs(A068620(n+1)-A000079(n))`
-/

namespace A068790.P15639304192811090841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A068620 (n + 1) - A000079 n|

end

end A068790.P15639304192811090841

/-! ## A068790.P6500611683179542129

`A157823(n+1)+A068620(n+1)`
-/

namespace A068790.P6500611683179542129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157823 (n + 1) + A068620 (n + 1)

end

end A068790.P6500611683179542129

/-! ## A068790.P5985886271130134306

`A068620(n+1)+1-A000051(n)`
-/

namespace A068790.P5985886271130134306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068620 (n + 1) + 1 - A000051 n

end

end A068790.P5985886271130134306

/-! ## A068790.P5560326318658486912

`A068620(n+1)-1-A000225(n)`
-/

namespace A068790.P5560326318658486912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068620 (n + 1) - 1 - A000225 n

end

end A068790.P5560326318658486912

/-! ## A068790.P970110445845670921

`A068774(n+1)+A068620(n+1)-A068789(n+1)`
-/

namespace A068790.P970110445845670921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068774 (n + 1) + (A068620 (n + 1) - A068789 (n + 1))

end

end A068790.P970110445845670921

/-!
# A068791: Ulam numbers such that 2*n is also an Ulam number.

The programs for A068791, there is no canonical definition to state claims against.
-/

/-! ## A068791.P9714813901165241482

`A068799(n+1)/2`
-/

namespace A068791.P9714813901165241482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068799 (n + 1) : ℚ) / 2

end

end A068791.P9714813901165241482

/-! ## A068791.P1163897339744955747

`floor(A068799(n-log2(1/2))/2)`
-/

namespace A068791.P1163897339744955747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A068799 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℚ) / 2⌋

end

end A068791.P1163897339744955747

/-! ## A068791.P11659207116276421880

`A014682(A068799(n+1))`
-/

namespace A068791.P11659207116276421880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A068799 (n + 1)).toNat

end

end A068791.P11659207116276421880

/-! ## A068791.P11157525058043945371

`∩[A002858(n+1), A048951(n+1)]/2`
-/

namespace A068791.P11157525058043945371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048951 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A068791.P11157525058043945371

/-! ## A068791.P11661001274232228193

`A004524(A068799(n+1)+1)`
-/

namespace A068791.P11661001274232228193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A068799 (n + 1) + 1).toNat

end

end A068791.P11661001274232228193

/-!
# A068792: a(n) = (n-1)*n^(n-2) + Sum_{i=1..n} (n-i)*(n^(n-i-1) + n^(n+i-3)).

The programs for A068792, the canonical program `A068792.P1636343819888297812` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068792 has offset 2).

The definition of A068792 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068792.P1636343819888297812

`(((n+2)^(n+1)-1)/(n+1))²`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A068792

/-- `(((n+2)^(n+1)-1)/(n+1))²` -/
def P1636343819888297812.Spec : Prop :=
  ∀ n, P1636343819888297812.a n = (A068792 (n + 2) : ℚ)

end A068792

/-! ## A068792.P16747149236924640004

`A060072(n+2)^2`
-/

namespace A068792.P16747149236924640004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060072 (n + 2) ^ 2

end

end A068792.P16747149236924640004

namespace A068792

/-- `A060072(n+2)^2` -/
def P16747149236924640004.Spec : Prop :=
  ∀ n, P16747149236924640004.a n = A068792 (n + 2)

end A068792

/-! ## A068792.P6182328172191513945

`record[A060072(floor(n/(xor(n, n+1)+1))+2)²]`
-/

namespace A068792.P6182328172191513945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060072 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 2).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068792.P6182328172191513945

namespace A068792

/-- `record[A060072(floor(n/(xor(n, n+1)+1))+2)²]` -/
def P6182328172191513945.Spec : Prop :=
  ∀ n, P6182328172191513945.a n = A068792 (n + 2)

end A068792

/-! ## A068792.P7969889910502995772

`A037205(n+1)*A060073(n+2)`
-/

namespace A068792.P7969889910502995772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037205 (n + 1) * A060073 (n + 2)

end

end A068792.P7969889910502995772

namespace A068792

/-- `A037205(n+1)*A060073(n+2)` -/
def P7969889910502995772.Spec : Prop :=
  ∀ n, P7969889910502995772.a n = A068792 (n + 2)

end A068792

/-! ## A068792.P4765692927334292433

`A060072(n+2)²/A007318(C(2, n+1))`
-/

namespace A068792.P4765692927334292433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060072 (n + 2) ^ 2 : ℚ) / (A007318 (Nat.choose 2 (n + 1)) : ℚ)

end

end A068792.P4765692927334292433

namespace A068792

/-- `A060072(n+2)²/A007318(C(2, n+1))` -/
def P4765692927334292433.Spec : Prop :=
  ∀ n, P4765692927334292433.a n = (A068792 (n + 2) : ℚ)

end A068792

/-!
# A068793: a(n) = Sum_{i=1..n} i*(n^(n-i-1) + n^(n+i-1)).

The programs for A068793, the canonical program `A068793.P1211834704252003361` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068793 has offset 2).

The definition of A068793 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068793.P1211834704252003361

`((n+2)^(n+2)*((n+2)^(n+2)*n+2)-(n+2)²+n+1)/(n+1)²`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A068793

/-- `((n+2)^(n+2)*((n+2)^(n+2)*n+2)-(n+2)²+n+1)/(n+1)²` -/
def P1211834704252003361.Spec : Prop :=
  ∀ n, P1211834704252003361.a n = (A068793 (n + 2) : ℚ)

end A068793

/-!
# A068794: In prime factorization of n replace all primes with the least prime factor of n; a(1)=1.

The programs for A068794, there is no canonical definition to state claims against.
-/

/-! ## A068794.P7643339960368492836

`A020639(n+1)^A001222(n+1)`
-/

namespace A068794.P7643339960368492836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A068794.P7643339960368492836

/-! ## A068794.P9376090622228030165

`A020639(n+1)^A086436(n+1)`
-/

namespace A068794.P9376090622228030165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) ^ (A086436 (n + 1) : ℤ)

end

end A068794.P9376090622228030165

/-! ## A068794.P15540394190965881542

`A020639(n+1)^val(A061142(n+1), 2)`
-/

namespace A068794.P15540394190965881542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ SequenceMachineLib.valuation (A061142 (n + 1)).toNat 2

end

end A068794.P15540394190965881542

/-! ## A068794.P1948620036572466435

`A014963(A028233(n+1))^A001222(n+1)`
-/

namespace A068794.P1948620036572466435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (A028233 (n + 1)).toNat : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A068794.P1948620036572466435

/-! ## A068794.P17534359519066224063

`A020639(n+1)^A056239(A181819(n+1))`
-/

namespace A068794.P17534359519066224063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) ^ (A056239 (A181819 (n + 1)).toNat : ℤ)

end

end A068794.P17534359519066224063

/-! ## A068794.P18364949959297920572

`A014673(2*(n+1))^Δ[A022559(n)]`
-/

namespace A068794.P18364949959297920572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014673 (2 * (n + 1)) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A068794.P18364949959297920572

/-! ## A068794.P17606318375756527260

`A014673(2*(n+1))^A001222(n+1)`
-/

namespace A068794.P17606318375756527260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014673 (2 * (n + 1)) : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A068794.P17606318375756527260

/-! ## A068794.P2787000514371986546

`A115561(4*(n+1))^Δ[A022559(n)]`
-/

namespace A068794.P2787000514371986546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115561 (4 * (n + 1)) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A068794.P2787000514371986546

/-! ## A068794.P16348786380967332333

`A020639(n+1)^A001221(A086568(n+1))`
-/

namespace A068794.P16348786380967332333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) ^ (A001221 (A086568 (n + 1)).toNat : ℤ)

end

end A068794.P16348786380967332333

/-! ## A068794.P8407076489243676579

`A347043(A347043((n+1)²)²)`
-/

namespace A068794.P8407076489243676579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347043 (A347043 ((n + 1) ^ 2) ^ 2).toNat

end

end A068794.P8407076489243676579

/-! ## A068794.P2679366171187075712

`A347045(A347045((n+1)²)²)`
-/

namespace A068794.P2679366171187075712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347045 (A347045 ((n + 1) ^ 2) ^ 2).toNat

end

end A068794.P2679366171187075712

/-!
# A068795: In prime factorization of n replace all primes with the greatest prime factor of n; a(1)=1.

The programs for A068795, the canonical program `A068795.P4272193032143847322` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068795 has offset 1).

The definition of A068795 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A068795.P4272193032143847322

`A006530(n+1)^A001222(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A068795

/-- `A006530(n+1)^A001222(n+1)` -/
def P4272193032143847322.Spec : Prop :=
  ∀ n, P4272193032143847322.a n = (A068795 (n + 1) : ℚ)

end A068795

/-! ## A068795.P12800349485211367209

`A006530(2*(n+1))^∑{e}[n+1, #]`
-/

namespace A068795.P12800349485211367209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1)) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A068795.P12800349485211367209

namespace A068795

/-- `A006530(2*(n+1))^∑{e}[n+1, #]` -/
def P12800349485211367209.Spec : Prop :=
  ∀ n, P12800349485211367209.a n = A068795 (n + 1)

end A068795

/-! ## A068795.P12257993408003718419

`∏{e}[n+1, A006530(2*n+2)^#]`
-/

namespace A068795.P12257993408003718419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A006530 (2 * n + 2) ^ Nat.factorization (f1 n) p

end

end A068795.P12257993408003718419

namespace A068795

/-- `∏{e}[n+1, A006530(2*n+2)^#]` -/
def P12257993408003718419.Spec : Prop :=
  ∀ n, P12257993408003718419.a n = A068795 (n + 1)

end A068795

/-! ## A068795.P6651156607068905917

`A139171(∏{p}[n+1, #])^∑{e}[n+1, #]`
-/

namespace A068795.P6651156607068905917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139171 (∏ p ∈ Nat.primeFactors (f1 n), p) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A068795.P6651156607068905917

namespace A068795

/-- `A139171(∏{p}[n+1, #])^∑{e}[n+1, #]` -/
def P6651156607068905917.Spec : Prop :=
  ∀ n, P6651156607068905917.a n = A068795 (n + 1)

end A068795

/-! ## A068795.P4426259465425234672

`A006530(n+1)^Δ[A022559(n)]`
-/

namespace A068795.P4426259465425234672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A068795.P4426259465425234672

namespace A068795

/-- `A006530(n+1)^Δ[A022559(n)]` -/
def P4426259465425234672.Spec : Prop :=
  ∀ n, P4426259465425234672.a n = (A068795 (n + 1) : ℚ)

end A068795

/-! ## A068795.P5447527310245076693

`A006530(n+1)^A086436(n+1)`
-/

namespace A068795.P5447527310245076693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) ^ (A086436 (n + 1) : ℤ)

end

end A068795.P5447527310245076693

namespace A068795

/-- `A006530(n+1)^A086436(n+1)` -/
def P5447527310245076693.Spec : Prop :=
  ∀ n, P5447527310245076693.a n = (A068795 (n + 1) : ℚ)

end A068795

/-! ## A068795.P16749988056216390228

`A111089(n+1)^A001222(n+1)`
-/

namespace A068795.P16749988056216390228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111089 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A068795.P16749988056216390228

namespace A068795

/-- `A111089(n+1)^A001222(n+1)` -/
def P16749988056216390228.Spec : Prop :=
  ∀ n, P16749988056216390228.a n = (A068795 (n + 1) : ℚ)

end A068795

/-! ## A068795.P2269901140897783576

`A006530(n+1)^val(A165825(n+1), 4)`
-/

namespace A068795.P2269901140897783576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4

end

end A068795.P2269901140897783576

namespace A068795

/-- `A006530(n+1)^val(A165825(n+1), 4)` -/
def P2269901140897783576.Spec : Prop :=
  ∀ n, P2269901140897783576.a n = A068795 (n + 1)

end A068795

/-! ## A068795.P8139928114372363714

`((n+1)/A052126(n+1))^A001222(n+1)`
-/

namespace A068795.P8139928114372363714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ)) ^ (A001222 (n + 1) : ℤ)

end

end A068795.P8139928114372363714

namespace A068795

/-- `((n+1)/A052126(n+1))^A001222(n+1)` -/
def P8139928114372363714.Spec : Prop :=
  ∀ n, P8139928114372363714.a n = (A068795 (n + 1) : ℚ)

end A068795

/-! ## A068795.P1022294981394323737

`A014963(A345941(n+1))^A001222(n+1)`
-/

namespace A068795.P1022294981394323737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (A345941 (n + 1)).toNat : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A068795.P1022294981394323737

namespace A068795

/-- `A014963(A345941(n+1))^A001222(n+1)` -/
def P1022294981394323737.Spec : Prop :=
  ∀ n, P1022294981394323737.a n = (A068795 (n + 1) : ℚ)

end A068795

/-! ## A068795.P10304944462351937904

`A006530(n+1)^A252736(2*(n+1))`
-/

namespace A068795.P10304944462351937904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) ^ (A252736 (2 * (n + 1)) : ℤ)

end

end A068795.P10304944462351937904

namespace A068795

/-- `A006530(n+1)^A252736(2*(n+1))` -/
def P10304944462351937904.Spec : Prop :=
  ∀ n, P10304944462351937904.a n = (A068795 (n + 1) : ℚ)

end A068795

/-! ## A068795.P5931859795324303918

`(A051664(n+1)-A070536(n+1))^A001222(n+1)`
-/

namespace A068795.P5931859795324303918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051664 (n + 1) - A070536 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A068795.P5931859795324303918

namespace A068795

/-- `(A051664(n+1)-A070536(n+1))^A001222(n+1)` -/
def P5931859795324303918.Spec : Prop :=
  ∀ n, P5931859795324303918.a n = (A068795 (n + 1) : ℚ)

end A068795

/-! ## A068795.P5954001281941527293

`gcd(A046021(n+1), A306329(n+1))`
-/

namespace A068795.P5954001281941527293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046021 (n + 1)) (A306329 (n + 1))

end

end A068795.P5954001281941527293

namespace A068795

/-- `gcd(A046021(n+1), A306329(n+1))` -/
def P5954001281941527293.Spec : Prop :=
  ∀ n, (P5954001281941527293.a n : ℤ) = A068795 (n + 1)

end A068795

/-!
# A068796: Maximum k such that k consecutive integers starting at n have distinct numbers of prime factors (counted with multiplicity).

The programs for A068796, there is no canonical definition to state claims against.
-/

/-! ## A068796.P2411711416745595955

`A001221(∑[A315987(∑[19*n]+1)])`
-/

namespace A068796.P2411711416745595955
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315987 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A068796.P2411711416745595955

/-! ## A068796.P5152247955594010292

`A001221(or(A164454(n+4), A178438(n+1)))`
-/

namespace A068796.P5152247955594010292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A164454 (n + 4)) (A178438 (n + 1))).toNat

end

end A068796.P5152247955594010292

/-! ## A068796.P11040949159162914680

`A057515(A220644(n+2)+A000975(n))`
-/

namespace A068796.P11040949159162914680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A220644 (n + 2) + A000975 n).toNat

end

end A068796.P11040949159162914680

/-! ## A068796.P14850057726038631754

`A329028(A116891(n+1)+A079467(n+3))`
-/

namespace A068796.P14850057726038631754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329028 (A116891 (n + 1) + A079467 (n + 3)).toNat

end

end A068796.P14850057726038631754

/-! ## A068796.P17800970326947389012

`A001221(A261423(2*n)+A000975(n+4))`
-/

namespace A068796.P17800970326947389012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A261423 (2 * n) + A000975 (n + 4)).toNat

end

end A068796.P17800970326947389012

/-!
# A068797: Minimum x such that f(x)=n, where f(x)=A068796(x) is the maximum k such that k consecutive integers starting at x have distinct numbers of prime factors (counted with multiplicity).

The programs for A068797, there is no canonical definition to state claims against.
-/

/-! ## A068797.P203789416812035509

`floor(A067665(A028310(n))+acot(n))`
-/

namespace A068797.P203789416812035509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067665 (A028310 n).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A068797.P203789416812035509

/-! ## A068797.P11324475113283698958

`floor(A067665(A274933(n+1))+acot(n))`
-/

namespace A068797.P11324475113283698958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067665 (A274933 (n + 1)).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A068797.P11324475113283698958

/-! ## A068797.P7008842428972806266

`A067665(A028310(n))+A000007(n)`
-/

namespace A068797.P7008842428972806266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067665 (A028310 n).toNat + A000007 n

end

end A068797.P7008842428972806266

/-! ## A068797.P9326409969539178130

`A321936(n)+A067665(A028310(n))`
-/

namespace A068797.P9326409969539178130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 n + A067665 (A028310 n).toNat

end

end A068797.P9326409969539178130

/-! ## A068797.P1781265400930626567

`A067665(A274933(n+1))+A000007(n)`
-/

namespace A068797.P1781265400930626567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067665 (A274933 (n + 1)).toNat + A000007 n

end

end A068797.P1781265400930626567

/-!
# A068798: Integers n such that n = A067030(j) for some j and A067286(j) < A067034(j).

The programs for A068798, there is no canonical definition to state claims against.
-/

/-! ## A068798.P11044192623084788108

`A067030(lt[A067286(n), A067034(n)])`
-/

namespace A068798.P11044192623084788108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067286 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A068798.P11044192623084788108

/-! ## A068798.P10424735092226590856

`xor(n*A292342(n+1), A292364(n+1))`
-/

namespace A068798.P10424735092226590856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) * A292342 (n + 1)) (A292364 (n + 1))

end

end A068798.P10424735092226590856

/-!
# A068799: Ulam numbers such that n/2 is also an Ulam number.

The programs for A068799, there is no canonical definition to state claims against.
-/

/-! ## A068799.P4346712377571522359

`2*A068791(n+1)`
-/

namespace A068799.P4346712377571522359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A068791 (n + 1)

end

end A068799.P4346712377571522359

/-! ## A068799.P11304433738376172254

`A068791(C(n+1, n))+A068791(n+1)`
-/

namespace A068799.P11304433738376172254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068791 (Nat.choose (n + 1) n) + A068791 (n + 1)

end

end A068799.P11304433738376172254

/-! ## A068799.P5487095028441995190

`A068791(n+1)+A068791(-xor(n, -1))`
-/

namespace A068799.P5487095028441995190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068791 (n + 1) + A068791 (-Int.xor (n : ℤ) (-1)).toNat

end

end A068799.P5487095028441995190

/-! ## A068799.P803330182002179069

`A068791(n+1)+A068791(gcd(n, n+1)+n)`
-/

namespace A068799.P803330182002179069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068791 (n + 1) + A068791 (Nat.gcd n (n + 1) + n)

end

end A068799.P803330182002179069

/-! ## A068799.P4103461335503621100

`A068791(n+1)+Δ[A068791(n)+a(n-1)]` with `a(0)=0`
-/

namespace A068799.P4103461335503621100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A068791 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068791 (n + 1) + (f1 (n + 1) - f1 n)

end

end A068799.P4103461335503621100

