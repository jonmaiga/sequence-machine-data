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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
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
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A373802: Primes in A373801 in order of their appearance.

The programs for A373802, there is no canonical definition to state claims against.
-/

/-! ## A373802.P17220873822036951939

`A373801(A373803(n+1))`
-/

namespace A373802.P17220873822036951939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373801 (A373803 (n + 1)).toNat

end

end A373802.P17220873822036951939

/-! ## A373802.P8054163619742885147

`A373801(eq[A008864(n+1), A373801(n+1)])`
-/

namespace A373802.P8054163619742885147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373801 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A373802.P8054163619742885147

/-! ## A373802.P15338872631924137290

`A373801(eq[A055670(n+1), A373801(n+1)])`
-/

namespace A373802.P15338872631924137290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373801 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A373802.P15338872631924137290

/-! ## A373802.P4184294696825754632

`A373801(eq[A175216(n+1), A373801(n+1)])`
-/

namespace A373802.P4184294696825754632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373801 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A373802.P4184294696825754632

/-! ## A373802.P9253807787495842691

`p?[A373801(n+1)]`
-/

namespace A373802.P9253807787495842691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A373802.P9253807787495842691

/-!
# A373803: Indices of primes in A373801.

The programs for A373803, there is no canonical definition to state claims against.
-/

/-! ## A373803.P536190368504699354

`eq[A008864(n+1), A373801(n+1)]`
-/

namespace A373803.P536190368504699354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373803.P536190368504699354

/-! ## A373803.P15732705256960157732

`eq[A055670(n+1), A373801(n+1)]`
-/

namespace A373803.P15732705256960157732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373803.P15732705256960157732

/-! ## A373803.P6234485037080587540

`eq[A175216(n+1), A373801(n+1)]`
-/

namespace A373803.P6234485037080587540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373803.P6234485037080587540

/-! ## A373803.P13919293150380541697

`record[A014688(n+1)-A373801(n+1)]`
-/

namespace A373803.P13919293150380541697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - A373801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373803.P13919293150380541697

/-! ## A373803.P61206129959719776

`eq[A000040(n+1)+1, A373801(n+1)]`
-/

namespace A373803.P61206129959719776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373803.P61206129959719776

/-!
# A373804: Primes in A374965 sorted into increasing order.

The programs for A373804, there is no canonical definition to state claims against.
-/

/-! ## A373804.P17556662687627026573

`∩[A091206(n+1), ∑[A249543(n+1)]]`
-/

namespace A373804.P17556662687627026573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091206 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373804.P17556662687627026573

/-!
# A373805: If a(n-1) is not a prime, then a(n) = 2*a(n-1) + S; otherwise set S = -S and a(n) = prime(n) + S; start with a(1) = S = 1.

The programs for A373805, there is no canonical definition to state claims against.
-/

/-! ## A373805.P2672194843257214074

`A087329(A164316(n))`
-/

namespace A373805.P2672194843257214074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087329 (A164316 n).toNat

end

end A373805.P2672194843257214074

/-! ## A373805.P14801926380446600713

`A035936(A044045(n+1))`
-/

namespace A373805.P14801926380446600713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (A044045 (n + 1)).toNat

end

end A373805.P14801926380446600713

/-! ## A373805.P7266024165422435114

`A035936(A038392(n+2))`
-/

namespace A373805.P7266024165422435114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (A038392 (n + 2)).toNat

end

end A373805.P7266024165422435114

/-! ## A373805.P6621224565410880162

`∑[A364347(A049902(n+1))]`
-/

namespace A373805.P6621224565410880162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364347 (A049902 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373805.P6621224565410880162

/-!
# A373806: Primes in A373805 in order of their occurrence.

The programs for A373806, there is no canonical definition to state claims against.
-/

/-! ## A373806.P7226300224437970682

`A373805(A373807(n+1))`
-/

namespace A373806.P7226300224437970682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373805 (A373807 (n + 1)).toNat

end

end A373806.P7226300224437970682

/-! ## A373806.P3177899064271667314

`A373805(lt[A373805(n+1)%2, 1])`
-/

namespace A373806.P3177899064271667314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373805 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373805 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A373806.P3177899064271667314

/-! ## A373806.P521537239582620370

`p?[A373805(n+1)]`
-/

namespace A373806.P521537239582620370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A373806.P521537239582620370

/-! ## A373806.P16735372638046355295

`filter[A373805(n+1), A010051(#)]`
-/

namespace A373806.P16735372638046355295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A373806.P16735372638046355295

/-! ## A373806.P6593066008090055673

`filter[A373805(n+1), A323153(#)]`
-/

namespace A373806.P6593066008090055673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A373806.P6593066008090055673

/-!
# A373807: Indices of prime terms in A373805.

The programs for A373807, there is no canonical definition to state claims against.
-/

/-! ## A373807.P17039703145325853531

`lt[A373805(n+1)%2, 1]`
-/

namespace A373807.P17039703145325853531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373805 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A373807.P17039703145325853531

/-! ## A373807.P2507535304553780505

`lt[A373805(n+1), A182986(A026351(n))]`
-/

namespace A373807.P2507535304553780505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A026351 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A373807.P2507535304553780505

/-! ## A373807.P3947876424528581780

`eq[2, A020639(A373805(n+1))]`
-/

namespace A373807.P3947876424528581780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A373805 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373807.P3947876424528581780

/-!
# A373810: a(n) is the smallest number of straight lines needed to intersect all points (k, phi(k)) for k = 1..n (where phi is the Euler totient function A000010).

The programs for A373810, there is no canonical definition to state claims against.
-/

/-! ## A373810.P12418594458530909123

`A373811(lt[A053120(3*n+2), A363530(n+1)])`
-/

namespace A373810.P12418594458530909123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373811 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A373810.P12418594458530909123

/-! ## A373810.P10849481898693926176

`A003056(lt[A265604(n+2), n])`
-/

namespace A373810.P10849481898693926176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265604 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A373810.P10849481898693926176

/-! ## A373810.P3410298200077181986

`A056811(∑[A275481(2*n+3)%(n+1)+4])`
-/

namespace A373810.P3410298200077181986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275481 (2 * n + 3)) (n + 1 : ℤ) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A373810.P3410298200077181986

/-!
# A373811: a(0) = 0. For n > 0, a(n) is the smallest number of straight lines needed to intersect all points (k, a(k)) for 0 <= k < n.

The programs for A373811, there is no canonical definition to state claims against.
-/

/-! ## A373811.P1158262370619665231

`A003056(lt[-4, A260877(n+1)])`
-/

namespace A373811.P1158262370619665231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A373811.P1158262370619665231

/-! ## A373811.P2152962294843061537

`A003056(lt[A359677(n+1), A126308(2*n+1)])`
-/

namespace A373811.P2152962294843061537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126308 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A373811.P2152962294843061537

/-! ## A373811.P18411520334496076503

`A163352(lt[A073592(n), A298398(n+1)])`
-/

namespace A373811.P18411520334496076503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A373811.P18411520334496076503

/-! ## A373811.P16892364437048738736

`A003056(lt[A374758(n), A374758(2*(n+2))])`
-/

namespace A373811.P16892364437048738736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374758 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374758 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A373811.P16892364437048738736

/-!
# A373812: Lengths of successive runs of equal terms in A373811.

The programs for A373812, there is no canonical definition to state claims against.
-/

/-! ## A373812.P11159972686435814592

`A213728(A000992(n+1))+A206916(n)`
-/

namespace A373812.P11159972686435814592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213728 (A000992 (n + 1)).toNat + A206916 n

end

end A373812.P11159972686435814592

/-! ## A373812.P4315161649507442988

`A081604(lcm(A096461(n+2), A193350(3*n+2)))`
-/

namespace A373812.P4315161649507442988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (Int.lcm (A096461 (n + 2)) (A193350 (3 * n + 2)))

end

end A373812.P4315161649507442988

/-! ## A373812.P6746281278121914350

`A358372(A198321(3*n+1)+A000041(n))`
-/

namespace A373812.P6746281278121914350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358372 (A198321 (3 * n + 1) + A000041 n).toNat

end

end A373812.P6746281278121914350

/-! ## A373812.P9225673052792917895

`A001462(2*n+1)-A293895(A293908(3*n+4))`
-/

namespace A373812.P9225673052792917895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (2 * n + 1) - A293895 (A293908 (3 * n + 4)).toNat

end

end A373812.P9225673052792917895

/-!
# A373814: RUNS transform of A373813.

The programs for A373814, there is no canonical definition to state claims against.
-/

/-! ## A373814.P7442540826237898568

`Δ[A066328(A393445(n+1))]`
-/

namespace A373814.P7442540826237898568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A393445 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373814.P7442540826237898568

/-! ## A373814.P3770689474201603372

`Δ[A393446(n+1)]`
-/

namespace A373814.P3770689474201603372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373814.P3770689474201603372

/-! ## A373814.P17104996866685670345

`A393446(n+2)-A393446(n+1)`
-/

namespace A373814.P17104996866685670345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393446 (n + 2) - A393446 (n + 1)

end

end A373814.P17104996866685670345

/-!
# A373815: RUNS transform of A373810.

The programs for A373815, there is no canonical definition to state claims against.
-/

/-! ## A373815.P1032748677513416022

`A093875(n+1)+A055642(A287470(n+1))`
-/

namespace A373815.P1032748677513416022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093875 (n + 1) + A055642 (A287470 (n + 1)).toNat

end

end A373815.P1032748677513416022

/-! ## A373815.P6074692907668638436

`A000120(A045925(n+4)+A030101(n))`
-/

namespace A373815.P6074692907668638436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A045925 (n + 4) + A030101 n).toNat

end

end A373815.P6074692907668638436

/-! ## A373815.P8804873588051543535

`A342087(3*n+1)+A055642(A000129(n))`
-/

namespace A373815.P8804873588051543535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342087 (3 * n + 1) + A055642 (A000129 n).toNat

end

end A373815.P8804873588051543535

/-! ## A373815.P399125747686807549

`A124767(A018008(n))+A060117(2*n+3)`
-/

namespace A373815.P399125747686807549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A018008 n).toNat + A060117 (2 * n + 3)

end

end A373815.P399125747686807549

/-!
# A373817: Positions of terms > 1 in the run-lengths of the first differences of the odd primes.

The programs for A373817, there is no canonical definition to state claims against.
-/

/-! ## A373817.P353011811721939142

`lt[1, A333254(n+1)]+1`
-/

namespace A373817.P353011811721939142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333254 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A373817.P353011811721939142

/-! ## A373817.P1906934990557178293

`A262564(lt[1, A333254(n+1)])`
-/

namespace A373817.P1906934990557178293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A373817.P1906934990557178293

/-!
# A373818: Expansion of 1/(2 - 1/(1 - 9*x)^(1/3)).

The programs for A373818, there is no canonical definition to state claims against.
-/

/-! ## A373818.P13327587739438983945

`A062028(A109251(n))+1`
-/

namespace A373818.P13327587739438983945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (A109251 n).toNat + 1

end

end A373818.P13327587739438983945

/-!
# A373822: Sum of the n-th maximal run of first differences of odd primes.

The programs for A373822, there is no canonical definition to state claims against.
-/

/-! ## A373822.P9243574141127253661

`Δ[A178943(n+2)]`
-/

namespace A373822.P9243574141127253661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178943 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373822.P9243574141127253661

/-! ## A373822.P13873578197739994814

`2*A373823(n+1)`
-/

namespace A373822.P13873578197739994814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A373823 (n + 1)

end

end A373822.P13873578197739994814

/-! ## A373822.P17505635156354405521

`Δ[p?[A225496(n+3)]]`
-/

namespace A373822.P17505635156354405521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225496 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373822.P17505635156354405521

/-! ## A373822.P4478337527752673207

`A004277(A373823(n+1))`
-/

namespace A373822.P4478337527752673207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A373823 (n + 1)).toNat

end

end A373822.P4478337527752673207

/-! ## A373822.P5072590088725330060

`A178943(n+3)-A178943(n+2)`
-/

namespace A373822.P5072590088725330060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178943 (n + 3) - A178943 (n + 2)

end

end A373822.P5072590088725330060

/-! ## A373822.P8036760694541295319

`A037201(n+2)*A333254(n+2)`
-/

namespace A373822.P8036760694541295319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037201 (n + 2) * A333254 (n + 2)

end

end A373822.P8036760694541295319

/-!
# A373823: Half the sum of the n-th maximal run of first differences of odd primes.

The programs for A373823, there is no canonical definition to state claims against.
-/

/-! ## A373823.P1500835182797374841

`Δ[A178943(n+2)/2]`
-/

namespace A373823.P1500835182797374841
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178943 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373823.P1500835182797374841

/-! ## A373823.P1023745314839082511

`Δ[A006254(A333214(n+1))]`
-/

namespace A373823.P1023745314839082511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (A333214 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373823.P1023745314839082511

/-! ## A373823.P8321918670099915485

`A123108(Δ[A178943(n+2)])`
-/

namespace A373823.P8321918670099915485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178943 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (f1 (n + 1) - f1 n).toNat

end

end A373823.P8321918670099915485

/-!
# A373824: Sorted positions of first appearances in the run-lengths (differing by 0) of the run-lengths (differing by 2) of the odd primes.

The programs for A373824, there is no canonical definition to state claims against.
-/

/-! ## A373824.P7152303239275516444

`record[A373825(A373819(n+1))]`
-/

namespace A373824.P7152303239275516444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373825 (A373819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373824.P7152303239275516444

/-!
# A373825: Position of first appearance of n in the run-lengths (differing by 0) of the run-lengths (differing by 2) of the odd primes.

The programs for A373825, there is no canonical definition to state claims against.
-/

/-! ## A373825.P16736575672013805957

`A194446(A280527(n))+n`
-/

namespace A373825.P16736575672013805957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194446 (A280527 n).toNat + (n : ℤ)

end

end A373825.P16736575672013805957

/-!
# A373826: Sorted positions of first appearances in the run-lengths (differing by 0) of the antirun-lengths (differing by > 2) of the odd primes.

The programs for A373826, there is no canonical definition to state claims against.
-/

/-! ## A373826.P328089508913917909

`record[A373827(A347788(n)+1)]`
-/

namespace A373826.P328089508913917909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373827 (A347788 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373826.P328089508913917909

/-!
# A373827: Position of first appearance of n in the run-lengths (differing by 0) of the antirun-lengths (differing by > 2) of the odd primes.

The programs for A373827, there is no canonical definition to state claims against.
-/

/-! ## A373827.P4535517586823820063

`A373826(Δ[ceil(n²/12)]+or(1, n))`
-/

namespace A373827.P4535517586823820063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 12⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373826 (f1 (n + 1) - f1 n + (Nat.lor 1 n : ℤ)).toNat

end

end A373827.P4535517586823820063

/-!
# A373829: Number of inefficient arrangements in A373182, where inefficient means that the maximum number of persons that a seating arrangement can hold is not achieved.

The programs for A373829, there is no canonical definition to state claims against.
-/

/-! ## A373829.P8097037723768163365

`A373182(n+1)-ceil((n+2)/2)!`
-/

namespace A373829.P8097037723768163365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373182 (n + 1) - (Nat.factorial ⌈(n + 2 : ℚ) / 2⌉.toNat : ℤ)

end

end A373829.P8097037723768163365

/-! ## A373829.P7208557362616926860

`A212598(A373182(n+1))`
-/

namespace A373829.P7208557362616926860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212598 (A373182 (n + 1)).toNat

end

end A373829.P7208557362616926860

/-!
# A373830: a(n) = 1 if the primorial base representation of n has alternating digit sum that is a multiple of 3, otherwise 0.

The programs for A373830, there is no canonical definition to state claims against.
-/

/-! ## A373830.P8924695391917497834

`char[A373831(n+1)]`
-/

namespace A373830.P8924695391917497834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373830.P8924695391917497834

/-! ## A373830.P1736384892858639243

`A373604(abs(A373605(n)))`
-/

namespace A373830.P1736384892858639243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373604 |A373605 n|.toNat

end

end A373830.P1736384892858639243

/-! ## A373830.P15567331108271261023

`A079978(A373605(n)²)`
-/

namespace A373830.P15567331108271261023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A373605 n ^ 2).toNat

end

end A373830.P15567331108271261023

/-! ## A373830.P18229056582403432338

`A079978(A373605(n)+12)`
-/

namespace A373830.P18229056582403432338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A373605 n + 12).toNat

end

end A373830.P18229056582403432338

/-! ## A373830.P4561963399979972286

`A373604(A373605(n)+12)`
-/

namespace A373830.P4561963399979972286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373604 (A373605 n + 12).toNat

end

end A373830.P4561963399979972286

/-! ## A373830.P13830086419310690571

`A079978(A373605(n)*A373605(n))`
-/

namespace A373830.P13830086419310690571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A373605 n * A373605 n).toNat

