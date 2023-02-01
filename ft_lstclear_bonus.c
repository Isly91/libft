/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_lstclear_bonus.c                                :+:    :+:            */
/*                                                     +:+                    */
/*   By: ibehluli <ibehluli@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2022/10/19 15:42:39 by ibehluli      #+#    #+#                 */
/*   Updated: 2022/10/21 16:57:19 by ibehluli      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstclear(t_list **lst, void (*del)(void *))
{
	t_list	*lista;
	t_list	*next_lista;

	lista = *lst;
	if (!lst || !del)
		return ;
	while (lista)
	{
		next_lista = lista -> next;
		del(lista -> content);
		free(lista);
		lista = next_lista;
	}
	*lst = NULL;
}