end

end A373830.P13830086419310690571

/-! ## A373830.P7499363331470703968

`A079978(A373607(n)+A049345(n))`
-/

namespace A373830.P7499363331470703968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A373607 n + A049345 n).toNat

end

end A373830.P7499363331470703968

/-! ## A373830.P6372409091640093163

`A079978(A141123(2*n+3)-A131189(n+1))`
-/

namespace A373830.P6372409091640093163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A141123 (2 * n + 3) - A131189 (n + 1)).toNat

end

end A373830.P6372409091640093163

/-! ## A373830.P17140874516037027921

`A095130(A131640(n))`
-/

namespace A373830.P17140874516037027921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095130 (A131640 n).toNat

end

end A373830.P17140874516037027921

/-! ## A373830.P5648005953407990201

`A079978(A341311(n+1)²)`
-/

namespace A373830.P5648005953407990201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A341311 (n + 1) ^ 2).toNat

end

end A373830.P5648005953407990201

/-! ## A373830.P3100104001290108805

`A267142(A096023(n+1))`
-/

namespace A373830.P3100104001290108805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267142 (A096023 (n + 1)).toNat

end

end A373830.P3100104001290108805

/-!
# A373831: Numbers whose primorial base representation has alternating digit sum that is a multiple of 3.

The programs for A373831, there is no canonical definition to state claims against.
-/

/-! ## A373831.P8717618971290599942

`lt[0, A373830(n)]`
-/

namespace A373831.P8717618971290599942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A373831.P8717618971290599942

/-! ## A373831.P1802530214826641180

`record[n*A079978(A373605(n)²)]`
-/

namespace A373831.P1802530214826641180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A079978 (A373605 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373831.P1802530214826641180

/-! ## A373831.P3113517881336516772

`filter[A004482(n), A373830(#)]`
-/

namespace A373831.P3113517881336516772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373830 (f1 j).toNat = 1) n)

end

end A373831.P3113517881336516772

/-! ## A373831.P5056076305187835598

`filter[A014681(n), A373830(#)]`
-/

namespace A373831.P5056076305187835598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373830 (f1 j).toNat = 1) n)

end

end A373831.P5056076305187835598

/-! ## A373831.P5339815941593914090

`filter[A159958(n), A373830(#)]`
-/

namespace A373831.P5339815941593914090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373830 (f1 j).toNat = 1) n)

end

end A373831.P5339815941593914090

/-! ## A373831.P15494797230149472947

`filter[A236348(n), A373830(#)]`
-/

namespace A373831.P15494797230149472947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373830 (f1 j).toNat = 1) n)

end

end A373831.P15494797230149472947

/-! ## A373831.P16087729700452750132

`filter[A288119(n), A373830(#)]`
-/

namespace A373831.P16087729700452750132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373830 (f1 j).toNat = 1) n)

end

end A373831.P16087729700452750132

/-! ## A373831.P9341273889864022778

`filter[A330396(n), A373830(#)]`
-/

namespace A373831.P9341273889864022778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373830 (f1 j).toNat = 1) n)

end

end A373831.P9341273889864022778

/-! ## A373831.P9230515927498273549

`filter[A004442(n), A373830(#)]`
-/

namespace A373831.P9230515927498273549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373830 (f1 j).toNat = 1) n)

end

end A373831.P9230515927498273549

/-! ## A373831.P17942765723141474486

`filter[A004483(n), A373830(#)]`
-/

namespace A373831.P17942765723141474486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373830 (f1 j).toNat = 1) n)

end

end A373831.P17942765723141474486

/-! ## A373831.P3182114145478510630

`filter[A064429(n), A373830(#)]`
-/

namespace A373831.P3182114145478510630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373830 (f1 j).toNat = 1) n)

end

end A373831.P3182114145478510630

/-! ## A373831.P3977636774124310681

`filter[A080412(n), A373830(#)]`
-/

namespace A373831.P3977636774124310681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373830 (f1 j).toNat = 1) n)

end

end A373831.P3977636774124310681

/-! ## A373831.P11193784270530680450

`filter[A143579(n), A373830(#)]`
-/

namespace A373831.P11193784270530680450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373830 (f1 j).toNat = 1) n)

end

end A373831.P11193784270530680450

/-! ## A373831.P2022203033687356037

`filter[A160017(n), A373830(#)]`
-/

namespace A373831.P2022203033687356037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373830 (f1 j).toNat = 1) n)

end

end A373831.P2022203033687356037

/-! ## A373831.P6963005360335964447

`eq[A329684(n), A373830(n)]`
-/

namespace A373831.P6963005360335964447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373831.P6963005360335964447

/-! ## A373831.P9398900540356383743

`eq[A373565(n), A373830(n)]`
-/

namespace A373831.P9398900540356383743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373831.P9398900540356383743

/-! ## A373831.P15900566187141463290

`filter[A253074(n+1), A373830(#)]`
-/

namespace A373831.P15900566187141463290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373830 (f1 j).toNat = 1) n)

end

end A373831.P15900566187141463290

/-! ## A373831.P3885946091336049196

`eq[A045496(n+1), A373830(n)]`
-/

namespace A373831.P3885946091336049196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373831.P3885946091336049196

/-! ## A373831.P16039669890939929880

`eq[A045497(n+1), A373830(n)]`
-/

namespace A373831.P16039669890939929880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373831.P16039669890939929880

/-! ## A373831.P6968730020957807739

`eq[A059811(n+1), A373830(n)]`
-/

namespace A373831.P6968730020957807739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373831.P6968730020957807739

/-!
# A373832: a(n) = n mod A276150(n), where A276150 is the digit sum in the primorial base.

The programs for A373832, the canonical program `A373832.P1127002514526717850` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373832 has offset 1).

The definition of A373832 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373832.P1127002514526717850

`(n+1)%A276150(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A373832

/-- `(n+1)%A276150(n+1)` -/
def P1127002514526717850.Spec : Prop :=
  ∀ n, P1127002514526717850.a n = A373832 (n + 1)

theorem P1127002514526717850.correct : P1127002514526717850.Spec := by
  intro n
  simp only [A373832, Nat.add_sub_cancel]

end A373832

/-! ## A373832.P15889762637821556455

`A373850(A276086(n+1))`
-/

namespace A373832.P15889762637821556455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373850 (A276086 (n + 1)).toNat

end

end A373832.P15889762637821556455

namespace A373832

/-- `A373850(A276086(n+1))` -/
def P15889762637821556455.Spec : Prop :=
  ∀ n, P15889762637821556455.a n = A373832 (n + 1)

end A373832

/-! ## A373832.P10403397716633783024

`A000027(n+1)%A328630(A328626(n+1))`
-/

namespace A373832.P10403397716633783024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A328630 (A328626 (n + 1)).toNat)

end

end A373832.P10403397716633783024

namespace A373832

/-- `A000027(n+1)%A328630(A328626(n+1))` -/
def P10403397716633783024.Spec : Prop :=
  ∀ n, P10403397716633783024.a n = A373832 (n + 1)

end A373832

/-! ## A373832.P16729338840659465342

`A028310(n+1)%A007953(A049345(n+1))`
-/

namespace A373832.P16729338840659465342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (n + 1)) (A007953 (A049345 (n + 1)).toNat)

end

end A373832.P16729338840659465342

namespace A373832

/-- `A028310(n+1)%A007953(A049345(n+1))` -/
def P16729338840659465342.Spec : Prop :=
  ∀ n, P16729338840659465342.a n = A373832 (n + 1)

end A373832

/-! ## A373832.P2721577428405779173

`A296882(n+1)%A001222(A276086(n+1))`
-/

namespace A373832.P2721577428405779173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296882 (n + 1)) (A001222 (A276086 (n + 1)).toNat)

end

end A373832.P2721577428405779173

namespace A373832

/-- `A296882(n+1)%A001222(A276086(n+1))` -/
def P2721577428405779173.Spec : Prop :=
  ∀ n, P2721577428405779173.a n = A373832 (n + 1)

end A373832

/-! ## A373832.P7270066090894799760

`A008619(2*n+1)%A001222(A276086(n+1))`
-/

namespace A373832.P7270066090894799760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (2 * n + 1)) (A001222 (A276086 (n + 1)).toNat)

end

end A373832.P7270066090894799760

namespace A373832

/-- `A008619(2*n+1)%A001222(A276086(n+1))` -/
def P7270066090894799760.Spec : Prop :=
  ∀ n, P7270066090894799760.a n = A373832 (n + 1)

end A373832

/-!
# A373833: a(n) = gcd(n, A276150(n)), where A276150 is the digit sum in the primorial base.

The programs for A373833, the canonical program `A373833.P1677573499582523216` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373833 has offset 0).

The definition of A373833 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373833.P1677573499582523216

`gcd(n, A276150(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A373833

/-- `gcd(n, A276150(n))` -/
def P1677573499582523216.Spec : Prop :=
  ∀ n, (P1677573499582523216.a n : ℤ) = A373833 n

theorem P1677573499582523216.correct : P1677573499582523216.Spec := by
  intro n
  simp only [A373833]

end A373833

/-! ## A373833.P15672920687075911800

`A373835(A276086(n))`
-/

namespace A373833.P15672920687075911800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373835 (A276086 n).toNat

end

end A373833.P15672920687075911800

namespace A373833

/-- `A373835(A276086(n))` -/
def P15672920687075911800.Spec : Prop :=
  ∀ n, P15672920687075911800.a n = A373833 n

end A373833

/-! ## A373833.P13725259489644992310

`gcd(char[1]+n, A007953(A049345(n)))`
-/

namespace A373833.P13725259489644992310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((if ∃ j, f1 j = n then 1 else 0) + n : ℕ) : ℤ) (A007953 (A049345 n).toNat)

end

end A373833.P13725259489644992310

namespace A373833

/-- `gcd(char[1]+n, A007953(A049345(n)))` -/
def P13725259489644992310.Spec : Prop :=
  ∀ n, (P13725259489644992310.a n : ℤ) = A373833 n

end A373833

/-! ## A373833.P16439105527195588132

`gcd(n*(-1)^n, A001222(A278226(n)))`
-/

namespace A373833.P16439105527195588132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * (-1) ^ n) (A001222 (A278226 n).toNat)

end

end A373833.P16439105527195588132

namespace A373833

/-- `gcd(n*(-1)^n, A001222(A278226(n)))` -/
def P16439105527195588132.Spec : Prop :=
  ∀ n, (P16439105527195588132.a n : ℤ) = A373833 n

end A373833

/-! ## A373833.P6591701530889081986

`gcd(A000120(A277022(n)), A181983(n))`
-/

namespace A373833.P6591701530889081986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 (A277022 n).toNat) (A181983 n)

end

end A373833.P6591701530889081986

namespace A373833

/-- `gcd(A000120(A277022(n)), A181983(n))` -/
def P6591701530889081986.Spec : Prop :=
  ∀ n, (P6591701530889081986.a n : ℤ) = A373833 n

end A373833

/-! ## A373833.P13795540738208353305

`gcd(A000290(n), A001222(A276086(n)))`
-/

namespace A373833.P13795540738208353305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000290 n) (A001222 (A276086 n).toNat)

end

end A373833.P13795540738208353305

namespace A373833

/-- `gcd(A000290(n), A001222(A276086(n)))` -/
def P13795540738208353305.Spec : Prop :=
  ∀ n, (P13795540738208353305.a n : ℤ) = A373833 n

end A373833

/-!
# A373834: a(n) = 1 if n is a multiple of A276150(n), otherwise 0, where A276150 is the digit sum in the primorial base.

The programs for A373834, the canonical program `A373834.P8702571557965328653` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373834 has offset 0).

The definition of A373834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373834.P18253367396487661828

`A373851(A276086(n))`
-/

namespace A373834.P18253367396487661828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373851 (A276086 n).toNat

end

end A373834.P18253367396487661828

namespace A373834

/-- `A373851(A276086(n))` -/
def P18253367396487661828.Spec : Prop :=
  ∀ n, P18253367396487661828.a n = A373834 n

end A373834

/-! ## A373834.P8702571557965328653

`(16^A373832(round(sqrt(n²+1))))%4`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A373834

/-- `(16^A373832(round(sqrt(n²+1))))%4` -/
def P8702571557965328653.Spec : Prop :=
  ∀ n, P8702571557965328653.a n = A373834 n

theorem P8702571557965328653.correct : P8702571557965328653.Spec := by
  intro n
  simp only [A373834]

end A373834

/-! ## A373834.P14309656065537094070

`A000007(n)+char[A333426(n+1)]`
-/

namespace A373834.P14309656065537094070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333426 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A373834.P14309656065537094070

namespace A373834

/-- `A000007(n)+char[A333426(n+1)]` -/
def P14309656065537094070.Spec : Prop :=
  ∀ n, P14309656065537094070.a n = A373834 n

end A373834

/-! ## A373834.P2165992473472008922

`(char[A333426(n+1)]-A000038(n))^n²`
-/

namespace A373834.P2165992473472008922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333426 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A000038 n) ^ n ^ 2

end

end A373834.P2165992473472008922

namespace A373834

/-- `(char[A333426(n+1)]-A000038(n))^n²` -/
def P2165992473472008922.Spec : Prop :=
  ∀ n, P2165992473472008922.a n = A373834 n

end A373834

/-! ## A373834.P8544382884960421171

`A061007(A098365(n+1))+char[A333426(n+1)]`
-/

namespace A373834.P8544382884960421171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333426 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (A098365 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A373834.P8544382884960421171

namespace A373834

/-- `A061007(A098365(n+1))+char[A333426(n+1)]` -/
def P8544382884960421171.Spec : Prop :=
  ∀ n, P8544382884960421171.a n = A373834 n

end A373834

/-! ## A373834.P11183068421222403230

`A373851(A328580(n)+A328476(n))`
-/

namespace A373834.P11183068421222403230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373851 (A328580 n + A328476 n).toNat

end

end A373834.P11183068421222403230

namespace A373834

/-- `A373851(A328580(n)+A328476(n))` -/
def P11183068421222403230.Spec : Prop :=
  ∀ n, P11183068421222403230.a n = A373834 n

end A373834

/-! ## A373834.P7974305944028844129

`A373851(A061007(2*(n+2))+A327860(n)-A342016(n))`
-/

namespace A373834.P7974305944028844129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373851 (A061007 (2 * (n + 2)) + (A327860 n - A342016 n)).toNat

end

end A373834.P7974305944028844129

namespace A373834

/-- `A373851(A061007(2*(n+2))+A327860(n)-A342016(n))` -/
def P7974305944028844129.Spec : Prop :=
  ∀ n, P7974305944028844129.a n = A373834 n

end A373834

/-!
# A373835: a(n) = gcd(bigomega(n), A276085(n)), where bigomega (A001222), and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

The programs for A373835, the canonical program `A373835.P5094601012644144841` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373835 has offset 1).

The definition of A373835 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373835.P5094601012644144841

`gcd(A001222(n+1), A276085(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A373835

/-- `gcd(A001222(n+1), A276085(n+1))` -/
def P5094601012644144841.Spec : Prop :=
  ∀ n, (P5094601012644144841.a n : ℤ) = A373835 (n + 1)

theorem P5094601012644144841.correct : P5094601012644144841.Spec := by
  intro n
  simp only [A373835, Nat.add_sub_cancel]

end A373835

/-! ## A373835.P5793222050231525118

`gcd(Δ[A022559(n)], A276085(n+1))`
-/

namespace A373835.P5793222050231525118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A276085 (n + 1))

end

end A373835.P5793222050231525118

namespace A373835

/-- `gcd(Δ[A022559(n)], A276085(n+1))` -/
def P5793222050231525118.Spec : Prop :=
  ∀ n, (P5793222050231525118.a n : ℤ) = A373835 (n + 1)

end A373835

/-! ## A373835.P12031680811716439221

`gcd(A073093(n+1)-1, A376413(A372575(n+1)))`
-/

namespace A373835.P12031680811716439221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073093 (n + 1) - 1) (A376413 (A372575 (n + 1)).toNat)

end

end A373835.P12031680811716439221

namespace A373835

/-- `gcd(A073093(n+1)-1, A376413(A372575(n+1)))` -/
def P12031680811716439221.Spec : Prop :=
  ∀ n, (P12031680811716439221.a n : ℤ) = A373835 (n + 1)

end A373835

/-! ## A373835.P16769313443084147124

`gcd(A255201(n+1)/2, A276085(A014682(2*(n+1))))`
-/

namespace A373835.P16769313443084147124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A255201 (n + 1) : ℚ) / 2)) (A276085 (A014682 (2 * (n + 1))).toNat)

end

end A373835.P16769313443084147124

namespace A373835

/-- `gcd(A255201(n+1)/2, A276085(A014682(2*(n+1))))` -/
def P16769313443084147124.Spec : Prop :=
  ∀ n, (P16769313443084147124.a n : ℤ) = A373835 (n + 1)

end A373835

/-! ## A373835.P11190510805996566152

`gcd(A276075(n+1), A360616(A000982(2*(n+1))))`
-/

namespace A373835.P11190510805996566152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276075 (n + 1)) (A360616 (A000982 (2 * (n + 1))).toNat)

end

end A373835.P11190510805996566152

namespace A373835

/-- `gcd(A276075(n+1), A360616(A000982(2*(n+1))))` -/
def P11190510805996566152.Spec : Prop :=
  ∀ n, (P11190510805996566152.a n : ℤ) = A373835 (n + 1)

end A373835

/-!
# A373836: a(n) = 1 if bigomega(n) and A276085(n) are both multiples of 3, otherwise 0, where bigomega (A001222) and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

The programs for A373836, the canonical program `A373836.P9775404234224644830` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373836 has offset 1).

The definition of A373836 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373835, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373836.P9775404234224644830

`A079978(A373835(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A373836

/-- `A079978(A373835(n+1))` -/
def P9775404234224644830.Spec : Prop :=
  ∀ n, P9775404234224644830.a n = A373836 (n + 1)

theorem P9775404234224644830.correct : P9775404234224644830.Spec := by
  intro n
  simp only [A373836, Nat.add_sub_cancel]

end A373836

/-! ## A373836.P8183275201761157362

`char[A373837(n+1)-1]`
-/

namespace A373836.P8183275201761157362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373837 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373836.P8183275201761157362

namespace A373836

/-- `char[A373837(n+1)-1]` -/
def P8183275201761157362.Spec : Prop :=
  ∀ n, (P8183275201761157362.a n : ℤ) = A373836 (n + 1)

end A373836

/-! ## A373836.P3663007357912684239

`A144604(A373835(n+1)+2)`
-/

namespace A373836.P3663007357912684239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144604 (A373835 (n + 1) + 2).toNat

end

end A373836.P3663007357912684239

namespace A373836

/-- `A144604(A373835(n+1)+2)` -/
def P3663007357912684239.Spec : Prop :=
  ∀ n, P3663007357912684239.a n = A373836 (n + 1)

end A373836

/-! ## A373836.P14977565913195360682

`A372573(n+1)*A373975(n+1)`
-/

namespace A373836.P14977565913195360682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (n + 1) * A373975 (n + 1)

end

end A373836.P14977565913195360682

namespace A373836

/-- `A372573(n+1)*A373975(n+1)` -/
def P14977565913195360682.Spec : Prop :=
  ∀ n, P14977565913195360682.a n = A373836 (n + 1)

end A373836

/-! ## A373836.P14064851060035819514

`and(A067513(2*n+5), A245306(A373835(n+1)))`
-/

namespace A373836.P14064851060035819514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A067513 (2 * n + 5)) (A245306 (A373835 (n + 1)).toNat)

end

end A373836.P14064851060035819514

namespace A373836

/-- `and(A067513(2*n+5), A245306(A373835(n+1)))` -/
def P14064851060035819514.Spec : Prop :=
  ∀ n, P14064851060035819514.a n = A373836 (n + 1)

end A373836

/-! ## A373836.P1519190342298875131

`A121802((A304465(n+1)+1)²)`
-/

namespace A373836.P1519190342298875131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121802 ((A304465 (n + 1) + 1) ^ 2).toNat

end

end A373836.P1519190342298875131

namespace A373836

/-- `A121802((A304465(n+1)+1)²)` -/
def P1519190342298875131.Spec : Prop :=
  ∀ n, P1519190342298875131.a n = A373836 (n + 1)

end A373836

/-! ## A373836.P13544959755044942725

`A372573(A165830(n+1))*A372573(n+1)`
-/

namespace A373836.P13544959755044942725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (A165830 (n + 1)).toNat * A372573 (n + 1)

end

end A373836.P13544959755044942725

namespace A373836

/-- `A372573(A165830(n+1))*A372573(n+1)` -/
def P13544959755044942725.Spec : Prop :=
  ∀ n, P13544959755044942725.a n = A373836 (n + 1)

end A373836

/-! ## A373836.P15116192678434236260

`A023533(∑{d}[n+1, A351564(#)]%A206493(n+4))`
-/

namespace A373836.P15116192678434236260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (Int.tmod (∑ d ∈ Nat.divisors (f1 n), A351564 d) (A206493 (n + 4))).toNat

end

end A373836.P15116192678434236260

namespace A373836

/-- `A023533(∑{d}[n+1, A351564(#)]%A206493(n+4))` -/
def P15116192678434236260.Spec : Prop :=
  ∀ n, P15116192678434236260.a n = A373836 (n + 1)

end A373836

/-! ## A373836.P14695888976873587006

`A010057(A038548(A061200((n+1)²)))`
-/

namespace A373836.P14695888976873587006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A038548 (A061200 ((n + 1) ^ 2)).toNat).toNat

end

end A373836.P14695888976873587006

namespace A373836

/-- `A010057(A038548(A061200((n+1)²)))` -/
def P14695888976873587006.Spec : Prop :=
  ∀ n, P14695888976873587006.a n = A373836 (n + 1)

end A373836

/-! ## A373836.P3572602246843680885

`and(A078555(n), A373975(n+1))`
-/

namespace A373836.P3572602246843680885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078555 n) (A373975 (n + 1))

end

end A373836.P3572602246843680885

namespace A373836

/-- `and(A078555(n), A373975(n+1))` -/
def P3572602246843680885.Spec : Prop :=
  ∀ n, P3572602246843680885.a n = A373836 (n + 1)

end A373836

/-!
# A373837: Numbers k such that bigomega(k) and A276085(k) are both multiples of 3, where bigomega (A001222) and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

The programs for A373837, the canonical program `A373837.P11600665445971385302` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373837 has offset 1).

The definition of A373837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373837.P5940759533195201875

`filter[A305810(n+1), A373836(#)]`
-/

namespace A373837.P5940759533195201875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373836 (f1 j).toNat = 1) n)

end

end A373837.P5940759533195201875

namespace A373837

/-- `filter[A305810(n+1), A373836(#)]` -/
def P5940759533195201875.Spec : Prop :=
  ∀ n, P5940759533195201875.a n = A373837 (n + 1)

end A373837

/-! ## A373837.P5420901196749116883

`filter[A305811(n+1), A373836(#)]`
-/

namespace A373837.P5420901196749116883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373836 (f1 j).toNat = 1) n)

end

end A373837.P5420901196749116883

namespace A373837

/-- `filter[A305811(n+1), A373836(#)]` -/
def P5420901196749116883.Spec : Prop :=
  ∀ n, P5420901196749116883.a n = A373837 (n + 1)

end A373837

/-! ## A373837.P10841108223345849941

`filter[A305894(n+1), A373836(#)]`
-/

namespace A373837.P10841108223345849941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373836 (f1 j).toNat = 1) n)

end

end A373837.P10841108223345849941

namespace A373837

/-- `filter[A305894(n+1), A373836(#)]` -/
def P10841108223345849941.Spec : Prop :=
  ∀ n, P10841108223345849941.a n = A373837 (n + 1)

end A373837

/-! ## A373837.P3911215574325928813

`filter[A305903(n+1), A373836(#)]`
-/

namespace A373837.P3911215574325928813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373836 (f1 j).toNat = 1) n)

end

end A373837.P3911215574325928813

namespace A373837

/-- `filter[A305903(n+1), A373836(#)]` -/
def P3911215574325928813.Spec : Prop :=
  ∀ n, P3911215574325928813.a n = A373837 (n + 1)

end A373837

/-! ## A373837.P3081811949366202044

`filter[A305904(n+1), A373836(#)]`
-/

namespace A373837.P3081811949366202044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373836 (f1 j).toNat = 1) n)

end

end A373837.P3081811949366202044

namespace A373837

/-- `filter[A305904(n+1), A373836(#)]` -/
def P3081811949366202044.Spec : Prop :=
  ∀ n, P3081811949366202044.a n = A373837 (n + 1)

end A373837

/-! ## A373837.P13979992317458544144

`filter[A376198(n+1), A373836(#)]`
-/

namespace A373837.P13979992317458544144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373836 (f1 j).toNat = 1) n)

end

end A373837.P13979992317458544144

namespace A373837

/-- `filter[A376198(n+1), A373836(#)]` -/
def P13979992317458544144.Spec : Prop :=
  ∀ n, P13979992317458544144.a n = A373837 (n + 1)

end A373837

/-! ## A373837.P11600665445971385302

`filter[A305800(n+1), A373836(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A373837

/-- `filter[A305800(n+1), A373836(#)]` -/
def P11600665445971385302.Spec : Prop :=
  ∀ n, P11600665445971385302.a n = A373837 (n + 1)

theorem P11600665445971385302.correct : P11600665445971385302.Spec := by
  intro n
  simp only [A373837, Nat.add_sub_cancel]

end A373837

/-! ## A373837.P961544261984390635

`filter[A305801(n+1), A373836(#)]`
-/

namespace A373837.P961544261984390635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373836 (f1 j).toNat = 1) n)

end

end A373837.P961544261984390635

namespace A373837

/-- `filter[A305801(n+1), A373836(#)]` -/
def P961544261984390635.Spec : Prop :=
  ∀ n, P961544261984390635.a n = A373837 (n + 1)

end A373837

/-! ## A373837.P9504285488654162146

`filter[A305900(n+1), A373836(#)]`
-/

namespace A373837.P9504285488654162146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373836 (f1 j).toNat = 1) n)

end

end A373837.P9504285488654162146

namespace A373837

/-- `filter[A305900(n+1), A373836(#)]` -/
def P9504285488654162146.Spec : Prop :=
  ∀ n, P9504285488654162146.a n = A373837 (n + 1)

end A373837

/-! ## A373837.P6684192140448497464

`filter[A319704(n+1), A373836(#)]`
-/

namespace A373837.P6684192140448497464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373836 (f1 j).toNat = 1) n)

end

end A373837.P6684192140448497464

namespace A373837

/-- `filter[A319704(n+1), A373836(#)]` -/
def P6684192140448497464.Spec : Prop :=
  ∀ n, P6684192140448497464.a n = A373837 (n + 1)

end A373837

/-! ## A373837.P12857638104261166928

`filter[A319707(n+1), A373836(#)]`
-/

namespace A373837.P12857638104261166928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373836 (f1 j).toNat = 1) n)

end

end A373837.P12857638104261166928

namespace A373837

/-- `filter[A319707(n+1), A373836(#)]` -/
def P12857638104261166928.Spec : Prop :=
  ∀ n, P12857638104261166928.a n = A373837 (n + 1)

end A373837

/-! ## A373837.P5426165184678484259

`filter[A331304(n+1), A373836(#)]`
-/

namespace A373837.P5426165184678484259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373836 (f1 j).toNat = 1) n)

end

end A373837.P5426165184678484259

namespace A373837

/-- `filter[A331304(n+1), A373836(#)]` -/
def P5426165184678484259.Spec : Prop :=
  ∀ n, P5426165184678484259.a n = A373837 (n + 1)

end A373837

/-! ## A373837.P527133131431997656

`filter[A379000(n+1), A373836(#)]`
-/

namespace A373837.P527133131431997656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373836 (f1 j).toNat = 1) n)

end

end A373837.P527133131431997656

namespace A373837

/-- `filter[A379000(n+1), A373836(#)]` -/
def P527133131431997656.Spec : Prop :=
  ∀ n, P527133131431997656.a n = A373837 (n + 1)

end A373837

/-! ## A373837.P3267763616256509672

`filter[A305979(n+1), A373836(#)]`
-/

namespace A373837.P3267763616256509672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373836 (f1 j).toNat = 1) n)

end

end A373837.P3267763616256509672

namespace A373837

/-- `filter[A305979(n+1), A373836(#)]` -/
def P3267763616256509672.Spec : Prop :=
  ∀ n, P3267763616256509672.a n = A373837 (n + 1)

end A373837

/-! ## A373837.P3554161919816099857

`filter[A305975(n+1), A373836(#)]`
-/

namespace A373837.P3554161919816099857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373836 (f1 j).toNat = 1) n)

end

end A373837.P3554161919816099857

namespace A373837

/-- `filter[A305975(n+1), A373836(#)]` -/
def P3554161919816099857.Spec : Prop :=
  ∀ n, P3554161919816099857.a n = A373837 (n + 1)

end A373837

/-! ## A373837.P15825131254218684710

`filter[A305976(n+1), A373836(#)]`
-/

namespace A373837.P15825131254218684710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373836 (f1 j).toNat = 1) n)

end

end A373837.P15825131254218684710

namespace A373837

/-- `filter[A305976(n+1), A373836(#)]` -/
def P15825131254218684710.Spec : Prop :=
  ∀ n, P15825131254218684710.a n = A373837 (n + 1)

end A373837

/-! ## A373837.P15684989960943703539

`filter[A305901(n+1), A373836(#)]`
-/

namespace A373837.P15684989960943703539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373836 (f1 j).toNat = 1) n)

end

end A373837.P15684989960943703539

namespace A373837

/-- `filter[A305901(n+1), A373836(#)]` -/
def P15684989960943703539.Spec : Prop :=
  ∀ n, P15684989960943703539.a n = A373837 (n + 1)

end A373837

/-! ## A373837.P16566241833173276010

`filter[A379053(n+1), A373836(#)]`
-/

namespace A373837.P16566241833173276010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373836 (f1 j).toNat = 1) n)

end

end A373837.P16566241833173276010

namespace A373837

/-- `filter[A379053(n+1), A373836(#)]` -/
def P16566241833173276010.Spec : Prop :=
  ∀ n, P16566241833173276010.a n = A373837 (n + 1)

end A373837

/-! ## A373837.P17064736203116120877

`filter[A324400(n+1), A373836(#)]`
-/

namespace A373837.P17064736203116120877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373836 (f1 j).toNat = 1) n)

end

end A373837.P17064736203116120877

namespace A373837

/-- `filter[A324400(n+1), A373836(#)]` -/
def P17064736203116120877.Spec : Prop :=
  ∀ n, P17064736203116120877.a n = A373837 (n + 1)

end A373837

/-!
# A373838: a(n) = 1 if n and A276150(n) are both multiples of 3, otherwise 0, where A276150 is the digit sum in the primorial base.

The programs for A373838, the canonical program `A373838.P492642340660410059` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373838 has offset 0).

The definition of A373838 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373833, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373838.P492642340660410059

`A079978(A373833(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A373838

/-- `A079978(A373833(n))` -/
def P492642340660410059.Spec : Prop :=
  ∀ n, P492642340660410059.a n = A373838 n

theorem P492642340660410059.correct : P492642340660410059.Spec := by
  intro n
  simp only [A373838]

end A373838

/-!
# A373839: Numbers k such that k and A276150(k) are both multiples of 3, where A276150 is the digit sum in the primorial base.

The programs for A373839, the canonical program `A373839.P9268052509882335273` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373839 has offset 1).

The definition of A373839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5556 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373839.P9268052509882335273

`eq[n, n*A373838(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A373839

/-- `eq[n, n*A373838(n)]` -/
def P9268052509882335273.Spec : Prop :=
  ∀ n, (P9268052509882335273.a n : ℤ) = A373839 (n + 1)

theorem P9268052509882335273.correct : P9268052509882335273.Spec := by
  intro n
  simp only [A373839, Nat.add_sub_cancel]

end A373839

/-! ## A373839.P4159419138335906090

`eq[A293668(n), A373838(n)]`
-/

namespace A373839.P4159419138335906090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373838 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373839.P4159419138335906090

namespace A373839

/-- `eq[A293668(n), A373838(n)]` -/
def P4159419138335906090.Spec : Prop :=
  ∀ n, (P4159419138335906090.a n : ℤ) = A373839 (n + 1)

end A373839

/-! ## A373839.P7396803753902857458

`filter[A373841(2*n+1), A373838(#)]`
-/

namespace A373839.P7396803753902857458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373841 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373838 (f1 j).toNat = 1) n)

end

end A373839.P7396803753902857458

namespace A373839

/-- `filter[A373841(2*n+1), A373838(#)]` -/
def P7396803753902857458.Spec : Prop :=
  ∀ n, P7396803753902857458.a n = A373839 (n + 1)

end A373839

/-! ## A373839.P9789250314667906115

`filter[A014682(n), A373838(#)]`
-/

namespace A373839.P9789250314667906115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373838 (f1 j).toNat = 1) n)

end

end A373839.P9789250314667906115

namespace A373839

/-- `filter[A014682(n), A373838(#)]` -/
def P9789250314667906115.Spec : Prop :=
  ∀ n, P9789250314667906115.a n = A373839 (n + 1)

end A373839

/-! ## A373839.P15443031055237514157

`filter[A008585(n), A373838(#)]`
-/

namespace A373839.P15443031055237514157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373838 (f1 j).toNat = 1) n)

end

end A373839.P15443031055237514157

namespace A373839

/-- `filter[A008585(n), A373838(#)]` -/
def P15443031055237514157.Spec : Prop :=
  ∀ n, P15443031055237514157.a n = A373839 (n + 1)

end A373839

/-! ## A373839.P6855500669735644639

`filter[A008585(n), A373840(#)]`
-/

namespace A373839.P6855500669735644639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373840 (f1 j).toNat = 1) n)

end

end A373839.P6855500669735644639

namespace A373839

/-- `filter[A008585(n), A373840(#)]` -/
def P6855500669735644639.Spec : Prop :=
  ∀ n, P6855500669735644639.a n = A373839 (n + 1)

end A373839

/-! ## A373839.P10095393351107567974

`∩[A373841(n+1), A008585(n)]`
-/

namespace A373839.P10095393351107567974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373839.P10095393351107567974

namespace A373839

/-- `∩[A373841(n+1), A008585(n)]` -/
def P10095393351107567974.Spec : Prop :=
  ∀ n, (P10095393351107567974.a n : ℤ) = A373839 (n + 1)

end A373839

/-! ## A373839.P9947547515320732725

`filter[A204502(n+1), A373838(#)]`
-/

namespace A373839.P9947547515320732725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373838 (f1 j).toNat = 1) n)

end

end A373839.P9947547515320732725

namespace A373839

/-- `filter[A204502(n+1), A373838(#)]` -/
def P9947547515320732725.Spec : Prop :=
  ∀ n, P9947547515320732725.a n = A373839 (n + 1)

end A373839

/-! ## A373839.P13448205191692540137

`filter[A204502(n+1), A373840(#)]`
-/

namespace A373839.P13448205191692540137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373840 (f1 j).toNat = 1) n)

end

end A373839.P13448205191692540137

namespace A373839

/-- `filter[A204502(n+1), A373840(#)]` -/
def P13448205191692540137.Spec : Prop :=
  ∀ n, P13448205191692540137.a n = A373839 (n + 1)

end A373839

/-! ## A373839.P4678746995936398612

`filter[A296515(n+1), A373838(#)]`
-/

namespace A373839.P4678746995936398612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373838 (f1 j).toNat = 1) n)

end

end A373839.P4678746995936398612

namespace A373839

/-- `filter[A296515(n+1), A373838(#)]` -/
def P4678746995936398612.Spec : Prop :=
  ∀ n, P4678746995936398612.a n = A373839 (n + 1)

end A373839

/-! ## A373839.P4608495745001717213

`filter[A296515(n+1), A373840(#)]`
-/

namespace A373839.P4608495745001717213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373840 (f1 j).toNat = 1) n)

end

end A373839.P4608495745001717213

namespace A373839

/-- `filter[A296515(n+1), A373840(#)]` -/
def P4608495745001717213.Spec : Prop :=
  ∀ n, P4608495745001717213.a n = A373839 (n + 1)

end A373839

/-! ## A373839.P7941937177567003217

`∩[A204502(n+1), A373841(n+1)]`
-/

namespace A373839.P7941937177567003217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373839.P7941937177567003217

namespace A373839

/-- `∩[A204502(n+1), A373841(n+1)]` -/
def P7941937177567003217.Spec : Prop :=
  ∀ n, (P7941937177567003217.a n : ℤ) = A373839 (n + 1)

end A373839

/-! ## A373839.P2257045599775064585

`filter[A159979(n), A373838(#)]`
-/

namespace A373839.P2257045599775064585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373838 (f1 j).toNat = 1) n)

end

end A373839.P2257045599775064585

namespace A373839

/-- `filter[A159979(n), A373838(#)]` -/
def P2257045599775064585.Spec : Prop :=
  ∀ n, P2257045599775064585.a n = A373839 (n + 1)

end A373839

/-! ## A373839.P10080924124966129330

`filter[A176409(n+1), A373838(#)]`
-/

namespace A373839.P10080924124966129330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373838 (f1 j).toNat = 1) n)

end

end A373839.P10080924124966129330

namespace A373839

/-- `filter[A176409(n+1), A373838(#)]` -/
def P10080924124966129330.Spec : Prop :=
  ∀ n, P10080924124966129330.a n = A373839 (n + 1)

end A373839

/-! ## A373839.P16577708126368211258

`filter[A061641(n+1), A373838(#)]`
-/

namespace A373839.P16577708126368211258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373838 (f1 j).toNat = 1) n)

end

end A373839.P16577708126368211258

namespace A373839

/-- `filter[A061641(n+1), A373838(#)]` -/
def P16577708126368211258.Spec : Prop :=
  ∀ n, P16577708126368211258.a n = A373839 (n + 1)

end A373839

/-! ## A373839.P4423849047866239579

`filter[A055264(n), A373838(#)]`
-/

namespace A373839.P4423849047866239579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373838 (f1 j).toNat = 1) n)

end

end A373839.P4423849047866239579

namespace A373839

/-- `filter[A055264(n), A373838(#)]` -/
def P4423849047866239579.Spec : Prop :=
  ∀ n, P4423849047866239579.a n = A373839 (n + 1)

end A373839

/-! ## A373839.P7027391854808053454

`filter[A375852(n+1), A373838(#)]`
-/

namespace A373839.P7027391854808053454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373838 (f1 j).toNat = 1) n)

end

end A373839.P7027391854808053454

namespace A373839

/-- `filter[A375852(n+1), A373838(#)]` -/
def P7027391854808053454.Spec : Prop :=
  ∀ n, P7027391854808053454.a n = A373839 (n + 1)

end A373839

/-! ## A373839.P37621243944437676

`filter[A382875(n+1), A373838(#)]`
-/

namespace A373839.P37621243944437676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373838 (f1 j).toNat = 1) n)

end

end A373839.P37621243944437676

namespace A373839

/-- `filter[A382875(n+1), A373838(#)]` -/
def P37621243944437676.Spec : Prop :=
  ∀ n, P37621243944437676.a n = A373839 (n + 1)

end A373839

/-! ## A373839.P3230556243791337239

`filter[A281746(n+1), A373838(#)]`
-/

namespace A373839.P3230556243791337239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373838 (f1 j).toNat = 1) n)

end

end A373839.P3230556243791337239

namespace A373839

/-- `filter[A281746(n+1), A373838(#)]` -/
def P3230556243791337239.Spec : Prop :=
  ∀ n, P3230556243791337239.a n = A373839 (n + 1)

end A373839

/-! ## A373839.P11449899875728800396

`filter[A278996(n+1), A373838(#)]`
-/

namespace A373839.P11449899875728800396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373838 (f1 j).toNat = 1) n)

end

end A373839.P11449899875728800396

namespace A373839

/-- `filter[A278996(n+1), A373838(#)]` -/
def P11449899875728800396.Spec : Prop :=
  ∀ n, P11449899875728800396.a n = A373839 (n + 1)

end A373839

/-!
# A373840: a(n) = 1 if A276150(n) is a multiple of 3, otherwise 0, where A276150 is the digit sum in the primorial base.

The programs for A373840, the canonical program `A373840.P5142814624606687256` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373840 has offset 0).

The definition of A373840 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373840.P5142814624606687256

`A079978(A276150(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A373840

/-- `A079978(A276150(n))` -/
def P5142814624606687256.Spec : Prop :=
  ∀ n, P5142814624606687256.a n = A373840 n

theorem P5142814624606687256.correct : P5142814624606687256.Spec := by
  intro n
  simp only [A373840]

end A373840

/-!
# A373841: Numbers whose digital sum in the primorial base is a multiple of 3.

The programs for A373841, the canonical program `A373841.P18437281871460807394` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373841 has offset 1).

The definition of A373841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373841.P18437281871460807394

`eq[n, n*A373840(n)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A373841

/-- `eq[n, n*A373840(n)]` -/
def P18437281871460807394.Spec : Prop :=
  ∀ n, (P18437281871460807394.a n : ℤ) = A373841 (n + 1)

theorem P18437281871460807394.correct : P18437281871460807394.Spec := by
  intro n
  simp only [A373841, Nat.add_sub_cancel]

end A373841

/-! ## A373841.P4441202797549679018

`filter[A004442(n), A373840(#)]`
-/

namespace A373841.P4441202797549679018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373840 (f1 j).toNat = 1) n)

end

end A373841.P4441202797549679018

namespace A373841

/-- `filter[A004442(n), A373840(#)]` -/
def P4441202797549679018.Spec : Prop :=
  ∀ n, P4441202797549679018.a n = A373841 (n + 1)

end A373841

/-! ## A373841.P17466872837170254976

`filter[A143579(n), A373840(#)]`
-/

namespace A373841.P17466872837170254976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373840 (f1 j).toNat = 1) n)

end

end A373841.P17466872837170254976

namespace A373841

/-- `filter[A143579(n), A373840(#)]` -/
def P17466872837170254976.Spec : Prop :=
  ∀ n, P17466872837170254976.a n = A373841 (n + 1)

end A373841

/-! ## A373841.P3931718034697048597

`filter[A160017(n), A373840(#)]`
-/

namespace A373841.P3931718034697048597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373840 (f1 j).toNat = 1) n)

end

end A373841.P3931718034697048597

namespace A373841

/-- `filter[A160017(n), A373840(#)]` -/
def P3931718034697048597.Spec : Prop :=
  ∀ n, P3931718034697048597.a n = A373841 (n + 1)

end A373841

/-! ## A373841.P16149733835220850876

`eq[A329684(n), A373840(n)]`
-/

namespace A373841.P16149733835220850876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373840 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373841.P16149733835220850876

namespace A373841

/-- `eq[A329684(n), A373840(n)]` -/
def P16149733835220850876.Spec : Prop :=
  ∀ n, (P16149733835220850876.a n : ℤ) = A373841 (n + 1)

end A373841

/-! ## A373841.P10939604570135290325

`eq[A373565(n), A373840(n)]`
-/

namespace A373841.P10939604570135290325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373840 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373841.P10939604570135290325

namespace A373841

/-- `eq[A373565(n), A373840(n)]` -/
def P10939604570135290325.Spec : Prop :=
  ∀ n, (P10939604570135290325.a n : ℤ) = A373841 (n + 1)

end A373841

/-! ## A373841.P11025433544916833630

`filter[A115659(n+1), A373840(#)]`
-/

namespace A373841.P11025433544916833630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373840 (f1 j).toNat = 1) n)

end

end A373841.P11025433544916833630

namespace A373841

/-- `filter[A115659(n+1), A373840(#)]` -/
def P11025433544916833630.Spec : Prop :=
  ∀ n, P11025433544916833630.a n = A373841 (n + 1)

end A373841

/-! ## A373841.P11333208447558691523

`eq[A121273(n+1), A373840(n)]`
-/

namespace A373841.P11333208447558691523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373840 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373841.P11333208447558691523

namespace A373841

/-- `eq[A121273(n+1), A373840(n)]` -/
def P11333208447558691523.Spec : Prop :=
  ∀ n, (P11333208447558691523.a n : ℤ) = A373841 (n + 1)

end A373841

/-! ## A373841.P6814749654024147330

`eq[A171624(n+1), A373840(n)]`
-/

namespace A373841.P6814749654024147330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373840 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373841.P6814749654024147330

namespace A373841

/-- `eq[A171624(n+1), A373840(n)]` -/
def P6814749654024147330.Spec : Prop :=
  ∀ n, (P6814749654024147330.a n : ℤ) = A373841 (n + 1)

end A373841

/-! ## A373841.P3809774662391199438

`filter[A092942(n), A373840(#)]`
-/

namespace A373841.P3809774662391199438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373840 (f1 j).toNat = 1) n)

end

end A373841.P3809774662391199438

namespace A373841

/-- `filter[A092942(n), A373840(#)]` -/
def P3809774662391199438.Spec : Prop :=
  ∀ n, P3809774662391199438.a n = A373841 (n + 1)

end A373841

/-! ## A373841.P12159321214078910099

`filter[A179820(n), A373840(#)]`
-/

namespace A373841.P12159321214078910099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179820 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373840 (f1 j).toNat = 1) n)

end

end A373841.P12159321214078910099

namespace A373841

/-- `filter[A179820(n), A373840(#)]` -/
def P12159321214078910099.Spec : Prop :=
  ∀ n, P12159321214078910099.a n = A373841 (n + 1)

end A373841

/-! ## A373841.P16115157560040825128

`filter[A057979(n), A373840(#)]`
-/

namespace A373841.P16115157560040825128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373840 (f1 j).toNat = 1) n)

end

end A373841.P16115157560040825128

namespace A373841

/-- `filter[A057979(n), A373840(#)]` -/
def P16115157560040825128.Spec : Prop :=
  ∀ n, P16115157560040825128.a n = A373841 (n + 1)

end A373841

/-! ## A373841.P10949972865343134346

`filter[A106450(2*n), A373840(#)]`
-/

namespace A373841.P10949972865343134346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106450 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373840 (f1 j).toNat = 1) n)

end

end A373841.P10949972865343134346

namespace A373841

/-- `filter[A106450(2*n), A373840(#)]` -/
def P10949972865343134346.Spec : Prop :=
  ∀ n, P10949972865343134346.a n = A373841 (n + 1)

end A373841

/-! ## A373841.P10968126952198269438

`filter[A174571(n), A373840(#)]`
-/

namespace A373841.P10968126952198269438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373840 (f1 j).toNat = 1) n)

end

end A373841.P10968126952198269438

namespace A373841

/-- `filter[A174571(n), A373840(#)]` -/
def P10968126952198269438.Spec : Prop :=
  ∀ n, P10968126952198269438.a n = A373841 (n + 1)

end A373841

/-! ## A373841.P13986331364484456200

`filter[A006085(2*n), A373840(#)]`
-/

namespace A373841.P13986331364484456200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373840 (f1 j).toNat = 1) n)

end

end A373841.P13986331364484456200

namespace A373841

/-- `filter[A006085(2*n), A373840(#)]` -/
def P13986331364484456200.Spec : Prop :=
  ∀ n, P13986331364484456200.a n = A373841 (n + 1)

end A373841

/-! ## A373841.P17480054981584101791

`filter[A238401(n+1), A373840(#)]`
-/

namespace A373841.P17480054981584101791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373840 (f1 j).toNat = 1) n)

end

end A373841.P17480054981584101791

namespace A373841

/-- `filter[A238401(n+1), A373840(#)]` -/
def P17480054981584101791.Spec : Prop :=
  ∀ n, P17480054981584101791.a n = A373841 (n + 1)

end A373841

/-! ## A373841.P1554256340600739899

`filter[A065682(n+1), A373840(#)]`
-/

namespace A373841.P1554256340600739899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373840 (f1 j).toNat = 1) n)

end

end A373841.P1554256340600739899

namespace A373841

/-- `filter[A065682(n+1), A373840(#)]` -/
def P1554256340600739899.Spec : Prop :=
  ∀ n, P1554256340600739899.a n = A373841 (n + 1)

end A373841

/-!
# A373842: a(n) = A003415(A276085(n)), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

The programs for A373842, the canonical program `A373842.P10561834911187279729` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373842 has offset 1).

The definition of A373842 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373842.P10561834911187279729

`A003415(A276085(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A373842

/-- `A003415(A276085(n+1))` -/
def P10561834911187279729.Spec : Prop :=
  ∀ n, P10561834911187279729.a n = A373842 (n + 1)

theorem P10561834911187279729.correct : P10561834911187279729.Spec := by
  intro n
  simp only [A373842, Nat.add_sub_cancel]

end A373842

/-! ## A373842.P11605401316534653806

`A003415(A328769(n+1)/(n+1))`
-/

namespace A373842.P11605401316534653806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((A328769 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A373842.P11605401316534653806

namespace A373842

/-- `A003415(A328769(n+1)/(n+1))` -/
def P11605401316534653806.Spec : Prop :=
  ∀ n, P11605401316534653806.a n = A373842 (n + 1)

end A373842

/-! ## A373842.P18236089800363648471

`A003415(A373146(n+1)+A003415(n+1))`
-/

namespace A373842.P18236089800363648471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A373146 (n + 1) + A003415 (n + 1)).toNat

end

end A373842.P18236089800363648471

namespace A373842

/-- `A003415(A373146(n+1)+A003415(n+1))` -/
def P18236089800363648471.Spec : Prop :=
  ∀ n, P18236089800363648471.a n = A373842 (n + 1)

end A373842

/-! ## A373842.P16281450628063296762

`A276085(n+1)+A168036(A328769(n+1)/(n+1))`
-/

namespace A373842.P16281450628063296762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (n + 1) + A168036 (SequenceMachineLib.roundAway ((A328769 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A373842.P16281450628063296762

namespace A373842

/-- `A276085(n+1)+A168036(A328769(n+1)/(n+1))` -/
def P16281450628063296762.Spec : Prop :=
  ∀ n, P16281450628063296762.a n = A373842 (n + 1)

end A373842

/-!
# A373843: a(n) = gcd(n, A003415(A276085(n))), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

The programs for A373843, the canonical program `A373843.P4252622682383088569` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373843 has offset 1).

The definition of A373843 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373842, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373843.P4252622682383088569

`gcd(n+1, A373842(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A373843

/-- `gcd(n+1, A373842(n+1))` -/
def P4252622682383088569.Spec : Prop :=
  ∀ n, (P4252622682383088569.a n : ℤ) = A373843 (n + 1)

theorem P4252622682383088569.correct : P4252622682383088569.Spec := by
  intro n
  simp only [A373843, Nat.add_sub_cancel]

end A373843

/-! ## A373843.P16389222123719906826

`gcd(A000027(n+1), A004956(A121205(2*n+7)))`
-/

namespace A373843.P16389222123719906826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A004956 (A121205 (2 * n + 7)).toNat)

end

end A373843.P16389222123719906826

namespace A373843

/-- `gcd(A000027(n+1), A004956(A121205(2*n+7)))` -/
def P16389222123719906826.Spec : Prop :=
  ∀ n, (P16389222123719906826.a n : ℤ) = A373843 (n + 1)

end A373843

/-!
# A373844: Triangle read by rows: T(n,k) = A276086(1 + A002110(n) + A002110(k)), 1 <= k <= n, where A276086 is the primorial base exp-function.

The programs for A373844, the canonical program `A373844.P17122979438263369272` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373844 has offset 1).

The definition of A373844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373844.P12610855575797094746

`A276086(1+A002110(row(n)+1)+A002110(col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373844.P12610855575797094746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (1 + A002110 (SequenceMachineLib.triRow n + 1) + A002110 (SequenceMachineLib.triCol n + 1)).toNat

end

end A373844.P12610855575797094746

namespace A373844

/-- `A276086(1+A002110(row(n)+1)+A002110(col(n)+1))` -/
def P12610855575797094746.Spec : Prop :=
  ∀ n, P12610855575797094746.a n = A373844 (n + 1)

end A373844

/-! ## A373844.P17122979438263369272

`2*A087112(comp[∑[n]]+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A373844

/-- `2*A087112(comp[∑[n]]+1)` -/
def P17122979438263369272.Spec : Prop :=
  ∀ n, P17122979438263369272.a n = A373844 (n + 1)

theorem P17122979438263369272.correct : P17122979438263369272.Spec := by
  intro n
  simp only [A373844, Nat.add_sub_cancel]

end A373844

/-! ## A373844.P6566266950594312272

`2*A003961(A087112(n+1))`
-/

namespace A373844.P6566266950594312272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003961 (A087112 (n + 1)).toNat

end

end A373844.P6566266950594312272

namespace A373844

/-- `2*A003961(A087112(n+1))` -/
def P6566266950594312272.Spec : Prop :=
  ∀ n, P6566266950594312272.a n = A373844 (n + 1)

end A373844

/-! ## A373844.P8887740185455131552

`2*A005940(A084468(n+1))`
-/

namespace A373844.P8887740185455131552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005940 (A084468 (n + 1)).toNat

end

end A373844.P8887740185455131552

namespace A373844

/-- `2*A005940(A084468(n+1))` -/
def P8887740185455131552.Spec : Prop :=
  ∀ n, P8887740185455131552.a n = A373844 (n + 1)

end A373844

/-! ## A373844.P11859948393876850375

`A276086(A370134(n+1)+1)`
-/

namespace A373844.P11859948393876850375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A370134 (n + 1) + 1).toNat

end

end A373844.P11859948393876850375

namespace A373844

/-- `A276086(A370134(n+1)+1)` -/
def P11859948393876850375.Spec : Prop :=
  ∀ n, P11859948393876850375.a n = A373844 (n + 1)

end A373844

/-!
# A373845: Triangle read by rows: T(n,k) = arithmetic derivative of (1 + A002110(n) + A002110(k)), 1 <= k <= n, where A002110(n) is the n-th primorial number.

The programs for A373845, there is no canonical definition to state claims against.
-/

/-! ## A373845.P3890571793719280073

`A003415(A370134(n+1)+1)`
-/

namespace A373845.P3890571793719280073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A370134 (n + 1) + 1).toNat

end

end A373845.P3890571793719280073

/-!
# A373846: Numbers k for which A276085(k) is a prime, where A276085 is the primorial base log-function.

The programs for A373846, there is no canonical definition to state claims against.
-/

/-! ## A373846.P3582709392499156295

`eq[1, A373842(n+1)]+1`
-/

namespace A373846.P3582709392499156295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373842 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373846.P3582709392499156295

/-! ## A373846.P3121651839097333860

`eq[1, A373842(A257174(n))]`
-/

namespace A373846.P3121651839097333860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373842 (A257174 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373846.P3121651839097333860

/-! ## A373846.P6290637236810170245

`A020639(A236669(n+1))*A210994(n+1)`
-/

namespace A373846.P6290637236810170245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A236669 (n + 1)).toNat * A210994 (n + 1)

end

end A373846.P6290637236810170245

/-! ## A373846.P13114417013443155619

`A068073(A203985(n+1))*A331593(n+1)`
-/

namespace A373846.P13114417013443155619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068073 (A203985 (n + 1)).toNat * A331593 (n + 1)

end

end A373846.P13114417013443155619

/-!
# A373847: Numbers k for which A373842(k) <= k, where A373842 is the arithmetic derivative of the primorial base log-function.

The programs for A373847, there is no canonical definition to state claims against.
-/

/-! ## A373847.P10939260705619658374

`lt[A373842(n+1), A190670(A123108(n)+1)]+1`
-/

namespace A373847.P10939260705619658374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190670 (A123108 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A373847.P10939260705619658374

/-!
# A373849: Difference between the primorial base exp-function and the arithmetic derivative.

The programs for A373849, there is no canonical definition to state claims against.
-/

/-! ## A373849.P17528066615720663613

`A276086(n)-A003415(n)`
-/

namespace A373849.P17528066615720663613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n - A003415 n

end

end A373849.P17528066615720663613

/-! ## A373849.P16869669538334918574

`A351225(n)-A168036(n)`
-/

namespace A373849.P16869669538334918574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351225 n - A168036 n

end

end A373849.P16869669538334918574

/-! ## A373849.P17098017562184431934

`A351225(n)+n-A003415(n)`
-/

namespace A373849.P17098017562184431934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351225 n + ((n : ℤ) - A003415 n)

end

end A373849.P17098017562184431934

/-! ## A373849.P6253027331853779724

`A276086(n)+n-A129283(n)`
-/

namespace A373849.P6253027331853779724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n + ((n : ℤ) - A129283 n)

end

end A373849.P6253027331853779724

/-! ## A373849.P16584314640084691263

`A276086(n)-(A168036(n)+n)`
-/

namespace A373849.P16584314640084691263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n - (A168036 n + (n : ℤ))

end

end A373849.P16584314640084691263

/-! ## A373849.P2660011120391505151

`A327860(n)-(A342016(n)+A003415(n))`
-/

namespace A373849.P2660011120391505151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n - (A342016 n + A003415 n)

end

end A373849.P2660011120391505151

/-! ## A373849.P6129919128799644286

`A348949(n)-(A348950(n)+A003415(n))`
-/

namespace A373849.P6129919128799644286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348949 n - (A348950 n + A003415 n)

end

end A373849.P6129919128799644286

/-! ## A373849.P2753279388117903252

`A276086(n)-(A368921(n)+A068346(n))`
-/

namespace A373849.P2753279388117903252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n - (A368921 n + A068346 n)

end

end A373849.P2753279388117903252

/-! ## A373849.P741111075261482700

`A328571(n)*A328572(n)-A003415(n)`
-/

namespace A373849.P741111075261482700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 n * A328572 n - A003415 n

end

end A373849.P741111075261482700

/-! ## A373849.P6236503468798934933

`A324198(n)*A351251(n)-A003415(n)`
-/

namespace A373849.P6236503468798934933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 n * A351251 n - A003415 n

end

end A373849.P6236503468798934933

/-! ## A373849.P16514169703210215643

`A327858(n)*A351231(n)-A003415(n)`
-/

namespace A373849.P16514169703210215643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327858 n * A351231 n - A003415 n

end

end A373849.P16514169703210215643

/-! ## A373849.P2042035501177164017

`A276086(n)-A327858(n)*A351230(n)`
-/

namespace A373849.P2042035501177164017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n - A327858 n * A351230 n

end

end A373849.P2042035501177164017

/-! ## A373849.P3486236535788772676

`(A351231(n)-A351230(n))*A327858(n)`
-/

namespace A373849.P3486236535788772676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A351231 n - A351230 n) * A327858 n

end

end A373849.P3486236535788772676

/-! ## A373849.P16311115377328976185

`A276086(n)-A358669(n)/A276086(n)`
-/

namespace A373849.P16311115377328976185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) - (A358669 n : ℚ) / (A276086 n : ℚ)

end

end A373849.P16311115377328976185

/-! ## A373849.P15246351165141938031

`A276086(n)-A359423(n)/A351231(n)`
-/

namespace A373849.P15246351165141938031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) - (A359423 n : ℚ) / (A351231 n : ℚ)

end

end A373849.P15246351165141938031

/-! ## A373849.P9093161022835366010

`A346101(A289234(n))-A003415(n)`
-/

namespace A373849.P9093161022835366010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346101 (A289234 n).toNat - A003415 n

end

end A373849.P9093161022835366010

/-! ## A373849.P13835331912360449357

`A328624(A328626(n))-A003415(n)`
-/

namespace A373849.P13835331912360449357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328624 (A328626 n).toNat - A003415 n

end

end A373849.P13835331912360449357

/-! ## A373849.P10693317625578665855

`A328627(A328625(n))-A003415(n)`
-/

namespace A373849.P10693317625578665855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328627 (A328625 n).toNat - A003415 n

end

end A373849.P10693317625578665855

/-!
# A373850: a(n) = A276085(n) mod bigomega(n), where bigomega (A001222) and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

The programs for A373850, the canonical program `A373850.P7662047302507533988` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373850 has offset 2).

The definition of A373850 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373850.P7662047302507533988

`A276085(n+2)%A001222(n+2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A373850

/-- `A276085(n+2)%A001222(n+2)` -/
def P7662047302507533988.Spec : Prop :=
  ∀ n, P7662047302507533988.a n = A373850 (n + 2)

theorem P7662047302507533988.correct : P7662047302507533988.Spec := by
  intro n
  simp only [A373850, Nat.add_sub_cancel]

end A373850

/-! ## A373850.P9603175462116709847

`A346700(gcd(A016002(n+2), A346712(n)))`
-/

namespace A373850.P9603175462116709847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (Int.gcd (A016002 (n + 2)) (A346712 n))

end

end A373850.P9603175462116709847

namespace A373850

/-- `A346700(gcd(A016002(n+2), A346712(n)))` -/
def P9603175462116709847.Spec : Prop :=
  ∀ n, P9603175462116709847.a n = A373850 (n + 2)

end A373850

/-! ## A373850.P295010899371943483

`A345554(A222986(n+2))%A038548(3*n+2)`
-/

namespace A373850.P295010899371943483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345554 (A222986 (n + 2)).toNat) (A038548 (3 * n + 2))

end

end A373850.P295010899371943483

namespace A373850

/-- `A345554(A222986(n+2))%A038548(3*n+2)` -/
def P295010899371943483.Spec : Prop :=
  ∀ n, P295010899371943483.a n = A373850 (n + 2)

end A373850

/-! ## A373850.P6570104260844067428

`A287150(A395300(n+2))`
-/

namespace A373850.P6570104260844067428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287150 (A395300 (n + 2)).toNat

end

end A373850.P6570104260844067428

namespace A373850

/-- `A287150(A395300(n+2))` -/
def P6570104260844067428.Spec : Prop :=
  ∀ n, P6570104260844067428.a n = A373850 (n + 2)

end A373850

/-! ## A373850.P6118391259403659200

`A031666(n+1)%A073408(n+2)`
-/

namespace A373850.P6118391259403659200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031666 (n + 1)) (A073408 (n + 2))

end

end A373850.P6118391259403659200

namespace A373850

/-- `A031666(n+1)%A073408(n+2)` -/
def P6118391259403659200.Spec : Prop :=
  ∀ n, P6118391259403659200.a n = A373850 (n + 2)

end A373850

/-!
# A373851: a(n) = 1 if A276085(n) is a multiple of bigomega(n), otherwise 0, where bigomega (A001222) and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

The programs for A373851, the canonical program `A373851.P12335156182564860843` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373851 has offset 1).

The definition of A373851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373851.P15570832264420630329

`char[A373852(n+1)-1]`
-/

namespace A373851.P15570832264420630329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373852 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373851.P15570832264420630329

namespace A373851

/-- `char[A373852(n+1)-1]` -/
def P15570832264420630329.Spec : Prop :=
  ∀ n, (P15570832264420630329.a n : ℤ) = A373851 (n + 1)

end A373851

/-! ## A373851.P12335156182564860843

`C(A373835(n+1), A001222(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A373851

/-- `C(A373835(n+1), A001222(n+1))` -/
def P12335156182564860843.Spec : Prop :=
  ∀ n, (P12335156182564860843.a n : ℤ) = A373851 (n + 1)

theorem P12335156182564860843.correct : P12335156182564860843.Spec := by
  intro n
  simp only [A373851, Nat.add_sub_cancel]

end A373851

/-! ## A373851.P10125661072078995124

`C(A373835(n+1), A073093(n+1)-1)`
-/

namespace A373851.P10125661072078995124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A373835 (n + 1)).toNat (A073093 (n + 1) - 1).toNat

end

end A373851.P10125661072078995124

namespace A373851

/-- `C(A373835(n+1), A073093(n+1)-1)` -/
def P10125661072078995124.Spec : Prop :=
  ∀ n, (P10125661072078995124.a n : ℤ) = A373851 (n + 1)

theorem P10125661072078995124.correct : P10125661072078995124.Spec := by
  intro n
  simp only [A373851, Nat.add_sub_cancel, A373851.P10125661072078995124.a, A373851.P12335156182564860843.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A073093, A073093.P258081957281391684.a, A373835, A373835.P5094601012644144841.a, A276085, A276085.P15454204715786806768.a, A002110, A002110.P13704446489392701398.a, A028234, A028234.P14857795114050463851.f1, A028234.P14857795114050463851.a, A055396, A055396.P18305262754425103137.a, A067029, A067029.P17255758945913048832.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A020639, A020639.P7578813688609615429.a, A061395, A061395.P8431317036300486107.a, A243055, A243055.P2464886309294058059.a, A362983, A362983.P10144634432132035395.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A373851

/-! ## A373851.P5564804243933450374

`C(A373835(n+1), val(A124508(n+1), 2))`
-/

namespace A373851.P5564804243933450374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A373835 (n + 1)).toNat (SequenceMachineLib.valuation (A124508 (n + 1)).toNat 2)

end

end A373851.P5564804243933450374

namespace A373851

/-- `C(A373835(n+1), val(A124508(n+1), 2))` -/
def P5564804243933450374.Spec : Prop :=
  ∀ n, (P5564804243933450374.a n : ℤ) = A373851 (n + 1)

end A373851

/-! ## A373851.P8395239108242238085

`C(A373835(n+1), val(A165839(n+1), 2))`
-/

namespace A373851.P8395239108242238085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A373835 (n + 1)).toNat (SequenceMachineLib.valuation (A165839 (n + 1)).toNat 2)

end

end A373851.P8395239108242238085

namespace A373851

/-- `C(A373835(n+1), val(A165839(n+1), 2))` -/
def P8395239108242238085.Spec : Prop :=
  ∀ n, (P8395239108242238085.a n : ℤ) = A373851 (n + 1)

end A373851

/-! ## A373851.P988643122195212213

`A002275(C(A373835(n+1), ∑{e}[n+1, #]))`
-/

namespace A373851.P988643122195212213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (Nat.choose (A373835 (n + 1)).toNat (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A373851.P988643122195212213

namespace A373851

/-- `A002275(C(A373835(n+1), ∑{e}[n+1, #]))` -/
def P988643122195212213.Spec : Prop :=
  ∀ n, P988643122195212213.a n = A373851 (n + 1)

end A373851

/-! ## A373851.P13473878821000268128

`A000007(A001222(n+1)-A373835(n+1))`
-/

namespace A373851.P13473878821000268128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A001222 (n + 1) - A373835 (n + 1)).toNat

end

end A373851.P13473878821000268128

namespace A373851

/-- `A000007(A001222(n+1)-A373835(n+1))` -/
def P13473878821000268128.Spec : Prop :=
  ∀ n, P13473878821000268128.a n = A373851 (n + 1)

end A373851

/-! ## A373851.P15146678059652046085

`A266070(A035321(n+1)²)`
-/

namespace A373851.P15146678059652046085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266070 (A035321 (n + 1) ^ 2).toNat

end

end A373851.P15146678059652046085

namespace A373851

/-- `A266070(A035321(n+1)²)` -/
def P15146678059652046085.Spec : Prop :=
  ∀ n, P15146678059652046085.a n = A373851 (n + 1)

end A373851

/-! ## A373851.P16854750579318279300

`A135528(A178637(n+1)²)`
-/

namespace A373851.P16854750579318279300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (A178637 (n + 1) ^ 2).toNat

end

end A373851.P16854750579318279300

namespace A373851

/-- `A135528(A178637(n+1)²)` -/
def P16854750579318279300.Spec : Prop :=
  ∀ n, P16854750579318279300.a n = A373851 (n + 1)

end A373851

/-! ## A373851.P16870365896182858902

`A168019(A001221(n+1)^A009191(n+1))`
-/

namespace A373851.P16870365896182858902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168019 (SequenceMachineLib.roundAway ((A001221 (n + 1) : ℚ) ^ (A009191 (n + 1) : ℤ))).toNat

end

end A373851.P16870365896182858902

namespace A373851

/-- `A168019(A001221(n+1)^A009191(n+1))` -/
def P16870365896182858902.Spec : Prop :=
  ∀ n, P16870365896182858902.a n = A373851 (n + 1)

end A373851

/-!
# A373852: Numbers k such that A276085(k) is a multiple of bigomega(k), where bigomega (A001222) and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

The programs for A373852, the canonical program `A373852.P8502709998770565245` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373852 has offset 1).

The definition of A373852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373852.P8502709998770565245

`eq[1, A373851(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A373852

/-- `eq[1, A373851(n+1)]+1` -/
def P8502709998770565245.Spec : Prop :=
  ∀ n, (P8502709998770565245.a n : ℤ) = A373852 (n + 1)

theorem P8502709998770565245.correct : P8502709998770565245.Spec := by
  intro n
  simp only [A373852, Nat.add_sub_cancel]

end A373852

/-! ## A373852.P10840089871275795440

`record[A000027(n+1)*A373851(n+1)]`
-/

namespace A373852.P10840089871275795440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A373851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373852.P10840089871275795440

namespace A373852

/-- `record[A000027(n+1)*A373851(n+1)]` -/
def P10840089871275795440.Spec : Prop :=
  ∀ n, P10840089871275795440.a n = A373852 (n + 1)

end A373852

/-! ## A373852.P16878472931922347070

`eq[A001222(n+1), A373835(n+1)]+1`
-/

namespace A373852.P16878472931922347070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373835 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A373852.P16878472931922347070

namespace A373852

/-- `eq[A001222(n+1), A373835(n+1)]+1` -/
def P16878472931922347070.Spec : Prop :=
  ∀ n, (P16878472931922347070.a n : ℤ) = A373852 (n + 1)

end A373852

/-! ## A373852.P6004889204820024351

`filter[A132999(n+1), A373851(#)]`
-/

namespace A373852.P6004889204820024351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373851 (f1 j).toNat = 1) n)

end

end A373852.P6004889204820024351

namespace A373852

/-- `filter[A132999(n+1), A373851(#)]` -/
def P6004889204820024351.Spec : Prop :=
  ∀ n, P6004889204820024351.a n = A373852 (n + 1)

end A373852

/-! ## A373852.P9043216362965932930

`filter[A038459(n+1), A373851(#)]`
-/

namespace A373852.P9043216362965932930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373851 (f1 j).toNat = 1) n)

end

end A373852.P9043216362965932930

namespace A373852

/-- `filter[A038459(n+1), A373851(#)]` -/
def P9043216362965932930.Spec : Prop :=
  ∀ n, P9043216362965932930.a n = A373852 (n + 1)

end A373852

/-! ## A373852.P8799666260464048651

`record[(n+1)*A373851(A005563(n)+1)]`
-/

namespace A373852.P8799666260464048651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A373851 (A005563 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373852.P8799666260464048651

namespace A373852

/-- `record[(n+1)*A373851(A005563(n)+1)]` -/
def P8799666260464048651.Spec : Prop :=
  ∀ n, P8799666260464048651.a n = A373852 (n + 1)

end A373852

/-! ## A373852.P17556520762718995800

`filter[A085736(n+1), A373851(#)]`
-/

namespace A373852.P17556520762718995800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373851 (f1 j).toNat = 1) n)

end

end A373852.P17556520762718995800

namespace A373852

/-- `filter[A085736(n+1), A373851(#)]` -/
def P17556520762718995800.Spec : Prop :=
  ∀ n, P17556520762718995800.a n = A373852 (n + 1)

end A373852

/-!
# A373853: Row sums of A373557.

The programs for A373853, there is no canonical definition to state claims against.
-/

/-! ## A373853.P8827265060577312289

`A373346(n+1)+A007895(n+1)`
-/

namespace A373853.P8827265060577312289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373346 (n + 1) + A007895 (n + 1)

end

end A373853.P8827265060577312289

/-! ## A373853.P2389255379938454315

`A373346(A022342(n+2))`
-/

namespace A373853.P2389255379938454315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373346 (A022342 (n + 2)).toNat

end

end A373853.P2389255379938454315

/-! ## A373853.P673593681985957079

`A373346(A072061(2*n+3)-1)`
-/

namespace A373853.P673593681985957079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373346 (A072061 (2 * n + 3) - 1).toNat

end

end A373853.P673593681985957079

/-! ## A373853.P16054021892753713580

`A373346(n+1)+A000120(A003714(n+1))`
-/

namespace A373853.P16054021892753713580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373346 (n + 1) + A000120 (A003714 (n + 1)).toNat

end

end A373853.P16054021892753713580

/-! ## A373853.P8981370657190520237

`A373346(n+1)+A000120(A371176(n+1))`
-/

namespace A373853.P8981370657190520237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373346 (n + 1) + A000120 (A371176 (n + 1)).toNat

end

end A373853.P8981370657190520237

/-! ## A373853.P14082280315520470804

`A029931(2*A371176(n+1))`
-/

namespace A373853.P14082280315520470804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (2 * A371176 (n + 1)).toNat

end

end A373853.P14082280315520470804

/-!
# A373854: Row sums of A373556.

The programs for A373854, there is no canonical definition to state claims against.
-/

/-! ## A373854.P17423283203645820621

`A373346(A003622(n+1))`
-/

namespace A373854.P17423283203645820621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373346 (A003622 (n + 1)).toNat

end

end A373854.P17423283203645820621

/-! ## A373854.P3514395054413462925

`A373346(comp[A022342(n+1)])`
-/

namespace A373854.P3514395054413462925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373346 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A373854.P3514395054413462925

/-! ## A373854.P16919568816681473090

`A029931(A389923(n+1))`
-/

namespace A373854.P16919568816681473090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A389923 (n + 1)).toNat

end

end A373854.P16919568816681473090

/-!
# A373855: a(n) = Sum_{k=1..n} k! * k^(n-1) * |Stirling1(n,k)|.

The programs for A373855, there is no canonical definition to state claims against.
-/

/-! ## A373855.P14239705864760108484

`A377414(A010790(n)-A363546(n))`
-/

namespace A373855.P14239705864760108484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377414 (A010790 n - A363546 n).toNat

end

end A373855.P14239705864760108484

/-!
# A373857: a(n) = Sum_{k=1..n} k! * k^(n-1) * Stirling1(n,k).

The programs for A373857, there is no canonical definition to state claims against.
-/

/-! ## A373857.P6086204541722005670

`A381079(A182474(n+1))`
-/

namespace A373857.P6086204541722005670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381079 (A182474 (n + 1)).toNat

end

end A373857.P6086204541722005670

/-!
# A373864: Reduced Collatz function R applied to the numbers 6n+5: a(n) = R(6n+5), where R(k) = (3k+1)/2^r, with r as large as possible.

The programs for A373864, the canonical program `A373864.P16710253182946225644` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373864 has offset 0).

The definition of A373864 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373864.P16710253182946225644

`A000265(A017257(n))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A373864

/-- `A000265(A017257(n))` -/
def P16710253182946225644.Spec : Prop :=
  ∀ n, P16710253182946225644.a n = A373864 n

theorem P16710253182946225644.correct : P16710253182946225644.Spec := by
  intro n
  simp only [A373864]

end A373864

/-! ## A373864.P10133196196306546993

`A000265(A017233(n)+2)`
-/

namespace A373864.P10133196196306546993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A017233 n + 2).toNat

end

end A373864.P10133196196306546993

namespace A373864

/-- `A000265(A017233(n)+2)` -/
def P10133196196306546993.Spec : Prop :=
  ∀ n, P10133196196306546993.a n = A373864 n

theorem P10133196196306546993.correct : P10133196196306546993.Spec := by
  intro n
  simp only [A373864, Nat.add_sub_cancel, A373864.P10133196196306546993.a, A373864.P16710253182946225644.a, A000265, A000265.P16482698636471710744.a, A017233, A017233.P12949994042344701827.a, A017257, A017257.P3330609659631501478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373864

/-! ## A373864.P15841090930085902819

`A000265(A350522(n)/2)`
-/

namespace A373864.P15841090930085902819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A350522 n : ℚ) / 2)).toNat

end

end A373864.P15841090930085902819

namespace A373864

/-- `A000265(A350522(n)/2)` -/
def P15841090930085902819.Spec : Prop :=
  ∀ n, P15841090930085902819.a n = A373864 n

end A373864

/-! ## A373864.P13848462527427640636

`A000265(A017365(n)-n)`
-/

namespace A373864.P13848462527427640636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A017365 n - (n : ℤ)).toNat

end

end A373864.P13848462527427640636

namespace A373864

/-- `A000265(A017365(n)-n)` -/
def P13848462527427640636.Spec : Prop :=
  ∀ n, P13848462527427640636.a n = A373864 n

theorem P13848462527427640636.correct : P13848462527427640636.Spec := by
  intro n
  simp only [A373864, Nat.add_sub_cancel, A373864.P13848462527427640636.a, A373864.P16710253182946225644.a, A000265, A000265.P16482698636471710744.a, A017257, A017257.P3330609659631501478.a, A017365, A017365.P3452265278948084008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373864

/-! ## A373864.P809530353070870564

`A000265(A017137(n)+n+2)`
-/

namespace A373864.P809530353070870564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A017137 n + (n + 2 : ℤ)).toNat

end

end A373864.P809530353070870564

namespace A373864

/-- `A000265(A017137(n)+n+2)` -/
def P809530353070870564.Spec : Prop :=
  ∀ n, P809530353070870564.a n = A373864 n

theorem P809530353070870564.correct : P809530353070870564.Spec := by
  intro n
  simp only [A373864, Nat.add_sub_cancel, A373864.P809530353070870564.a, A373864.P16710253182946225644.a, A000265, A000265.P16482698636471710744.a, A017137, A017137.P18352355205687682311.a, A017257, A017257.P3330609659631501478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373864

/-! ## A373864.P11844661716797760005

`A000265(A017377(n)-(n+1))`
-/

namespace A373864.P11844661716797760005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A017377 n - (n + 1 : ℤ)).toNat

end

end A373864.P11844661716797760005

namespace A373864

/-- `A000265(A017377(n)-(n+1))` -/
def P11844661716797760005.Spec : Prop :=
  ∀ n, P11844661716797760005.a n = A373864 n

theorem P11844661716797760005.correct : P11844661716797760005.Spec := by
  intro n
  simp only [A373864, Nat.add_sub_cancel, A373864.P11844661716797760005.a, A373864.P16710253182946225644.a, A000265, A000265.P16482698636471710744.a, A017257, A017257.P3330609659631501478.a, A017377, A017377.P8985772118360569930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373864

/-! ## A373864.P2856901472711167346

`A000265(A008591(n+1)-1)`
-/

namespace A373864.P2856901472711167346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A008591 (n + 1) - 1).toNat

end

end A373864.P2856901472711167346

namespace A373864

/-- `A000265(A008591(n+1)-1)` -/
def P2856901472711167346.Spec : Prop :=
  ∀ n, P2856901472711167346.a n = A373864 n

theorem P2856901472711167346.correct : P2856901472711167346.Spec := by
  intro n
  simp only [A373864, Nat.add_sub_cancel, A373864.P2856901472711167346.a, A373864.P16710253182946225644.a, A000265, A000265.P16482698636471710744.a, A008591, A008591.P8937864482545511630.a, A017257, A017257.P3330609659631501478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373864

/-! ## A373864.P11692259436459700464

`A000265(A350522(n))`
-/

namespace A373864.P11692259436459700464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A350522 n).toNat

end

end A373864.P11692259436459700464

namespace A373864

/-- `A000265(A350522(n))` -/
def P11692259436459700464.Spec : Prop :=
  ∀ n, P11692259436459700464.a n = A373864 n

end A373864

/-! ## A373864.P9419680772009012636

`A000265(A239129(n+1)-1)`
-/

namespace A373864.P9419680772009012636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A239129 (n + 1) - 1).toNat

end

end A373864.P9419680772009012636

namespace A373864

/-- `A000265(A239129(n+1)-1)` -/
def P9419680772009012636.Spec : Prop :=
  ∀ n, P9419680772009012636.a n = A373864 n

end A373864

/-! ## A373864.P17991980248947324733

`A171435(A239129(n+1)-1)`
-/

namespace A373864.P17991980248947324733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A239129 (n + 1) - 1).toNat

end

end A373864.P17991980248947324733

namespace A373864

/-- `A171435(A239129(n+1)-1)` -/
def P17991980248947324733.Spec : Prop :=
  ∀ n, P17991980248947324733.a n = A373864 n

end A373864

/-! ## A373864.P7740379052733353778

`A171435(A017233(2*n+1)+1)`
-/

namespace A373864.P7740379052733353778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A017233 (2 * n + 1) + 1).toNat

end

end A373864.P7740379052733353778

namespace A373864

/-- `A171435(A017233(2*n+1)+1)` -/
def P7740379052733353778.Spec : Prop :=
  ∀ n, P7740379052733353778.a n = A373864 n

end A373864

/-! ## A373864.P10079413309441191296

`A000265(A017221(2*n+1)+2)`
-/

namespace A373864.P10079413309441191296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A017221 (2 * n + 1) + 2).toNat

end

end A373864.P10079413309441191296

namespace A373864

/-- `A000265(A017221(2*n+1)+2)` -/
def P10079413309441191296.Spec : Prop :=
  ∀ n, P10079413309441191296.a n = A373864 n

end A373864

/-! ## A373864.P13639381514044209871

`A171435(A017221(2*n+1)+2)`
-/

namespace A373864.P13639381514044209871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A017221 (2 * n + 1) + 2).toNat

end

end A373864.P13639381514044209871

namespace A373864

/-- `A171435(A017221(2*n+1)+2)` -/
def P13639381514044209871.Spec : Prop :=
  ∀ n, P13639381514044209871.a n = A373864 n

end A373864

/-! ## A373864.P8764848428582098295

`A000265(A004767(2*n+1)+n+1)`
-/

namespace A373864.P8764848428582098295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A004767 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A373864.P8764848428582098295

namespace A373864

/-- `A000265(A004767(2*n+1)+n+1)` -/
def P8764848428582098295.Spec : Prop :=
  ∀ n, P8764848428582098295.a n = A373864 n

theorem P8764848428582098295.correct : P8764848428582098295.Spec := by
  intro n
  simp only [A373864, Nat.add_sub_cancel, A373864.P8764848428582098295.a, A373864.P16710253182946225644.a, A000265, A000265.P16482698636471710744.a, A004767, A004767.P13352534504447192883.a, A017257, A017257.P3330609659631501478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373864

/-! ## A373864.P10740976390405260657

`A093411(A017233(n)+2)`
-/

namespace A373864.P10740976390405260657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A017233 n + 2).toNat

end

end A373864.P10740976390405260657

namespace A373864

/-- `A093411(A017233(n)+2)` -/
def P10740976390405260657.Spec : Prop :=
  ∀ n, P10740976390405260657.a n = A373864 n

end A373864

/-! ## A373864.P7917006490557433900

`A075677(3*(n+1))`
-/

namespace A373864.P7917006490557433900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075677 (3 * (n + 1))

end

end A373864.P7917006490557433900

namespace A373864

/-- `A075677(3*(n+1))` -/
def P7917006490557433900.Spec : Prop :=
  ∀ n, P7917006490557433900.a n = A373864 n

end A373864

/-! ## A373864.P2252595353389650871

`A000265(A016789(2*n+n+2))`
-/

namespace A373864.P2252595353389650871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A016789 (2 * n + (n + 2))).toNat

end

end A373864.P2252595353389650871

namespace A373864

/-- `A000265(A016789(2*n+n+2))` -/
def P2252595353389650871.Spec : Prop :=
  ∀ n, P2252595353389650871.a n = A373864 n

theorem P2252595353389650871.correct : P2252595353389650871.Spec := by
  intro n
  simp only [A373864, Nat.add_sub_cancel, A373864.P2252595353389650871.a, A373864.P16710253182946225644.a, A000265, A000265.P16482698636471710744.a, A016789, A016789.P8277564872725303677.a, A017257, A017257.P3330609659631501478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373864

/-! ## A373864.P749519829972061031

`A102421(3*(n+1)+n)`
-/

namespace A373864.P749519829972061031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102421 (3 * (n + 1) + n)

end

end A373864.P749519829972061031

namespace A373864

/-- `A102421(3*(n+1)+n)` -/
def P749519829972061031.Spec : Prop :=
  ∀ n, P749519829972061031.a n = A373864 n

end A373864

/-! ## A373864.P12095231011710060056

`A067745(6*(n+1))`
-/

namespace A373864.P12095231011710060056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067745 (6 * (n + 1))

end

end A373864.P12095231011710060056

namespace A373864

/-- `A067745(6*(n+1))` -/
def P12095231011710060056.Spec : Prop :=
  ∀ n, P12095231011710060056.a n = A373864 n

end A373864

/-! ## A373864.P12945114978716822139

`A139391(6*n+5)`
-/

namespace A373864.P12945114978716822139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139391 (6 * n + 5)

end

end A373864.P12945114978716822139

namespace A373864

/-- `A139391(6*n+5)` -/
def P12945114978716822139.Spec : Prop :=
  ∀ n, P12945114978716822139.a n = A373864 n

end A373864

/-!
# A373865: Sum over all compositions of 2n into n parts of the least common multiple of the parts.

The programs for A373865, there is no canonical definition to state claims against.
-/

/-! ## A373865.P10257862122999866420

`A130358(A127846(n))+1`
-/

namespace A373865.P10257862122999866420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130358 (A127846 n).toNat + 1

end

end A373865.P10257862122999866420

/-!
# A373868: Integers that are not perfect fifth powers.

The programs for A373868, the canonical program `A373868.P14192389812358382433` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373868 has offset 1).

The definition of A373868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373868.P14192389812358382433

`comp[n^5]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A373868

/-- `comp[n^5]` -/
def P14192389812358382433.Spec : Prop :=
  ∀ n, (P14192389812358382433.a n : ℤ) = A373868 (n + 1)

theorem P14192389812358382433.correct : P14192389812358382433.Spec := by
  intro n
  simp only [A373868, Nat.add_sub_cancel]

end A373868

/-! ## A373868.P7518532878610945060

`comp[A000584(n)-1]+1`
-/

namespace A373868.P7518532878610945060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A373868.P7518532878610945060

namespace A373868

/-- `comp[A000584(n)-1]+1` -/
def P7518532878610945060.Spec : Prop :=
  ∀ n, (P7518532878610945060.a n : ℤ) = A373868 (n + 1)

end A373868

/-! ## A373868.P10295010797518851111

`A000027(comp[A000584(n)])`
-/

namespace A373868.P10295010797518851111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A373868.P10295010797518851111

namespace A373868

/-- `A000027(comp[A000584(n)])` -/
def P10295010797518851111.Spec : Prop :=
  ∀ n, P10295010797518851111.a n = A373868 (n + 1)

end A373868

/-! ## A373868.P4887981981902509303

`lcm(comp[A000584(n)], A033999(n))`
-/

namespace A373868.P4887981981902509303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A033999 n)

end

end A373868.P4887981981902509303

namespace A373868

/-- `lcm(comp[A000584(n)], A033999(n))` -/
def P4887981981902509303.Spec : Prop :=
  ∀ n, (P4887981981902509303.a n : ℤ) = A373868 (n + 1)

end A373868

/-! ## A373868.P5501414007943395872

`comp[A000584(n)]%A001097(n+1)`
-/

namespace A373868.P5501414007943395872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A001097 (n + 1))

end

end A373868.P5501414007943395872

namespace A373868

/-- `comp[A000584(n)]%A001097(n+1)` -/
def P5501414007943395872.Spec : Prop :=
  ∀ n, P5501414007943395872.a n = A373868 (n + 1)

end A373868

/-! ## A373868.P327771126043783218

`record[Δ[A132336(n+1)]]`
-/

namespace A373868.P327771126043783218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132336 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373868.P327771126043783218

namespace A373868

/-- `record[Δ[A132336(n+1)]]` -/
def P327771126043783218.Spec : Prop :=
  ∀ n, P327771126043783218.a n = A373868 (n + 1)

end A373868

/-! ## A373868.P14359193052256806048

`∪[A099649(n+1), A116451(n)]`
-/

namespace A373868.P14359193052256806048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116451 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A373868.P14359193052256806048

namespace A373868

/-- `∪[A099649(n+1), A116451(n)]` -/
def P14359193052256806048.Spec : Prop :=
  ∀ n, (P14359193052256806048.a n : ℤ) = A373868 (n + 1)

end A373868

/-! ## A373868.P12638818040374717048

`A123068(n+2)+1`
-/

namespace A373868.P12638818040374717048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (n + 2) + 1

end

end A373868.P12638818040374717048

namespace A373868

/-- `A123068(n+2)+1` -/
def P12638818040374717048.Spec : Prop :=
  ∀ n, P12638818040374717048.a n = A373868 (n + 1)

end A373868

/-! ## A373868.P13196241973880333366

`A020725(A123068(n+2))`
-/

namespace A373868.P13196241973880333366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A123068 (n + 2)).toNat

end

end A373868.P13196241973880333366

namespace A373868

/-- `A020725(A123068(n+2))` -/
def P13196241973880333366.Spec : Prop :=
  ∀ n, P13196241973880333366.a n = A373868 (n + 1)

end A373868

/-!
# A373869: a(n) = Sum_{k=1..n} k! * k^(n-3) * Stirling1(n,k).

The programs for A373869, there is no canonical definition to state claims against.
-/

/-! ## A373869.P6716583723079291124

`A110769(A326361(n))-A347609(n)`
-/

namespace A373869.P6716583723079291124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110769 (A326361 n).toNat - A347609 n

end

end A373869.P6716583723079291124

/-! ## A373869.P7004510704543448230

`A325710(A308542(n+1))-A326114(n)`
-/

namespace A373869.P7004510704543448230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325710 (A308542 (n + 1)).toNat - A326114 n

end

end A373869.P7004510704543448230

/-!
# A373870: a(n) = Sum_{k=1..n} k! * k^(n-3) * |Stirling1(n,k)|.

The programs for A373870, there is no canonical definition to state claims against.
-/

/-! ## A373870.P6942268401515096513

`A186128(a(n-1))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A373870.P6942268401515096513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A186128 (a (n - 1)).toNat

end

end A373870.P6942268401515096513

/-!
# A373871: a(n) = Sum_{k=1..n} k! * k^(n-3) * Stirling2(n,k).

The programs for A373871, there is no canonical definition to state claims against.
-/

/-! ## A373871.P9529035105580056892

`A158759(a(n-1))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A373871.P9529035105580056892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A158759 (a (n - 1)).toNat

end

end A373871.P9529035105580056892

/-!
# A373872: a(n) = Sum_{k=1..n} (-1)^(n-k) * k! * k^(n-3) * Stirling2(n,k).

The programs for A373872, there is no canonical definition to state claims against.
-/

/-! ## A373872.P12691429832675449870

`A343344(xor(3, A002219(n+1)))`
-/

namespace A373872.P12691429832675449870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343344 (Int.xor 3 (A002219 (n + 1))).toNat

end

end A373872.P12691429832675449870

/-! ## A373872.P13277541169939155309

`A344616(A278492(n)*A326573(n))`
-/

namespace A373872.P13277541169939155309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A278492 n * A326573 n).toNat

end

end A373872.P13277541169939155309

/-!
# A373873: a(n) = Sum_{k=1..n} k! * k^(n-2) * Stirling2(n,k).

The programs for A373873, there is no canonical definition to state claims against.
-/

/-! ## A373873.P15337547334344321598

`A163077(A148255(n+1))`
-/

namespace A373873.P15337547334344321598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163077 (A148255 (n + 1)).toNat

end

end A373873.P15337547334344321598

/-!
# A373874: a(n) = Sum_{k=1..n} k! * k^(n-2) * Stirling1(n,k).

The programs for A373874, there is no canonical definition to state claims against.
-/

/-! ## A373874.P4989427793182039327

`A088931(A005317(n))`
-/

namespace A373874.P4989427793182039327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088931 (A005317 n).toNat

end

end A373874.P4989427793182039327

/-!
# A373875: a(n) = Sum_{k=1..n} k! * k^(n-2) * |Stirling1(n,k)|.

The programs for A373875, there is no canonical definition to state claims against.
-/

/-! ## A373875.P4082688268705405764

`A039104(∑[A201511(n)])`
-/

namespace A373875.P4082688268705405764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039104 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A373875.P4082688268705405764

/-!
# A373881: Number of lattice points inside the ball x^2 + y^2 + z^2 <= 10^n.

The programs for A373881, there is no canonical definition to state claims against.
-/

/-! ## A373881.P13254177165378605072

`A117609(10^n)`
-/

namespace A373881.P13254177165378605072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117609 (10 ^ n)

end

end A373881.P13254177165378605072

/-!
# A373882: Number of lattice points inside or on the 4-dimensional hypersphere x^2 + y^2 + z^2 + u^2 = 10^n.

The programs for A373882, there is no canonical definition to state claims against.
-/

/-! ## A373882.P15482199494715190252

`A046895(10^n)`
-/

namespace A373882.P15482199494715190252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046895 (10 ^ n)

end

end A373882.P15482199494715190252

/-!
# A373883: Number of lattice points inside or on the 5-dimensional hypersphere x_1^2 + x_2^2 + x_3^2 + x_4^2 + x_5^2 = 10^n.

The programs for A373883, there is no canonical definition to state claims against.
-/

/-! ## A373883.P13984312477897860238

`A175360(10^n)`
-/

namespace A373883.P13984312477897860238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175360 (10 ^ n)

end

end A373883.P13984312477897860238

/-!
# A373884: Number of lattice points inside or on the 6-dimensional hypersphere x_1^2 + x_2^2 + x_3^2 + x_4^2 + x_5^2 + x_6^2 = 10^n.

The programs for A373884, there is no canonical definition to state claims against.
-/

/-! ## A373884.P8890533257389651361

`A175361(10^n)`
-/

namespace A373884.P8890533257389651361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175361 (10 ^ n)

end

end A373884.P8890533257389651361

/-!
# A373885: Number of lattice points inside or on the 7-dimensional hypersphere x_1^2 + x_2^2 + x_3^2 + x_4^2 + x_5^2 + x_6^2 + x_7^2 = 10^n.

The programs for A373885, there is no canonical definition to state claims against.
-/

/-! ## A373885.P11994424917733800150

`A341396(10^n)`
-/

namespace A373885.P11994424917733800150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341396 (10 ^ n)

end

end A373885.P11994424917733800150

/-!
# A373886: a(n) is the least number whose binary expansion can be obtained by reversing one or more consecutive bits in the binary expansion of n.

The programs for A373886, there is no canonical definition to state claims against.
-/

/-! ## A373886.P13635403589651375614

`A369054(A078157(n+1))+A331856(n)`
-/

namespace A373886.P13635403589651375614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (A078157 (n + 1)).toNat + A331856 n

end

end A373886.P13635403589651375614

/-! ## A373886.P13605440667878727180

`A331856(n)+A185284(A064664(n+1))`
-/

namespace A373886.P13605440667878727180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 n + A185284 (A064664 (n + 1)).toNat

end

end A373886.P13605440667878727180

/-! ## A373886.P5474741297362163228

`A370813(A102627(n+2))+A331856(n)`
-/

namespace A373886.P5474741297362163228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370813 (A102627 (n + 2)).toNat + A331856 n

end

end A373886.P5474741297362163228

/-! ## A373886.P12230876007738120602

`A331856(n)+A185706(A214679(n+1))`
-/

namespace A373886.P12230876007738120602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 n + A185706 (A214679 (n + 1)).toNat

end

end A373886.P12230876007738120602

/-! ## A373886.P5102039406455255751

`A331856(n)+A185284(2*n+1)`
-/

namespace A373886.P5102039406455255751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 n + A185284 (2 * n + 1)

end

end A373886.P5102039406455255751

/-!
# A373887: a(n) is the length of the longest arithmetic progression of semiprimes ending in the n-th semiprime.

The programs for A373887, there is no canonical definition to state claims against.
-/

/-! ## A373887.P15467643660259559951

`A376109(A001358(n+1))`
-/

namespace A373887.P15467643660259559951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376109 (A001358 (n + 1)).toNat

end

end A373887.P15467643660259559951

/-! ## A373887.P10593291405996678098

`A376109(A176540(n+2))`
-/

namespace A373887.P10593291405996678098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376109 (A176540 (n + 2)).toNat

end

end A373887.P10593291405996678098

/-! ## A373887.P5128855901333875602

`A064547(7*A068791(n+1))`
-/

namespace A373887.P5128855901333875602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (7 * A068791 (n + 1)).toNat

end

end A373887.P5128855901333875602

/-! ## A373887.P6625295712316621911

`A109301(A072039(n+1)*A072056(2*n+1))`
-/

namespace A373887.P6625295712316621911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109301 (A072039 (n + 1) * A072056 (2 * n + 1)).toNat

end

end A373887.P6625295712316621911

/-! ## A373887.P16667178434045459373

`A001221(A000043(n+1)*A331088(n+1))`
-/

namespace A373887.P16667178434045459373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000043 (n + 1) * A331088 (n + 1)).toNat

end

end A373887.P16667178434045459373

/-!
# A373888: a(n) is the length of the longest arithmetic progression of primes ending with prime(n).

The programs for A373888, there is no canonical definition to state claims against.
-/

/-! ## A373888.P15136584772324756116

`A376109(A000040(n+1))`
-/

namespace A373888.P15136584772324756116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376109 (A000040 (n + 1)).toNat

end

end A373888.P15136584772324756116

/-! ## A373888.P10219779684967177683

`A376109(A006005(n+1))`
-/

namespace A373888.P10219779684967177683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376109 (A006005 (n + 1)).toNat

end

end A373888.P10219779684967177683

/-! ## A373888.P17073653291117842751

`A376109(A008578(n+2))`
-/

namespace A373888.P17073653291117842751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376109 (A008578 (n + 2)).toNat

end

end A373888.P17073653291117842751

/-! ## A373888.P10897370755356575374

`A376109(A075643(n+2))`
-/

namespace A373888.P10897370755356575374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376109 (A075643 (n + 2)).toNat

end

end A373888.P10897370755356575374

/-! ## A373888.P8966249423769232635

`A376109(A182986(n+2))`
-/

namespace A373888.P8966249423769232635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376109 (A182986 (n + 2)).toNat

end

end A373888.P8966249423769232635

/-! ## A373888.P9454268959748432622

`A376109(A065091(n+1)-A001223(n+1))`
-/

namespace A373888.P9454268959748432622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376109 (A065091 (n + 1) - A001223 (n + 1)).toNat

end

end A373888.P9454268959748432622

/-! ## A373888.P12477819381587164471

`A376109(A137922(n+2))`
-/

namespace A373888.P12477819381587164471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376109 (A137922 (n + 2)).toNat

end

end A373888.P12477819381587164471

/-!
# A373889: Square array read by ascending antidiagonals: T(k,n) is the cardinality of {(E is a proper finite subset of the natural numbers) such that E = {} or w_k(E) < min(E) <= max(E) <= n}, where w_k(E) = Sum_{i in E, i <> k} 1, with n, k >= 1.

The programs for A373889, there is no canonical definition to state claims against.
-/

/-! ## A373889.P8208992957438588899

`A322348(A079520(n))-A010060(A025621(n+3))`
-/

namespace A373889.P8208992957438588899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322348 (A079520 n).toNat - A010060 (A025621 (n + 3)).toNat

end

end A373889.P8208992957438588899

/-! ## A373889.P11775850874169630817

`A034684(A136205(n))+A000007(A133457(n+1))`
-/

namespace A373889.P11775850874169630817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (A136205 n).toNat + A000007 (A133457 (n + 1)).toNat

end

end A373889.P11775850874169630817

/-! ## A373889.P8552207486480207706

`A297930(A236396(n+1))`
-/

namespace A373889.P8552207486480207706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297930 (A236396 (n + 1)).toNat

end

end A373889.P8552207486480207706

/-! ## A373889.P10792291826748654871

`A353768(A374498(n+2))+A209435(n)`
-/

namespace A373889.P10792291826748654871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353768 (A374498 (n + 2)).toNat + A209435 n

end

end A373889.P10792291826748654871

/-! ## A373889.P10700256371860801713

`A061775(A368759(n)%A232274(n+1))`
-/

namespace A373889.P10700256371860801713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (Int.tmod (A368759 n) (A232274 (n + 1))).toNat

end

end A373889.P10700256371860801713

/-!
# A373890: Number of compositions of 8*n into parts 1 and 8.

The programs for A373890, the canonical program `A373890.P3933045878343609463` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373890 has offset 0).

The definition of A373890 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373890.P3933045878343609463

`A005710(8*n)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A373890

/-- `A005710(8*n)` -/
def P3933045878343609463.Spec : Prop :=
  ∀ n, P3933045878343609463.a n = A373890 n

theorem P3933045878343609463.correct : P3933045878343609463.Spec := by
  intro n
  simp only [A373890]

end A373890

/-! ## A373890.P11150431706541359229

`ogf((1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7)/(1-9x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`
-/

namespace A373890.P11150431706541359229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7, 21, -35, 35, -21, 7, -1] [1, -9, 28, -56, 70, -56, 28, -8, 1] n

end

end A373890.P11150431706541359229

namespace A373890

/-- `ogf((1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7)/(1-9x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P11150431706541359229.Spec : Prop :=
  ∀ n, P11150431706541359229.a n = A373890 n

end A373890

/-! ## A373890.P4162240261839671393

`∑{#}[n, C(n+7*#, n-#)]`
-/

namespace A373890.P4162240261839671393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (n + 7 * k) ((n : ℤ) - (k : ℤ)).toNat

end

end A373890.P4162240261839671393

namespace A373890

/-- `∑{#}[n, C(n+7*#, n-#)]` -/
def P4162240261839671393.Spec : Prop :=
  ∀ n, (P4162240261839671393.a n : ℤ) = A373890 n

end A373890

/-! ## A373890.P12192506166684979905

`A373644(4*n)`
-/

namespace A373890.P12192506166684979905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373644 (4 * n)

end

end A373890.P12192506166684979905

namespace A373890

/-- `A373644(4*n)` -/
def P12192506166684979905.Spec : Prop :=
  ∀ n, P12192506166684979905.a n = A373890 n

end A373890

/-! ## A373890.P11075318107841923611

`A017902(8*(n+1))`
-/

namespace A373890.P11075318107841923611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017902 (8 * (n + 1))

end

end A373890.P11075318107841923611

namespace A373890

/-- `A017902(8*(n+1))` -/
def P11075318107841923611.Spec : Prop :=
  ∀ n, P11075318107841923611.a n = A373890 n

end A373890

/-! ## A373890.P9833264880808741534

`record[A373644(Δ[A373662(n+1)])]`
-/

namespace A373890.P9833264880808741534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373662 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373644 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373890.P9833264880808741534

namespace A373890

/-- `record[A373644(Δ[A373662(n+1)])]` -/
def P9833264880808741534.Spec : Prop :=
  ∀ n, P9833264880808741534.a n = A373890 n

end A373890

/-! ## A373890.P9662376063949768913

`record[A017902(Δ[A211422(n)])]`
-/

namespace A373890.P9662376063949768913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211422 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017902 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373890.P9662376063949768913

namespace A373890

/-- `record[A017902(Δ[A211422(n)])]` -/
def P9662376063949768913.Spec : Prop :=
  ∀ n, P9662376063949768913.a n = A373890 n

end A373890

/-!
# A373891: Number of primes less than prime(n) having the same difference between consecutive primes as prime(n).

The programs for A373891, there is no canonical definition to state claims against.
-/

/-! ## A373891.P13785284073610911355

`A274121(n+1)-1`
-/

namespace A373891.P13785284073610911355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274121 (n + 1) - 1

end

end A373891.P13785284073610911355

/-! ## A373891.P1566111609718157143

`A023443(A274121(n+1))`
-/

namespace A373891.P1566111609718157143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A274121 (n + 1)).toNat

end

end A373891.P1566111609718157143

/-! ## A373891.P3553316104256280291

`abs(A274121(n+1)+A153881(n+2))`
-/

namespace A373891.P3553316104256280291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274121 (n + 1) + A153881 (n + 2)|

end

end A373891.P3553316104256280291

/-! ## A373891.P12017199865936099913

`A003056(C(A274121(n+1), 2))`
-/

namespace A373891.P12017199865936099913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A274121 (n + 1)).toNat 2)

end

end A373891.P12017199865936099913

/-! ## A373891.P9550091595378911642

`A359432(A068690(n+1))+A274121(n+1)`
-/

namespace A373891.P9550091595378911642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359432 (A068690 (n + 1)).toNat + A274121 (n + 1)

end

end A373891.P9550091595378911642

/-! ## A373891.P1941824724022716101

`A083800(n+1)%A274121(n+1)`
-/

namespace A373891.P1941824724022716101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A274121 (n + 1))

end

end A373891.P1941824724022716101

/-! ## A373891.P5163617297190455015

`A070198(n)%A274121(n+1)`
-/

namespace A373891.P5163617297190455015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A274121 (n + 1))

end

end A373891.P5163617297190455015

/-! ## A373891.P10770060785994740484

`A079782(n+1)%A274121(n+1)`
-/

namespace A373891.P10770060785994740484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A274121 (n + 1))

end

end A373891.P10770060785994740484

/-! ## A373891.P7760999842967913582

`A083685(n+1)%A274121(n+1)`
-/

namespace A373891.P7760999842967913582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A274121 (n + 1))

end

end A373891.P7760999842967913582

/-! ## A373891.P18059752459556148533

`A121934(n+1)%A274121(n+1)`
-/

namespace A373891.P18059752459556148533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A274121 (n + 1))

end

end A373891.P18059752459556148533

/-! ## A373891.P13035902787373239211

`A030494(n+1)%A274121(n+1)`
-/

namespace A373891.P13035902787373239211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A274121 (n + 1))

end

end A373891.P13035902787373239211

/-! ## A373891.P16162773226764469479

`A072828(n+1)%A274121(n+1)`
-/

namespace A373891.P16162773226764469479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A274121 (n + 1))

end

end A373891.P16162773226764469479

/-!
# A373894: Number of self-dual lattices on n unlabeled nodes.

The programs for A373894, there is no canonical definition to state claims against.
-/

/-! ## A373894.P13313081066441981840

`2*A373922(n)-A006966(n)`
-/

namespace A373894.P13313081066441981840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A373922 n - A006966 n

end

end A373894.P13313081066441981840

/-! ## A373894.P12339374407126856058

`A114886(A007827(n))`
-/

namespace A373894.P12339374407126856058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114886 (A007827 n).toNat

end

end A373894.P12339374407126856058

/-! ## A373894.P9910353604819289780

`A076596(A210540(n))`
-/

namespace A373894.P9910353604819289780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076596 (A210540 n).toNat

end

end A373894.P9910353604819289780

/-! ## A373894.P17478861191600546714

`A194061(A099960(n))`
-/

namespace A373894.P17478861191600546714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194061 (A099960 n).toNat

end

end A373894.P17478861191600546714

/-! ## A373894.P3676803909548720956

`A118765(A221547(n))`
-/

namespace A373894.P3676803909548720956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118765 (A221547 n).toNat

end

end A373894.P3676803909548720956

/-!
# A373895: a(n) = ceiling((2^n+n-1)/n).

The programs for A373895, the canonical program `A373895.P15782120535202742486` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373895 has offset 1).

The definition of A373895 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((2^(n+1)+n+1-1)/(n+1))` (program `A373895.P15782120535202742486`, by `A373895.P15782120535202742486.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A373895.P15782120535202742486

`ceil((2^(n+1)+n+1-1)/(n+1))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A373895

/-- `ceil((2^(n+1)+n+1-1)/(n+1))` -/
def P15782120535202742486.Spec : Prop :=
  ∀ n, P15782120535202742486.a n = A373895 (n + 1)

theorem P15782120535202742486.correct : P15782120535202742486.Spec := by
  intro n
  simp only [A373895, Nat.add_sub_cancel]

end A373895

/-! ## A373895.P6850903185290765109

`A057427(n)+A053638(n+1)`
-/

namespace A373895.P6850903185290765109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A053638 (n + 1)

end

end A373895.P6850903185290765109

namespace A373895

/-- `A057427(n)+A053638(n+1)` -/
def P6850903185290765109.Spec : Prop :=
  ∀ n, P6850903185290765109.a n = A373895 (n + 1)

end A373895

/-! ## A373895.P2411128652957080924

`A053638(n+1)-A057428(n)`
-/

namespace A373895.P2411128652957080924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053638 (n + 1) - A057428 n

end

end A373895.P2411128652957080924

namespace A373895

/-- `A053638(n+1)-A057428(n)` -/
def P2411128652957080924.Spec : Prop :=
  ∀ n, P2411128652957080924.a n = A373895 (n + 1)

end A373895

/-! ## A373895.P7884288159886189589

`A082482(n+1)+A036453(n+1)`
-/

namespace A373895.P7884288159886189589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082482 (n + 1) + A036453 (n + 1)

end

end A373895.P7884288159886189589

namespace A373895

/-- `A082482(n+1)+A036453(n+1)` -/
def P7884288159886189589.Spec : Prop :=
  ∀ n, P7884288159886189589.a n = A373895 (n + 1)

end A373895

/-! ## A373895.P1529255220398129810

`A201219(n+1)+A000799(n+1)`
-/

namespace A373895.P1529255220398129810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201219 (n + 1) + A000799 (n + 1)

end

end A373895.P1529255220398129810

namespace A373895

/-- `A201219(n+1)+A000799(n+1)` -/
def P1529255220398129810.Spec : Prop :=
  ∀ n, P1529255220398129810.a n = A373895 (n + 1)

end A373895

/-! ## A373895.P14587002761941509176

`floor(or(2*n, 2^(n+1))/(n+1))`
-/

namespace A373895.P14587002761941509176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor (2 * n) (2 ^ (n + 1)) : ℚ) / (n + 1 : ℚ)⌋

end

end A373895.P14587002761941509176

namespace A373895

/-- `floor(or(2*n, 2^(n+1))/(n+1))` -/
def P14587002761941509176.Spec : Prop :=
  ∀ n, P14587002761941509176.a n = A373895 (n + 1)

end A373895

/-! ## A373895.P8500764228162737209

`floor(xor(2*n, 2^(n+1))/(n+1))`
-/

namespace A373895.P8500764228162737209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor (2 * n) (2 ^ (n + 1)) : ℚ) / (n + 1 : ℚ)⌋

end

end A373895.P8500764228162737209

namespace A373895

/-- `floor(xor(2*n, 2^(n+1))/(n+1))` -/
def P8500764228162737209.Spec : Prop :=
  ∀ n, P8500764228162737209.a n = A373895 (n + 1)

end A373895

/-!
# A373898: Number of divisors d of n such that (n/d)^d == d (mod (n/d + d)).

The programs for A373898, there is no canonical definition to state claims against.
-/

/-! ## A373898.P6022311146205888524

`A086073(A352135(n+1)+A123208(n))`
-/

namespace A373898.P6022311146205888524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086073 (A352135 (n + 1) + A123208 n).toNat

end

end A373898.P6022311146205888524

/-! ## A373898.P9067170890871735819

`A373978(n+1)+A320656(A376598(3*(n+1)))`
-/

namespace A373898.P9067170890871735819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373978 (n + 1) + A320656 (A376598 (3 * (n + 1))).toNat

end

end A373898.P9067170890871735819

/-!
# A373899: Semiprimes q*p such that q^p == p (mod (q - p)), where q > p.

The programs for A373899, there is no canonical definition to state claims against.
-/

/-! ## A373899.P2706491990857926561

`∩[A063078(n+1), A246046(n+1)]`
-/

namespace A373899.P2706491990857926561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373899.P2706491990857926561

/-! ## A373899.P1892738652962982454

`∩[A328226(n+1), A362622(n+1)]`
-/

namespace A373899.P1892738652962982454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373899.P1892738652962982454

/-! ## A373899.P7120549959572380678

`∩[A325361(n+1), A328226(n+1)]`
-/

namespace A373899.P7120549959572380678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373899.P7120549959572380678

/-! ## A373899.P483916151875590449

`∩[A325369(n+1), A328226(n+1)]`
-/

namespace A373899.P483916151875590449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373899.P483916151875590449

/-! ## A373899.P17829295651714390288

`∩[A328226(n+1), A342526(n+1)]`
-/

namespace A373899.P17829295651714390288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373899.P17829295651714390288

